package fsf.service.common;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fsf.dao.est.estateout.EstateOutDao;
import fsf.dao.est.newestate.NewEstateDao;
import fsf.dao.sys.user.UserDao;

@Service("deleteImageFileService")
public class DeleteImageFileServiceImpl implements ScheduleService{
	
	@Resource
	private EstateOutDao estateOutDao;
	
	@Resource
	private NewEstateDao newEstateDao;
	
	@Resource
	private UserDao userDao;

	public void destroy() {
		
	}

	public void init() {
		refresh();		
	}

	public void refresh() {
		String path = this.getClass().getResource("").getPath();
		path = path.substring(0,path.indexOf("/WEB-INF/classes/"));
		path += "/upload";
		
		File dir = new File(path+"/estate");
		
		List<String> list = estateOutDao.queryImagePath();
		if(dir.isDirectory()){
			File[] fs = dir.listFiles();
			if(fs!=null&&fs.length>0){
				for(File f :fs){
					if(!list.contains("/upload/estate/"+f.getName())){
						f.delete();
					}
				}
			}
		}
		
		dir = new File(path+"/newEstate");
		list = newEstateDao.queryImagePath();
		if(dir.isDirectory()){
			File[] fs = dir.listFiles();
			if(fs!=null&&fs.length>0){
				for(File f :fs){
					if(!list.contains("/upload/newEstate/"+f.getName())){
						f.delete();
					}
				}
			}
		}
		
		dir = new File(path+"/user");
		list = userDao.queryImagePath();
		if(dir.isDirectory()){
			File[] fs = dir.listFiles();
			if(fs!=null&&fs.length>0){
				for(File f :fs){
					if(!list.contains("/upload/user/"+f.getName())){
						f.delete();
					}
				}
			}
		}
	}

}
