package chance.base.dao.handler;

import java.util.HashMap;
import java.util.Map;

public class QLHandlerFactory {
	private static Map<String, QLHandler> map = new HashMap<String, QLHandler>();

	public static QLHandler getQLHandler(String name) {
		if (!map.containsKey(name)) {
			try {
				QLHandler o = (QLHandler) Class.forName(name).newInstance();
				map.put(name, o);
				return o;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return map.get(name);
	}
}
