package fsf.dao.info.information;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import fsf.beans.info.information.Information;
import chance.base.dao.BaseDao;

@Repository
public class InformationDaoImpl extends BaseDao<Information> implements InformationDao{
	public InformationDaoImpl() {
		super(Information.class);
	}
	
	public List<String> queryImagePath(){
		String hql = "select o.imagePath from Information o where o.imagePath is not null ";
		Query query = getSession().createQuery(hql);
		return query.list();
	}
}
