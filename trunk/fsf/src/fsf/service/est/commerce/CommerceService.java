package fsf.service.est.commerce;

import fsf.beans.est.commerce.Commerce;
import fsf.beans.sys.user.User;
import chance.base.service.Service;

public interface CommerceService extends Service<Commerce>{
	public void doReleaseSave(Commerce commerce,User contactUser);
}
