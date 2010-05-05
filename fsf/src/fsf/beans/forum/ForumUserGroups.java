package fsf.beans.forum;

/**
 * ForumUserGroups
 */

public class ForumUserGroups  implements java.io.Serializable {
	private static final long serialVersionUID = -2928886832975887769L;
	// Fields
	private int groupId;//
	private int userId;//

    // Constructors

    /** default constructor */
    public ForumUserGroups() {
    }

	/** minimal constructor */
    public ForumUserGroups(int groupId) {
        this.groupId = groupId;
    }
    
    /** full constructor */
    public ForumUserGroups(int groupId,int userId) {
		this.groupId = groupId;
		this.userId = userId;
    }
   
    // Property accessors

	public int getGroupId(){
		return this.groupId;
	}
	
	public void setGroupId( int groupId){
		this.groupId = groupId;
	}
	public int getUserId(){
		return this.userId;
	}
	
	public void setUserId( int userId){
		this.userId = userId;
	}
}