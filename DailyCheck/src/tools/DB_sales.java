package tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DB_sales {
	private static String JDBC_DRIVER_NAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String DB_URL = "jdbc:sqlserver://10.1.208.15;databaseName=TFS_DB";
	//private static String USER_ID = "sa";
	//private static String USER_PASSWORD = "test123";
	private static String USER_ID = "DBDev3";
	private static String USER_PASSWORD = "DBDev3@KLLHCit#0422";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_DRIVER_NAME);
        Connection connection = DriverManager.getConnection(DB_URL, USER_ID, USER_PASSWORD);
        return connection;
    }
    
}
