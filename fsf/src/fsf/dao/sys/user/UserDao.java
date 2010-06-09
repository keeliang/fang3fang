package fsf.dao.sys.user;

import java.util.List;

import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.user.User;
import chance.base.dao.Dao;

public interface UserDao extends Dao<User>{
	public List<String> queryImagePath();
	public List<EstateOut> queryRecommondIndex(Integer userId);
	public List<EstateOut> queryRecommond(Integer userId,Integer tradeMode);
}
