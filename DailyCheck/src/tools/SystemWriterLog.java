package tools;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;
 
 
public class SystemWriterLog{

     
    private static void readProperties() throws IOException {
        Properties properties = new Properties();
        InputStream inputstream = SystemWriterLog.class.getClassLoader().getResourceAsStream("envSet.properties");
        properties.load(inputstream);
        fileName = properties.getProperty("LOG_FILE_PATH");
        
    }   
	
	
    static String filePath = "";
    static String fileName = "" ;
    
    
    public static void writeLog(Exception e){ writeLog(e.toString()); }
    public static void writeLog(int val){ writeLog(""+val); }    
    public static void writeLog(String txt){ //원하는 텍스트를 넣음.             
    	try{
    		readProperties();
    	}
    	catch(Exception e){
    		fileName = "C:\\DailyCheck_log";
    	}
    	
        filePath = fileName+"\\"+getTodayYYYYMMDD()+"_log.txt";        
        
        System.out.println(txt);
        
        try{
        	makeFolder(fileName); //파일 만들기
        	writeTxt(txt); //텍스트 쓰기      
        }
        catch(Exception e){
        	SystemWriterLog.writeLog(e);        	
        }
         
    }
    private static void writeTxt(String txt) throws Exception {
	   BufferedWriter fw = null;
       try{                         
			// BufferedWriter 와 FileWriter를 조합하여 사용 (속도 향상)
			fw = new BufferedWriter(new FileWriter(filePath, true));// 파일안에 문자열 쓰기
			fw.write(txt);
			fw.newLine();
			fw.flush();                        
       }finally{ // 객체 닫기
           fw.close();             
       }
    	
    }    
    private static void makeFolder(String folderName){ //폴더 만들기
    	File myFolder = new File(folderName); 

    	if(!myFolder.exists()){ 
    		myFolder.mkdirs();
    	    SystemWriterLog.writeLog("folder를 생성했습니다.");
    	}
    	/*
    	else{
			// cutewebi 폴더가 존재하면 폴더 내 기존 파일 다 삭제
			File[] cutewebiFiles = myFolder.listFiles();
			for (File file : cutewebiFiles) {
				file.delete();
			}
    	    SystemWriterLog.writeLog("cutewebi 폴더내의 기존 파일을 모두 삭제하였습니다.");    	    
    	}
    	*/
    }
    private static String getTodayYYYYMMDD(){

    	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());
		
        return strToday;

    }
}