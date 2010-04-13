package chance.base.dao.handler;

public class LikeQLhHandler extends DefaultQLHandler {
	@Override
	public Object getValue(Object value) {
		return "%"+value+"%";
	}
}
