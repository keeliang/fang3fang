package fsf.service.est.estateout;

import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.user.User;
import chance.base.service.Service;

public interface EstateOutService extends Service<EstateOut>{
	public void doExpertRecommond(Short recommond,String[] arrayEtateId);
	public void doReleaseSave(EstateOut eo,User contactUser);
}
