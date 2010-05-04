package fsf.beans.forum;

import java.util.Date;

/**
 * ForumUser
 */

public class ForumUser  implements java.io.Serializable {
    // Fields
	private String userId;//
	private String sysUserCode;//ϵͳ�û������
	private String userActive;//
	private String username;//
	private String userPassword;//
	private String userSessionTime;//
	private String userSessionPage;//
	private String userLastvisit;//
	private String userRegdate;//
	private String userLevel;//
	private String userPosts;//
	private String userTimezone;//
	private String userStyle;//
	private String userLang;//
	private String userDateformat;//
	private String userNewPrivmsg;//
	private String userUnreadPrivmsg;//
	private String userLastPrivmsg;//
	private String userEmailtime;//
	private String userViewemail;//
	private String userAttachsig;//
	private String userAllowhtml;//
	private String userAllowbbcode;//
	private String userAllowsmilies;//
	private String userAllowavatar;//
	private String userAllowPm;//
	private String userAllowViewonline;//
	private String userNotify;//
	private String userNotifyAlways;//
	private String userNotifyText;//
	private String userNotifyPm;//
	private String userPopupPm;//
	private String rankId;//
	private String userAvatar;//
	private String userAvatarType;//
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
	private String themesId;//
	private String deleted;//
	private String userViewonline;//
	private String securityHash;//
	private String userKarma;//
	private String userAuthhash;//

    // Constructors

    /** default constructor */
    public ForumUser() {
    }

	/** minimal constructor */
    public ForumUser(String userId) {
        this.userId = userId;
    }
    
