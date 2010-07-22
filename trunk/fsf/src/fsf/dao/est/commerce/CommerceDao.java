package fsf.dao.est.commerce;

import java.util.List;

import fsf.beans.est.commerce.Commerce;
import chance.base.dao.Dao;

public interface CommerceDao extends Dao<Commerce>{
	public List<String> queryImagePath();
}
