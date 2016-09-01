package tools;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

/*
데이터베이스 연결하기 위해 필요한 속성값은(서버의 IP 주소, 계정과 패스워드 등) 종종 변경된다. 

이 값들이 자바 소스 코드에 박혀 있으면, 
값이 바뀔 때마다 소스 코드를 수정하고 다시 컴파일해야 하니 귀찮다. 
그래서 이 값들을 데이터 파일에 저장하고, 자바 코드에서 이 파일을 읽어야 한다.
데이터 파일의 내용이 수정된다고 해서 소스 코드를 다시 컴파일할 필요는 없으니 좋다. 

이렇게 종종 변경해야하는 속성값들을 데이터 파일에 저장해 놓고,
그 파일에서 속성값을 읽어오는 기능을 구현할 때
자바의 프로퍼티 파일(property file) 기능을 사용하면 간단하다.
이 기능을 구현해 보자.

설정값을 저장한 데이터 파일을 자바에서는 properties file 이라고 한다.
*/
public class DB {

    static String JDBC_DRIVER_NAME;
    static String DB_URL;
    static String USER_ID;
    static String USER_PASSWORD;
    
    public static Connection getConnection() throws Exception {
        //if (JDBC_DRIVER_NAME == null) 
        	readProperties();
        Class.forName(JDBC_DRIVER_NAME);
        return DriverManager.getConnection(DB_URL, USER_ID, USER_PASSWORD);
    }
    
    static void readProperties() throws IOException {
        Properties properties = new Properties();
        InputStream inputstream = 
                DB.class.getClassLoader().getResourceAsStream("DB.properties");
        properties.load(inputstream);
        JDBC_DRIVER_NAME = properties.getProperty("JDBC_DRIVER_NAME");
        DB_URL = properties.getProperty("DB_URL");
        USER_ID = properties.getProperty("USER_ID");
        USER_PASSWORD = properties.getProperty("USER_PASSWORD");
    }    
}
