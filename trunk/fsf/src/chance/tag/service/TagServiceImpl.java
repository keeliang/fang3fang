package chance.tag.service;

import java.util.Iterator;

import javax.annotation.Resource;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.stereotype.Component;

import chance.tag.dao.TagDao;
@Component
public class TagServiceImpl implements TagService {
	
	private TagDao tagDao;

	@SuppressWarnings("unchecked")
	public String getTypeName(String typeItemId, String keyValue){
		String xmlName = "type-item.xml";
		String itemName = "type-item";
		String entity = "";
		String key = "";
		String colName = "";
		String name = "";
		try{
			SAXReader reader = new SAXReader();
			Document defaultDoc = reader.read(this.getClass().getClassLoader().getResource(xmlName));
			Element root = defaultDoc.getRootElement();
			for(Iterator<Element> it = root.elementIterator(itemName);it.hasNext();){
				Element e = it.next();
				if(typeItemId.equals(e.attributeValue("id"))){
					entity = e.elementText("entity");
					key = e.elementText("key");
					colName = e.elementText("name");
				}
			}
			if(!"".equals(entity)){
				name = tagDao.getTypeName(entity, key, keyValue, colName);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return name;
	}

	public TagDao getTagDao() {
		return tagDao;
	}
	@Resource
	public void setTagDao(TagDao tagDao) {
		this.tagDao = tagDao;
	}
}