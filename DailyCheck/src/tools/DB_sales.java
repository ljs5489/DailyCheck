package tools;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DB_sales {
	private static String JDBC_DRIVER_NAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String DB_URL = "jdbc:sqlserver://10.1.208.2;databaseName=TFS_DB";
	private static String USER_ID = "DBWeb1";
	private static String USER_PASSWORD_DBWeb1 = "DB02@Web#0611";

    public static Connection getConnection() throws Exception {
    	if (JDBC_DRIVER_NAME == null) readProperties();
        Class.forName(JDBC_DRIVER_NAME);
        Connection connection = DriverManager.getConnection(DB_URL, USER_ID, USER_PASSWORD_DBWeb1);
        return connection;
    }
    
    static void readProperties() throws IOException {
        Properties properties = new Properties();
        InputStream inputstream = 
                DB.class.getClassLoader().getResourceAsStream("DB.properties");
        properties.load(inputstream);
        USER_PASSWORD_DBWeb1 = properties.getProperty("USER_PASSWORD_DBWeb1");
    }
}
