package tools;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DB_sales {
    static String SP_JDBC_DRIVER_NAME;
    static String SP_DB_URL;
    static String SP_USER_ID;
    static String SP_USER_PASSWORD;
    
    public static Connection getConnection() throws Exception {
        //if (SP_JDBC_DRIVER_NAME == null) 
        	readProperties();
        Class.forName(SP_JDBC_DRIVER_NAME);    
        return DriverManager.getConnection(SP_DB_URL, SP_USER_ID, SP_USER_PASSWORD);
    }
    
    static void readProperties() throws IOException {
        Properties properties = new Properties();
        InputStream inputstream = DB_sales.class.getClassLoader().getResourceAsStream("DB.properties");
        properties.load(inputstream);
        SP_JDBC_DRIVER_NAME = properties.getProperty("SP_JDBC_DRIVER_NAME");
        SP_DB_URL = properties.getProperty("SP_DB_URL");
        SP_USER_ID = properties.getProperty("SP_USER_ID");
        SP_USER_PASSWORD = properties.getProperty("SP_USER_PASSWORD");

        
    }    
}
