package tools;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.http.HttpSession;

public class UserService {
	
    private static final String CURRENT_USER = "CURRENT_USER";

    
    
    //===================================================================================
    public static void setCurrURL(HttpSession session, String url) throws Exception {
        session.setAttribute("URL",  url);
    }    
    public static String getCurrURL(HttpSession session) throws Exception {
    	return (String)session.getAttribute("URL");
    }
    //===================================================================================
    
    public static void login(HttpSession session, User user) throws Exception {
        session.setAttribute(CURRENT_USER,  user);
    }

    public static void logout(HttpSession session) {
        session.removeAttribute(CURRENT_USER);
    }

    public static User getCurrentUser(HttpSession session) {
        return (User)session.getAttribute(CURRENT_USER);
    }

    public static String getCurrentUserName(HttpSession session) {
        User user = (User)session.getAttribute(CURRENT_USER);
        return user == null ? "Guest" : user.getName();
    }

    public static boolean isCurrentUserLoggedIn(HttpSession session) {
        return session.getAttribute(CURRENT_USER) != null;
    }
	/*
    public static boolean isCurrentUserInGroup(HttpSession session, String groupName) throws Exception {
        User user = (User)session.getAttribute(CURRENT_USER);
        if (user == null) return false;
        return UserGroupDAO.selectByUserIdAndGroupName(user.getId(), groupName) != null;
    }
	*/
    public static String encryptToMD5(String passwd) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] passBytes = passwd.getBytes();
        md.reset();
        byte[] digested = md.digest(passBytes);
        StringBuffer sb = new StringBuffer();
        for(int i=0;i<digested.length;i++)
            sb.append(Integer.toHexString(0xff & digested[i]));
        return sb.toString();
    }

    public static String makeTempPassword() {
        String s = "a";
        for (int i=0; i < 4; ++i)
            s += (int)(Math.random() * 10) % 10;
        return s;
    }
    


}
