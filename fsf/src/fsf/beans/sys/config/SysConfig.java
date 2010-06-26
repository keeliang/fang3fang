package fsf.beans.sys.config;

/**
 * SysConfig generated
 */

public class SysConfig  implements java.io.Serializable {
	private static final long serialVersionUID = 4756364366210602883L;
	// Fields
	private int id;//auto_increment
	private String item;//
	private String value;//
	private String itemDesc;

    // Constructors

    public String getItemDesc() {
		return itemDesc;
	}

	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}

	/** default constructor */
    public SysConfig() {
    }

	/** minimal constructor */
    public SysConfig(int id) {
        this.id = id;
    }
    
    /** full constructor */
    public SysConfig( String item, String value) {
		this.item = item;
		this.value = value;
    }
   
    // Property accessors

	public int getId(){
		return this.id;
	}
	
	public void setId( int id){
		this.id = id;
	}
	public String getItem(){
		return this.item;
	}
	
	public void setItem( String item){
		this.item = item;
	}
	public String getValue(){
		return this.value;
	}
	
	public void setValue( String value){
		this.value = value;
	}
}