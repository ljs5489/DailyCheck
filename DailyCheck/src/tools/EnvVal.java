package tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class EnvVal {
	public static String ENTIRE_MARGIN;
	public static String TESTING;
	public static String TIME_TERM;
	public static String CURRENT_VERSION;
	
	public static String NEXT_LexusWhole; 
	public static String NEXT_ToyotaWhole; 
	public static String NEXT_BothTarget; 
	public static String NEXT_LexusTarget; 
	public static String NEXT_ToyotaTarget;
	public static String NEXT_Comment;     

	
	public static void getEnvSetVals() throws IOException {
		Properties properties = new Properties();
		InputStream inputstream = DB.class.getClassLoader().getResourceAsStream("envSet.properties");
		properties.load(inputstream);
		
		ENTIRE_MARGIN = properties.getProperty("ENTIRE_MARGIN").trim();
		TESTING = properties.getProperty("TESTING").trim();
		TIME_TERM = properties.getProperty("TIME_TERM").trim();
		CURRENT_VERSION = properties.getProperty("CURRENT_VERSION").trim();
		
		NEXT_LexusWhole = properties.getProperty("NEXT_LexusWhole").trim();
		NEXT_ToyotaWhole = properties.getProperty("NEXT_ToyotaWhole").trim();
		NEXT_BothTarget = properties.getProperty("NEXT_BothTarget").trim();
		NEXT_LexusTarget = properties.getProperty("NEXT_LexusTarget").trim();
		NEXT_ToyotaTarget = properties.getProperty("NEXT_ToyotaTarget").trim();
		NEXT_Comment = properties.getProperty("NEXT_Comment").trim();
		
	}

}
