package tools;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GetDate {
	public static String getDate() {
		Date date = new Date();
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");		
		return sdf.format(date);
	}
}

