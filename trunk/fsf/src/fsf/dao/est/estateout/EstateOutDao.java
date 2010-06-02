package fsf.dao.est.estateout;

import java.util.List;

import fsf.beans.est.estateout.EstateOut;
import chance.base.dao.Dao;

public interface EstateOutDao extends Dao<EstateOut>{
	public void updateEffective();
	public List<String> queryImagePath();
}
