package comments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.util.ArrayList;

import pages.Sales;
import tools.DB;
import tools.UserService;

public class Test {
	public static String testQuery(String query) throws Exception {
		String sql =query.trim();
		System.out.println(sql);
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
				System.out.println(result+"개 행 영향을 받습니다.");				
				con.rollback();
				/* ======================================== */
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		return resultTxt;
	}
	public static int exeQuery(String query) throws Exception {
		String sql =query.trim();
		System.out.println(sql);
		int temp=0;
		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)
			) {

				stmt.executeUpdate(); 
				
				System.out.println("test");
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		return temp;
	}
}



