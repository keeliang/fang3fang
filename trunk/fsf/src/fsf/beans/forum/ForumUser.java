package fsf.beans.forum;

import java.util.Date;

/**
 * ForumUser generated 12580��������ￄ1�7- trustel
 */

public class ForumUser  implements java.io.Serializable {
	private static final long serialVersionUID = 5727378021749613935L;
	// Fields
	private int userId;//
	private String sysUserCode;//ϵͳ�û������
	private int userActive;//
	private String username;//
	private String userPassword;//
	private int userSessionTime;//
	private int userSessionPage;//
	private Date userLastvisit;//
	private Date userRegdate;//
	private int userLevel;//
	private int userPosts;//
	private String userTimezone;//
	private int userStyle;//
	private String userLang;//
	private String userDateformat;//
	private int userNewPrivmsg;//
	private int userUnreadPrivmsg;//
	private Date userLastPrivmsg;//
	private Date userEmailtime;//
	private int userViewemail;//
	private int userAttachsig;//
	private int userAllowhtml;//
	private int userAllowbbcode;//
	private int userAllowsmilies;//
	private int userAllowavatar;//
	private int userAllowPm;//
	private int userAllowViewonline;//
	private int userNotify;//
	private int userNotifyAlways;//
	private int userNotifyText;//
	private int userNotifyPm;//
	private int userPopupPm;//
	private int rankId;//
	private String userAvatar;//
	private int userAvatarType;//
	private String userEmail;//
	private String userIcq;//
	private String userWebsite;//
	private String userFrom;//
	private String userSig;//
	private String userSigBbcodeUid;//
	private String userAim;//
	private String userYim;//
	private String userMsnm;//
	private String userOcc;//
	private String userInterests;//
	private String userBiography;//
	private String userActkey;//
	private String gender;//
	private int themesId;//
	private int deleted;//
	private int userViewonline;//
	private String securityHash;//
	private double userKarma;//
	private String userAuthhash;//

    // Constructors

    /** default constructor */
    public ForumUser() {
    }

	/** minimal constructor */
    public ForumUser(int userId) {
        this.userId = userId;
    }
    
    /** full constructor */
    public ForumUser(int userId,String sysUserCode,int userActive, String username, String userPassword,int userSessionTime,int userSessionPage,Date userLastvisit,Date userRegdate,int userLevel,int userPosts, String userTimezone,int userStyle, String userLang, String userDateformat,int userNewPrivmsg,int userUnreadPrivmsg,Date userLastPrivmsg,Date userEmailtime,int userViewemail,int userAttachsig,int userAllowhtml,int userAllowbbcode,int userAllowsmilies,int userAllowavatar,int userAllowPm,int userAllowViewonline,int userNotify,int userNotifyAlways,int userNotifyText,int userNotifyPm,int userPopupPm,int rankId, String userAvatar,int userAvatarType, String userEmail, String userIcq, String userWebsite, String userFrom, String userSig, String userSigBbcodeUid, String userAim, String userYim, String userMsnm, String userOcc, String userInterests, String userBiography, String userActkey, String gender,int themesId,int deleted,int userViewonline, String securityHash,double userKarma, String userAuthhash) {
		this.userId = userId;
		this.sysUserCode = sysUserCode;
		this.userActive = userActive;
		this.username = username;
		this.userPassword = userPassword;
		this.userSessionTime = userSessionTime;
		this.userSessionPage = userSessionPage;
		this.userLastvisit = userLastvisit;
		this.userRegdate = userRegdate;
		this.userLevel = userLevel;
		this.userPosts = userPosts;
		this.userTimezone = userTimezone;
		this.userStyle = userStyle;
		this.userLang = userLang;
		this.userDateformat = userDateformat;
		this.userNewPrivmsg = userNewPrivmsg;
		this.userUnreadPrivmsg = userUnreadPrivmsg;
		this.userLastPrivmsg = userLastPrivmsg;
		this.userEmailtime = userEmailtime;
		this.userViewemail = userViewemail;
		this.userAttachsig = userAttachsig;
		this.userAllowhtml = userAllowhtml;
		this.userAllowbbcode = userAllowbbcode;
		this.userAllowsmilies = userAllowsmilies;
		this.userAllowavatar = userAllowavatar;
		this.userAllowPm = userAllowPm;
		this.userAllowViewonline = userAllowViewonline;
		this.userNotify = userNotify;
		this.userNotifyAlways = userNotifyAlways;
		this.userNotifyText = userNotifyText;
		this.userNotifyPm = userNotifyPm;
		this.userPopupPm = userPopupPm;
		this.rankId = rankId;
		this.userAvatar = userAvatar;
		this.userAvatarType = userAvatarType;
		this.userEmail = userEmail;
		this.userIcq = userIcq;
		this.userWebsite = userWebsite;
		this.userFrom = userFrom;
		this.userSig = userSig;
		this.userSigBbcodeUid = userSigBbcodeUid;
		this.userAim = userAim;
		this.userYim = userYim;
		this.userMsnm = userMsnm;
		this.userOcc = userOcc;
		this.userInterests = userInterests;
		this.userBiography = userBiography;
		this.userActkey = userActkey;
		this.gender = gender;
		this.themesId = themesId;
		this.deleted = deleted;
		this.userViewonline = userViewonline;
		this.securityHash = securityHash;
		this.userKarma = userKarma;
		this.userAuthhash = userAuthhash;
    }
   
