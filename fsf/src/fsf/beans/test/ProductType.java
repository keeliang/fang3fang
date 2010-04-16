package fsf.beans.test;

public class ProductType {

	private String id;
	private String typeName;
	
	public ProductType(){
		
	}

	public ProductType(String id, String typeName) {
		super();
		this.id = id;
		this.typeName = typeName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
}
