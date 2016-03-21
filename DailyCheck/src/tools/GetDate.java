package tools;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class GetDate {
	public static String getDate() {
		Date date = new Date();
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");		
		return sdf.format(date);
	}
	
	public static String changeTimeformat(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("hh:mm");		
		return sdf.format(date);
	}
	
	public static String getCurrentTime(){
	 	Calendar cal = Calendar.getInstance();
	    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
	    return sdf.format(cal.getTime());		
	}	
	public static void makeLog(String txt){
		//String ipAddress= RequestParameter.getClientIP(request);
		System.out.println(GetDate.getCurrentTime()+" "+txt);		
	}
	
}

