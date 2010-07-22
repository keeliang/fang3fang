package fsf.dao.info.information;

import java.util.List;

import fsf.beans.info.information.Information;
import chance.base.dao.Dao;

public interface InformationDao extends Dao<Information>{
	public List<String> queryImagePath();
}