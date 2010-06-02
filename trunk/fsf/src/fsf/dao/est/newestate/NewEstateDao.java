package fsf.dao.est.newestate;

import java.util.List;

import fsf.beans.est.newestate.NewEstate;
import chance.base.dao.Dao;

public interface NewEstateDao extends Dao<NewEstate>{
	public void updateEffective();
	public List<String> queryImagePath();
}