    // Property accessors

	public int getUserId(){
		return this.userId;
	}
	
	public void setUserId( int userId){
		this.userId = userId;
	}
	public String getSysUserCode(){
		return this.sysUserCode;
	}
	
	public void setSysUserCode(String sysUserCode){
		this.sysUserCode = sysUserCode;
	}
	public int getUserActive(){
		return this.userActive;
	}
	
	public void setUserActive( int userActive){
		this.userActive = userActive;
	}
	public String getUsername(){
		return this.username;
	}
	
	public void setUsername( String username){
		this.username = username;
	}
	public String getUserPassword(){
		return this.userPassword;
	}
	
	public void setUserPassword( String userPassword){
		this.userPassword = userPassword;
	}
	public int getUserSessionTime(){
		return this.userSessionTime;
	}
	
	public void setUserSessionTime( int userSessionTime){
		this.userSessionTime = userSessionTime;
	}
	public int getUserSessionPage(){
		return this.userSessionPage;
	}
	
	public void setUserSessionPage( int userSessionPage){
		this.userSessionPage = userSessionPage;
	}
	public Date getUserLastvisit(){
		return this.userLastvisit;
	}
	
	public void setUserLastvisit( Date userLastvisit){
		this.userLastvisit = userLastvisit;
	}
	public Date getUserRegdate(){
		return this.userRegdate;
	}
	
	public void setUserRegdate( Date userRegdate){
		this.userRegdate = userRegdate;
	}
	public int getUserLevel(){
		return this.userLevel;
	}
	
	public void setUserLevel( int userLevel){
		this.userLevel = userLevel;
	}
	public int getUserPosts(){
		return this.userPosts;
	}
	
	public void setUserPosts( int userPosts){
		this.userPosts = userPosts;
	}
	public String getUserTimezone(){
		return this.userTimezone;
	}
	
	public void setUserTimezone( String userTimezone){
		this.userTimezone = userTimezone;
	}
	public int getUserStyle(){
		return this.userStyle;
	}
	
	public void setUserStyle( int userStyle){
		this.userStyle = userStyle;
	}
	public String getUserLang(){
		return this.userLang;
	}
	
	public void setUserLang( String userLang){
		this.userLang = userLang;
	}
	public String getUserDateformat(){
		return this.userDateformat;
	}
	
	public void setUserDateformat( String userDateformat){
		this.userDateformat = userDateformat;
	}
	public int getUserNewPrivmsg(){
		return this.userNewPrivmsg;
	}
	
	public void setUserNewPrivmsg( int userNewPrivmsg){
		this.userNewPrivmsg = userNewPrivmsg;
	}
	public int getUserUnreadPrivmsg(){
		return this.userUnreadPrivmsg;
	}
	
	public void setUserUnreadPrivmsg( int userUnreadPrivmsg){
		this.userUnreadPrivmsg = userUnreadPrivmsg;
	}
	public Date getUserLastPrivmsg(){
		return this.userLastPrivmsg;
	}
	
	public void setUserLastPrivmsg( Date userLastPrivmsg){
		this.userLastPrivmsg = userLastPrivmsg;
	}
	public Date getUserEmailtime(){
		return this.userEmailtime;
	}
	
	public void setUserEmailtime( Date userEmailtime){
		this.userEmailtime = userEmailtime;
	}
	public int getUserViewemail(){
		return this.userViewemail;
	}
	
	public void setUserViewemail( int userViewemail){
		this.userViewemail = userViewemail;
	}
	public int getUserAttachsig(){
		return this.userAttachsig;
	}
	
	public void setUserAttachsig( int userAttachsig){
		this.userAttachsig = userAttachsig;
	}
	public int getUserAllowhtml(){
		return this.userAllowhtml;
	}
	
	public void setUserAllowhtml( int userAllowhtml){
		this.userAllowhtml = userAllowhtml;
	}
	public int getUserAllowbbcode(){
		return this.userAllowbbcode;
	}
	
	public void setUserAllowbbcode( int userAllowbbcode){
		this.userAllowbbcode = userAllowbbcode;
	}
	public int getUserAllowsmilies(){
		return this.userAllowsmilies;
	}
	
	public void setUserAllowsmilies( int userAllowsmilies){
		this.userAllowsmilies = userAllowsmilies;
	}
	public int getUserAllowavatar(){
		return this.userAllowavatar;
	}
	
	public void setUserAllowavatar( int userAllowavatar){
		this.userAllowavatar = userAllowavatar;
	}
	public int getUserAllowPm(){
		return this.userAllowPm;
	}
	
