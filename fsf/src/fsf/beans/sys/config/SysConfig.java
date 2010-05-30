package fsf.beans.sys.config;

import java.util.Date;

/**
 * SysConfig generated
 */

public class SysConfig  implements java.io.Serializable {
    // Fields
	private int id;//auto_increment
	private String item;//
	private String value;//

    // Constructors

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