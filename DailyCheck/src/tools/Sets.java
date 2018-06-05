package tools;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;

public class Sets {
	public static void main(String[] args){

	}
	
	
	public static String UTF_8(String txt) throws UnsupportedEncodingException{
		return new String(txt.getBytes("8859_1"));
	}
	
	
	public static String changeFormatYYYYMMDD(String date){
		
		//SystemWriterLog.writeLog(date);
		return date.replaceFirst("(\\d{4})(\\d{2})(\\d{2})", "$1-$2-$3");	
	}
	public static String getCurrentTime(){
	     Calendar cal = Calendar.getInstance();
	     SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
	    
	     return sdf.format(cal.getTime());
	}
	
	public static String getToday() {
		Date date = new Date();
		return new SimpleDateFormat("yyyyMMdd").format(date);
		
		
	}
	
	
	
	public static String setWH(String w,String h){
		return "Style='width:"+w+"px; height;"+h+"px;'";		
	}
	public static String setText(String block, String name, String type){
		String tags = "";
		tags += "<div class='ui-block-" + block + "'>";
		tags += "<input type='"+type+"' name='"+name+"' id='"+name+"' data-clear-btn='true'>";
		tags += "</div>";
		
		return tags;
		
	}
	
	
	public static String setBlock(String block, String name, String on, String off, boolean mini) {

		String tags = "";
		tags += "<div class='ui-block-" + block + "'>";
		tags += "<label for='" + name + "'>" + firstUpper(getRidOfTwoChar(name)) + ":</label><select type='checkbox' ";
		if (mini)
			tags += "data-mini='true' ";
		tags += "data-role='flipswitch' name='" + name + "' id='" + name + "'>";
		tags += "<option value='off'>" + off + "</option>";
		tags += "<option value='on'>" + on + "</option>";
		tags += "</select><br></div>";

		return tags;
	}
	public static String setBlock(String block, String name, String on, String off, boolean mini, String label) {

		String tags = "";
		tags += "<div class='ui-block-" + block + "'>";
		tags += "<label for='" + name + "'>" + label + ":</label><select type='checkbox' ";
		if (mini)
			tags += "data-mini='true' ";
		tags += "data-role='flipswitch' name='" + name + "' id='" + name + "'>";
		tags += "<option value='off'>" + off + "</option>";
		tags += "<option value='on'>" + on + "</option>";
		tags += "</select><br></div>";

		return tags;
	}
	//제거할 문장 선택
	public static String getRidOfTwoChar(String str) {	
		//page2
		str = str.replaceAll("WEB_", "");
		str = str.replaceAll("DBM_", "");
		str = str.replaceAll("DEW_", "");
		str = str.replaceAll("MAIL_", "");
		str = str.replaceAll("APP_", "");
		str = str.replaceAll("FAX_", "");
		str = str.replaceAll("ADN_", "");
		str = str.replaceAll("VRS_", "");
		str = str.replaceAll("FILE_", "");
		str = str.replaceAll("DEVN_", "");
		str = str.replaceAll("MSVM1_", "");
		str = str.replaceAll("MSVM2_", "");
		str = str.replaceAll("LYNC_", "");
		str = str.replaceAll("ADV1_", "");
		str = str.replaceAll("ADV2_", "");


		
		
		//page3
		str = str.replaceAll("MOBH1_", "");
		str = str.replaceAll("DC2_", "");
		str = str.replaceAll("WEB1_", "");
		str = str.replaceAll("DB1_", "");
		str = str.replaceAll("MOBH2_", "");
		str = str.replaceAll("DC1_", "");
		str = str.replaceAll("WEB2_", "");
		str = str.replaceAll("DB2_", "");
		
		//page1
		str = str.replaceAll("WE", "");
		str = str.replaceAll("WM", "");
		str = str.replaceAll("EM", "");
		str = str.replaceAll("EE", "");
		
		str = str.replaceAll("NW", "");
		str = str.replaceAll("NS", "");
		
		return str;
	}

	public static String firstUpper(String str) {
		char[] stringArray = str.trim().toCharArray();
		stringArray[0] = Character.toUpperCase(stringArray[0]);
		str = new String(stringArray);

		return str;
	}
}
