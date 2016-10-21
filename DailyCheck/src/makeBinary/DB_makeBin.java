package makeBinary;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DB_makeBin {
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

        SP_JDBC_DRIVER_NAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        //SP_DB_URL = "jdbc:sqlserver://10.1.208.2;databaseName=TFS_DB";
        SP_DB_URL = "jdbc:sqlserver://10.1.208.15;databaseName=TFS_DB";        
        SP_USER_ID = "DBDev5";
        SP_USER_PASSWORD = "1q2w3e1^";        
    }    
}
