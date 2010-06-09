package fsf.dao.sys.user;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import chance.base.dao.BaseDao;
import fsf.beans.est.estateout.EstateOut;
import fsf.beans.sys.user.User;

@Repository
public class UserDaoImpl extends BaseDao<User> implements UserDao{
	public UserDaoImpl() {
		super(User.class);
	}
	
	public List<String> queryImagePath(){
		String hql = "select o.imagePath from User o where o.imagePath is not null ";
		Query query = getSession().createQuery(hql);
		return query.list();
	}
	
	public List<EstateOut> queryRecommondIndex(Integer userId){
		String hql = "select o from Recommond a,EstateOut o where a.estateId = o.estateId and o.tradeMode in (1,2,3) and a.userId = ? order by a.createTime asc";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, userId);
		query.setMaxResults(3);
		query.setFirstResult(0);
		return query.list();
	}
	
	public List<EstateOut> queryRecommond(Integer userId,Integer tradeMode){
		StringBuffer sb = new StringBuffer("select o from Recommond a,EstateOut o where a.estateId = o.estateId and a.userId = ? ");
		if(tradeMode==1){
			sb.append(" and o.tradeMode in (1,3) ");
		}else if(tradeMode==2){
			sb.append(" and o.tradeMode in (2,3) ");
		}
		Query query = getSession().createQuery(sb.toString());
		query.setParameter(0, userId);
		query.setMaxResults(3);
		query.setFirstResult(0);
		return query.list();
	}
}
