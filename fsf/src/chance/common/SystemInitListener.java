package chance.common;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import chance.base.dao.Dao;
import chance.base.dao.QLRegular;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.ByteConverter;
import org.apache.commons.beanutils.converters.DoubleConverter;
import org.apache.commons.beanutils.converters.FloatConverter;
import org.apache.commons.beanutils.converters.IntegerConverter;
import org.apache.commons.beanutils.converters.LongConverter;
import org.apache.commons.beanutils.converters.ShortConverter;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

/**
 * 
 * @author yws
 * 
 */
public class SystemInitListener implements ServletContextListener {
	
	public static Map<String,QLRegular> QLRegularMap = new HashMap<String,QLRegular>();

	public void contextInitialized(ServletContextEvent event) {
		//System.out.println("listener initial");
		initConvertor();
		initQLRegular(event);
	}

	public void contextDestroyed(ServletContextEvent event) {

	}

	private void initConvertor() {
		// loading java.util.Date converter,imporve when java.util.Date is null BeanUtils converte errors
		ConvertUtils.register(new JavaUtilDateConverter(), java.util.Date.class);
		// not converte null to 0
		ConvertUtils.register(new ByteConverter(null), Byte.class);
		ConvertUtils.register(new ShortConverter(null), Short.class);
		ConvertUtils.register(new IntegerConverter(null), Integer.class);
		ConvertUtils.register(new LongConverter(null), Long.class);
		ConvertUtils.register(new FloatConverter(null), Float.class);
		ConvertUtils.register(new DoubleConverter(null), Double.class);
	}

	private void initQLRegular(ServletContextEvent event) {
		
		String qLRegular = "ql-regular.xml";
		String qlRegularName = "qlRegularName";
		String defaultHandler = "default-handler";
		String regularItem = "regular-item";
		String key = "key";
		String condition = "condition";
		String handler = "handler";
		
		String path = event.getServletContext().getInitParameter(qlRegularName);
		SAXReader reader = new SAXReader();
		try {
			Document defaultDoc = reader.read(Dao.class.getClassLoader().getResource(qLRegular));
			Element root = defaultDoc.getRootElement();
			String dHandler = root.elementText(defaultHandler);
			Document cusDoc = null;
			if (path != null) {
				cusDoc = reader.read(getClass().getClassLoader().getResource(path));
			}else if(getClass().getClassLoader().getResource(qLRegular)!=null){
				cusDoc = reader.read(getClass().getClassLoader().getResource(qLRegular));
			}
			if(cusDoc!=null){
				Element cusRoot = cusDoc.getRootElement();
				dHandler = cusRoot.elementText(defaultHandler)==null?dHandler:cusRoot.elementText(defaultHandler);	
			}
			for(Iterator<Element> it = root.elementIterator(regularItem);it.hasNext();){
				Element e = it.next();
				QLRegularMap.put(e.elementText(key), new QLRegular(e.elementText(key),e.elementText(condition),e.elementText(handler)==null?dHandler:e.elementText(handler)));
			}
			if(cusDoc!=null){
				Element cusRoot = cusDoc.getRootElement();
				for(Iterator<Element> it = cusRoot.elementIterator(regularItem);it.hasNext();){
					Element e = it.next();
					QLRegularMap.put(e.elementText(key), new QLRegular(e.elementText(key),e.elementText(condition),e.elementText(handler)==null?dHandler:e.elementText(handler)));
				}	
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}
}
