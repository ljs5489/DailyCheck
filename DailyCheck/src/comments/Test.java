package comments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.util.ArrayList;

import pages.Sales;
import tools.DB;
import tools.SystemWriterLog;
import tools.UserService;

public class Test {
	public static String testQuery(String query) throws Exception {
		String sql =query.trim();
		SystemWriterLog.writeLog(sql);
		String resultTxt = "";
		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)
			) {
				con.setAutoCommit(false);
				int result = stmt.executeUpdate(); 
				/* ======================================== */
				SQLWarning warning = stmt.getWarnings();	
				resultTxt = result+"개 행 영향을 받습니다.";
				SystemWriterLog.writeLog(result+"개 행 영향을 받습니다.");				
				con.rollback();
				/* ======================================== */
		} catch (Exception e) {
			SystemWriterLog.writeLog(e.toString());
		}	
		return resultTxt;
	}
	public static int exeQuery(String query) throws Exception {
		String sql =query.trim();
		SystemWriterLog.writeLog(sql);
		int temp=0;
		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)
			) {

				stmt.executeUpdate(); 
				
				SystemWriterLog.writeLog("test");
		} catch (Exception e) {
			SystemWriterLog.writeLog(e.toString());
		}	
		return temp;
	}
}



