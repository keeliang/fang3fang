package fsf.action.sys.advertisement;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import chance.base.action.UploadBaseAction;
import fsf.beans.sys.advertisement.Advertisement;
import fsf.service.sys.advertisement.AdvertisementService;
import fsf.web.common.ConstantCache;

@Controller
@Scope("prototype")
public class AdvertisementAction extends UploadBaseAction<Advertisement> {
	
	public AdvertisementAction() {
		super(Advertisement.class, new String[] { "advertisementName" },"advertisement");
	}
	
	private List<Advertisement> listAdvertisement;
	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public String doAdvertisementList() throws Exception {
		try {
			AdvertisementParameter param = new AdvertisementParameter();
			param.set_ne_type((byte)0);
			listAdvertisement = service.doQuery(param);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	public String doInfoImageList()throws Exception{
		try {
			AdvertisementParameter param = new AdvertisementParameter();
			param.set_nne_type((byte)0);
			listAdvertisement = service.doQuery(param);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return SUCCESS;
	}
	
	@Override
	protected void afterUpdate() {
		Advertisement adv = new Advertisement();
		try {
			BeanUtils.copyProperties(adv, this);
			ConstantCache.MAPADVERTISEMENT.put(adv.getAdvertisementName(), adv);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	@Resource
	public void setAdvertisementService(AdvertisementService advertisementService){
		this.service = advertisementService;
	}

	public void setAdvertisementParameter(AdvertisementParameter param){
		this.baseParameter = param;
	}
	public AdvertisementParameter getAdvertisementParameter(){
		return (AdvertisementParameter)baseParameter;
	}
	
	private String advertisementName;
	private String advertisementDesc;
	private String imagePath;
	private String title;
	private String link;
	private Byte type;

	public void setAdvertisementName(String advertisementName){
		this.advertisementName = advertisementName;
	}
	public String getAdvertisementName(){
		return this.advertisementName;
	}
	public void setAdvertisementDesc(String advertisementDesc){
		this.advertisementDesc = advertisementDesc;
	}
	public String getAdvertisementDesc(){
		return this.advertisementDesc;
	}
	public void setImagePath(String imagePath){
		this.imagePath = imagePath;
	}
	public String getImagePath(){
		return this.imagePath;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getTitle(){
		return this.title;
	}

	public List<Advertisement> getListAdvertisement() {
		return listAdvertisement;
	}

	public void setListAdvertisement(List<Advertisement> listAdvertisement) {
		this.listAdvertisement = listAdvertisement;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
	}
}