package chance.base.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

public abstract class UploadBaseAction<E> extends BaseAction<E> {
	
	private static final int BUFFER_SIZE = 16 * 1024 ;
	
	private File[] uploadFile;
	private String[] uploadFileContentType;
	private String[] uploadFileFileName;
	private String[] deleteFilePath;
	private String uploadPath;
	
	public UploadBaseAction(Class<E> entityClass, String[] pkArray,String uploadPath) {
		super(entityClass, pkArray);
		this.uploadPath = uploadPath;
	}

	public UploadBaseAction(Class<E> entityClass, String[] pkArray,String uploadPath,
			boolean isBusinessPK) {
		super(entityClass, pkArray, isBusinessPK);
		this.uploadPath = uploadPath;
	}

	public String doUploadFile() throws Exception {

		JSONObject json = new JSONObject();
		if (uploadFile != null && uploadFile.length > 0) {
			try {
				if (deleteFilePath != null && deleteFilePath.length > 0) {
					for (int i = 0; i < deleteFilePath.length; i++) {
						File f = new File(ServletActionContext
								.getServletContext().getRealPath(
										deleteFilePath[i]));
						if (f.exists()) {
							f.delete();
						}
					}
				}
				Random r = new Random();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmssSSS");
				String[] arrayFile = new String[uploadFile.length];
				for (int i = 0; i < uploadFile.length; i++) {
					String filename = sdf.format(new Date())
							+ r.nextInt()
							+ uploadFileFileName[i]
									.substring(uploadFileFileName[i]
											.lastIndexOf("."));
					filename = "/upload/"+uploadPath+"/" + filename;
					upload(uploadFile[i], new File(ServletActionContext
							.getServletContext().getRealPath(filename)));
					arrayFile[i] = filename;
				}

				json.put("data", JSONArray.fromObject(arrayFile));
				json.put("msg", "uploadSuccess");
			} catch (Exception e) {
				e.printStackTrace();
				json.put("msg", "uploadFail");
			}
		} else {
			json.put("msg", "uploadNotExists");
		}
		getHttpServletResponse().setCharacterEncoding("UTF-8");
		getHttpServletResponse().getWriter().write(json.toString());
		return null;
	}

	private void upload(File srcFile, File destFile) throws IOException {
		InputStream is = null;
		OutputStream os = null;
		try {
			is = new BufferedInputStream(new FileInputStream(srcFile),BUFFER_SIZE);
			os = new BufferedOutputStream(new FileOutputStream(destFile),BUFFER_SIZE);
			byte[] buffer = new byte[BUFFER_SIZE];
			while (is.read(buffer) > 0) {
				os.write(buffer);
			}
		} finally {
			if (is != null)
				is.close();
			if (os != null)
				os.close();
		}
	}

	public File[] getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File[] uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String[] getUploadFileContentType() {
		return uploadFileContentType;
	}

	public void setUploadFileContentType(String[] uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;
	}

	public String[] getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(String[] uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public String[] getDeleteFilePath() {
		return deleteFilePath;
	}

	public void setDeleteFilePath(String[] deleteFilePath) {
		this.deleteFilePath = deleteFilePath;
	}
}