	public void setUserAllowPm( int userAllowPm){
		this.userAllowPm = userAllowPm;
	}
	public int getUserAllowViewonline(){
		return this.userAllowViewonline;
	}
	
	public void setUserAllowViewonline( int userAllowViewonline){
		this.userAllowViewonline = userAllowViewonline;
	}
	public int getUserNotify(){
		return this.userNotify;
	}
	
	public void setUserNotify( int userNotify){
		this.userNotify = userNotify;
	}
	public int getUserNotifyAlways(){
		return this.userNotifyAlways;
	}
	
	public void setUserNotifyAlways( int userNotifyAlways){
		this.userNotifyAlways = userNotifyAlways;
	}
	public int getUserNotifyText(){
		return this.userNotifyText;
	}
	
	public void setUserNotifyText( int userNotifyText){
		this.userNotifyText = userNotifyText;
	}
	public int getUserNotifyPm(){
		return this.userNotifyPm;
	}
	
	public void setUserNotifyPm( int userNotifyPm){
		this.userNotifyPm = userNotifyPm;
	}
	public int getUserPopupPm(){
		return this.userPopupPm;
	}
	
	public void setUserPopupPm( int userPopupPm){
		this.userPopupPm = userPopupPm;
	}
	public int getRankId(){
		return this.rankId;
	}
	
	public void setRankId( int rankId){
		this.rankId = rankId;
	}
	public String getUserAvatar(){
		return this.userAvatar;
	}
	
	public void setUserAvatar( String userAvatar){
		this.userAvatar = userAvatar;
	}
	public int getUserAvatarType(){
		return this.userAvatarType;
	}
	
	public void setUserAvatarType( int userAvatarType){
		this.userAvatarType = userAvatarType;
	}
	public String getUserEmail(){
		return this.userEmail;
	}
	
	public void setUserEmail( String userEmail){
		this.userEmail = userEmail;
	}
	public String getUserIcq(){
		return this.userIcq;
	}
	
	public void setUserIcq( String userIcq){
		this.userIcq = userIcq;
	}
	public String getUserWebsite(){
		return this.userWebsite;
	}
	
	public void setUserWebsite( String userWebsite){
		this.userWebsite = userWebsite;
	}
	public String getUserFrom(){
		return this.userFrom;
	}
	
	public void setUserFrom( String userFrom){
		this.userFrom = userFrom;
	}
	public String getUserSig(){
		return this.userSig;
	}
	
	public void setUserSig( String userSig){
		this.userSig = userSig;
	}
	public String getUserSigBbcodeUid(){
		return this.userSigBbcodeUid;
	}
	
	public void setUserSigBbcodeUid( String userSigBbcodeUid){
		this.userSigBbcodeUid = userSigBbcodeUid;
	}
	public String getUserAim(){
		return this.userAim;
	}
	
	public void setUserAim( String userAim){
		this.userAim = userAim;
	}
	public String getUserYim(){
		return this.userYim;
	}
	
	public void setUserYim( String userYim){
		this.userYim = userYim;
	}
	public String getUserMsnm(){
		return this.userMsnm;
	}
	
	public void setUserMsnm( String userMsnm){
		this.userMsnm = userMsnm;
	}
	public String getUserOcc(){
		return this.userOcc;
	}
	
	public void setUserOcc( String userOcc){
		this.userOcc = userOcc;
	}
	public String getUserInterests(){
		return this.userInterests;
	}
	
	public void setUserInterests( String userInterests){
		this.userInterests = userInterests;
	}
	public String getUserBiography(){
		return this.userBiography;
	}
	
	public void setUserBiography( String userBiography){
		this.userBiography = userBiography;
	}
	public String getUserActkey(){
		return this.userActkey;
	}
	
	public void setUserActkey( String userActkey){
		this.userActkey = userActkey;
	}
	public String getGender(){
		return this.gender;
	}
	
	public void setGender( String gender){
		this.gender = gender;
	}
	public int getThemesId(){
		return this.themesId;
	}
	
	public void setThemesId( int themesId){
		this.themesId = themesId;
	}
	public int getDeleted(){
		return this.deleted;
	}
	
	public void setDeleted( int deleted){
		this.deleted = deleted;
	}
	public int getUserViewonline(){
		return this.userViewonline;
	}
	
	public void setUserViewonline( int userViewonline){
		this.userViewonline = userViewonline;
	}
	public String getSecurityHash(){
		return this.securityHash;
	}
	
	public void setSecurityHash( String securityHash){
		this.securityHash = securityHash;
	}
	public double getUserKarma(){
		return this.userKarma;
	}
	
	public void setUserKarma( double userKarma){
		this.userKarma = userKarma;
	}
	public String getUserAuthhash(){
		return this.userAuthhash;
	}
	
	public void setUserAuthhash( String userAuthhash){
		this.userAuthhash = userAuthhash;
	}
}