package fsf.service.sys.user;

import java.util.List;

import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.user.User;
import chance.base.service.Service;

public interface UserService extends Service<User>{
	public User login(String userCode,String password);
	public List<EstateOut> queryRecommondIndex(Integer userId);
	public List<EstateOut> queryRecommond(Integer userId,Integer tradeMode);
}
