package chance.base.dao.handler;

import java.sql.Date;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;

public class DateltQLHandler extends DefaultQLHandler {
	@Override
	public Object getValue(Object value) {
		if (value instanceof Date) {
			Date v = (Date)value;
			String s = DateFormatUtils.format(v, "yyyy-MM-dd HH:mm:ss");
			if(s.endsWith("00:00:00")){
				value =DateUtils.addMilliseconds( v, -1);
			}
		}
		return value;
	}
}
