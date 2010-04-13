package chance.base.dao.handler;

public class EndWithLikeQLHandler extends DefaultQLHandler{
	@Override
	public Object getValue(Object value) {
		return "%"+value;
	}
}
