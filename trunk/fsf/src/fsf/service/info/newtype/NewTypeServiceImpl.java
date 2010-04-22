package fsf.service.info.newtype;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.beans.info.newtype.NewType;
import fsf.dao.info.newtype.NewTypeDao;
import chance.base.service.BaseService;
@Service
public class NewTypeServiceImpl extends BaseService<NewType> implements NewTypeService {
	@Resource
	public void setNewTypeDao(NewTypeDao newTypeDao){
		dao = newTypeDao;
	}
}
