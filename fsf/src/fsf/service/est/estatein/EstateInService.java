package fsf.service.est.estatein;

import fsf.beans.est.estatein.EstateIn;
import fsf.beans.sys.user.User;
import chance.base.service.Service;

public interface EstateInService extends Service<EstateIn>{
	public void doReleaseSave(EstateIn ei,User contactUser);
}
