package tools;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

public class RequestParameter {
    
    private HttpServletRequest request;
    
    
    public static String getClientIP(HttpServletRequest request) {

        String ip = request.getHeader("X-FORWARDED-FOR"); 
        
        if (ip == null || ip.length() == 0) {
            ip = request.getHeader("Proxy-Client-IP");
        }

        if (ip == null || ip.length() == 0) {
            ip = request.getHeader("WL-Proxy-Client-IP");  // 웹로직
        }

        if (ip == null || ip.length() == 0) {
            ip = request.getRemoteAddr() ;
        }
        
        return ip;

    }
    public RequestParameter(HttpServletRequest request) throws UnsupportedEncodingException {
        this.request = request;
        request.setCharacterEncoding("UTF-8");
    }
    
    @SuppressWarnings("deprecation")
	public String getString(String name, String defaultValue) throws UnsupportedEncodingException {
        String s = request.getParameter(name);
        return s == null ? defaultValue : URLDecoder.decode(new String(s.trim() .getBytes("8859_1"), "UTF-8")); //후...
    }
    
    public int getInt(String name, int defaultValue) {
        String s = request.getParameter(name);
        if (s == null) return defaultValue;
        try {
            return Integer.parseInt(s);
        } catch (NumberFormatException e) {
        }
        return defaultValue;
    }
    
    public int[] getIntValues(String name) {
        String[] slist = request.getParameterValues(name);
        int[] ilist = new int[slist.length];
        for (int i=0; i < slist.length; ++i)
            ilist[i] = Integer.parseInt(slist[i]);
        return ilist;
    }

    public String[] getStringValues(String name) {
        String[] a = request.getParameterValues(name);
        if (a == null) return new String[0];
        return a;
    }
    
    public boolean getBoolean(String name, boolean defaultValue) {
        String s = request.getParameter(name);
        return (s == null) ? defaultValue : Boolean.parseBoolean(s);
    }
}
