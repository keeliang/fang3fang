package chance.exception;
/**
 * 
 * @author yws
 *
 */
public class NoRollbackServiceException extends ServiceException{

	private static final long serialVersionUID = -2258703680718216122L;

	public NoRollbackServiceException() {
		super();
	}

	public NoRollbackServiceException(String message, Throwable cause) {
		super(message, cause);
	}

	public NoRollbackServiceException(String message) {
		super(message);
	}
	

	public NoRollbackServiceException(Throwable cause) {
		super(cause);
	}

}