    /** full constructor */
    public ForumUser( String userId, String sysUserCode, String userActive, String username, String userPassword, String userSessionTime, String userSessionPage, String userLastvisit, String userRegdate, String userLevel, String userPosts, String userTimezone, String userStyle, String userLang, String userDateformat, String userNewPrivmsg, String userUnreadPrivmsg, String userLastPrivmsg, String userEmailtime, String userViewemail, String userAttachsig, String userAllowhtml, String userAllowbbcode, String userAllowsmilies, String userAllowavatar, String userAllowPm, String userAllowViewonline, String userNotify, String userNotifyAlways, String userNotifyText, String userNotifyPm, String userPopupPm, String rankId, String userAvatar, String userAvatarType, String userEmail, String userIcq, String userWebsite, String userFrom, String userSig, String userSigBbcodeUid, String userAim, String userYim, String userMsnm, String userOcc, String userInterests, String userBiography, String userActkey, String gender, String themesId, String deleted, String userViewonline, String securityHash, String userKarma, String userAuthhash) {
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

	public String getUserId(){
		return this.userId;
	}
	
	public void setUserId( String userId){
		this.userId = userId;
	}
	public String getSysUserCode(){
		return this.sysUserCode;
	}
	
	public void setSysUserCode( String sysUserCode){
		this.sysUserCode = sysUserCode;
	}
	public String getUserActive(){
		return this.userActive;
	}
	
	public void setUserActive( String userActive){
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
	public String getUserSessionTime(){
		return this.userSessionTime;
	}
	
	public void setUserSessionTime( String userSessionTime){
		this.userSessionTime = userSessionTime;
	}
	public String getUserSessionPage(){
		return this.userSessionPage;
	}
	
	public void setUserSessionPage( String userSessionPage){
		this.userSessionPage = userSessionPage;
	}
	public String getUserLastvisit(){
		return this.userLastvisit;
	}
	
	public void setUserLastvisit( String userLastvisit){
		this.userLastvisit = userLastvisit;
	}
	public String getUserRegdate(){
		return this.userRegdate;
	}
	
	public void setUserRegdate( String userRegdate){
		this.userRegdate = userRegdate;
	}
	public String getUserLevel(){
		return this.userLevel;
	}
	
	public void setUserLevel( String userLevel){
		this.userLevel = userLevel;
	}
	public String getUserPosts(){
		return this.userPosts;
	}
	
	public void setUserPosts( String userPosts){
		this.userPosts = userPosts;
	}
	public String getUserTimezone(){
		return this.userTimezone;
	}
	
	public void setUserTimezone( String userTimezone){
		this.userTimezone = userTimezone;
	}
	public String getUserStyle(){
		return this.userStyle;
	}
	
	public void setUserStyle( String userStyle){
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
	public String getUserNewPrivmsg(){
		return this.userNewPrivmsg;
	}
	
	public void setUserNewPrivmsg( String userNewPrivmsg){
		this.userNewPrivmsg = userNewPrivmsg;
	}
	public String getUserUnreadPrivmsg(){
		return this.userUnreadPrivmsg;
	}
	
	public void setUserUnreadPrivmsg( String userUnreadPrivmsg){
		this.userUnreadPrivmsg = userUnreadPrivmsg;
	}
	public String getUserLastPrivmsg(){
		return this.userLastPrivmsg;
	}
	
	public void setUserLastPrivmsg( String userLastPrivmsg){
		this.userLastPrivmsg = userLastPrivmsg;
	}
	public String getUserEmailtime(){
		return this.userEmailtime;
	}
	
	public void setUserEmailtime( String userEmailtime){
		this.userEmailtime = userEmailtime;
	}
	public String getUserViewemail(){
		return this.userViewemail;
	}
	
	public void setUserViewemail( String userViewemail){
		this.userViewemail = userViewemail;
	}
	public String getUserAttachsig(){
		return this.userAttachsig;
	}
	
	public void setUserAttachsig( String userAttachsig){
		this.userAttachsig = userAttachsig;
	}
	public String getUserAllowhtml(){
		return this.userAllowhtml;
	}
	
	public void setUserAllowhtml( String userAllowhtml){
		this.userAllowhtml = userAllowhtml;
	}
	public String getUserAllowbbcode(){
		return this.userAllowbbcode;
	}
	
	public void setUserAllowbbcode( String userAllowbbcode){
		this.userAllowbbcode = userAllowbbcode;
	}
	public String getUserAllowsmilies(){
		return this.userAllowsmilies;
	}
	
	public void setUserAllowsmilies( String userAllowsmilies){
		this.userAllowsmilies = userAllowsmilies;
	}
	public String getUserAllowavatar(){
		return this.userAllowavatar;
	}
	
	public void setUserAllowavatar( String userAllowavatar){
		this.userAllowavatar = userAllowavatar;
	}
	public String getUserAllowPm(){
		return this.userAllowPm;
	}
	
	public void setUserAllowPm( String userAllowPm){
		this.userAllowPm = userAllowPm;
	}
	public String getUserAllowViewonline(){
		return this.userAllowViewonline;
	}
	
	public void setUserAllowViewonline( String userAllowViewonline){
		this.userAllowViewonline = userAllowViewonline;
	}
	public String getUserNotify(){
		return this.userNotify;
	}
	
	public void setUserNotify( String userNotify){
		this.userNotify = userNotify;
	}
	public String getUserNotifyAlways(){
		return this.userNotifyAlways;
	}
	
	public void setUserNotifyAlways( String userNotifyAlways){
		this.userNotifyAlways = userNotifyAlways;
	}
	public String getUserNotifyText(){
		return this.userNotifyText;
	}
	
	public void setUserNotifyText( String userNotifyText){
		this.userNotifyText = userNotifyText;
	}
	public String getUserNotifyPm(){
		return this.userNotifyPm;
	}
	
	public void setUserNotifyPm( String userNotifyPm){
		this.userNotifyPm = userNotifyPm;
	}
	public String getUserPopupPm(){
		return this.userPopupPm;
	}
	
	public void setUserPopupPm( String userPopupPm){
		this.userPopupPm = userPopupPm;
	}
	public String getRankId(){
		return this.rankId;
	}
	
	public void setRankId( String rankId){
		this.rankId = rankId;
	}
	public String getUserAvatar(){
		return this.userAvatar;
	}
	
	public void setUserAvatar( String userAvatar){
		this.userAvatar = userAvatar;
	}
	public String getUserAvatarType(){
		return this.userAvatarType;
	}
	
	public void setUserAvatarType( String userAvatarType){
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
	public String getThemesId(){
		return this.themesId;
	}
	
	public void setThemesId( String themesId){
		this.themesId = themesId;
	}
	public String getDeleted(){
		return this.deleted;
	}
	
	public void setDeleted( String deleted){
		this.deleted = deleted;
	}
	public String getUserViewonline(){
		return this.userViewonline;
	}
	
	public void setUserViewonline( String userViewonline){
		this.userViewonline = userViewonline;
	}
	public String getSecurityHash(){
		return this.securityHash;
	}
	
	public void setSecurityHash( String securityHash){
		this.securityHash = securityHash;
	}
	public String getUserKarma(){
		return this.userKarma;
	}
	
	public void setUserKarma( String userKarma){
		this.userKarma = userKarma;
	}
	public String getUserAuthhash(){
		return this.userAuthhash;
	}
	
	public void setUserAuthhash( String userAuthhash){
		this.userAuthhash = userAuthhash;
	}
}