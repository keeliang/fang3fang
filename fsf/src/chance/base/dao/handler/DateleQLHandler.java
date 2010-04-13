package chance.base.dao.handler;

import java.sql.Date;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;

public class DateleQLHandler extends DefaultQLHandler {
	@Override
	public Object getValue(Object value) {
		if (value instanceof Date) {
			Date v = (Date)value;
			String s = DateFormatUtils.format(v, "yyyy-MM-dd HH:mm:ss");
			if(s.endsWith("00:00:00")){
				value =DateUtils.addMilliseconds(
					DateUtils.addSeconds(
							DateUtils.addMinutes(
									DateUtils.addHours(v, 23), 59),59),999);
			}
		}
		return value;
	}
}
