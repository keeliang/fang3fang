package chance.base.dao.handler;

public class StartWithLikeQLHandler extends DefaultQLHandler{
	@Override
	public Object getValue(Object value) {
		return value+"%";
	}
}
