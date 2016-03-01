package comments;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pages.Sales;
import tools.DB;
import tools.UserService;

public class CommentDAO {
	private static Comment makeComment(ResultSet resultSet) throws SQLException {
		Comment cmt = new Comment();

		cmt.setId(resultSet.getInt("id"));
		cmt.setWriter(resultSet.getString("writer").trim());
		cmt.setTitle(resultSet.getString("title").trim());
		cmt.setContent(resultSet.getString("content").trim());
		cmt.setPw(resultSet.getString("pw").trim());
		cmt.setEntry_date(resultSet.getString("entry_date").trim());
		try{ cmt.setView(resultSet.getInt("view")); } catch(Exception e){ cmt.setView(0); }
		try{ cmt.setReplyCount(resultSet.getInt("reply")); } catch(Exception e){ cmt.setReplyCount(0); }
		
		return cmt;

	}

	public static ArrayList<Comment> selectAll(String pg, String sz, String od,
			String ss, String st) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		// @currentPage INT, /* 현재페이지번호*/
		// @pageSize INT, /* 한페이지의레코드수*/
		// @order INT, /* 정렬방법(0: 기본키, 1: 제목, 2:익명아이디, 3: 글쓴순서) */
		// @srchType INT, /* 검색대상(0: 검색없음, 1: 익명아이디, 2: 제목, 3: 내용 ) */
		// @srchText NVARCHAR(50) /* 검색문자열*/

		String sql = "EXEC jslee.sp.selectAll ?, ?, ?, ?, ?";

		try (Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setString(1, pg);
			stmt.setString(2, sz);
			stmt.setString(3, od);
			stmt.setString(4, ss);
			stmt.setString(5, st);

			try (ResultSet rs = stmt.executeQuery()) {
				ArrayList<Comment> list = new ArrayList<Comment>();
				while (rs.next()) {
					list.add(makeComment(rs));
				}
				return list; // select된곳에 null있으면 에러남... 공백이라도 있어야 함.

			}
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}

	public static void insertComment(String wrtier, String pw, String title,
			String content) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		
		//System.out.println("도대체 뭐냐고"+UserService.encryptToMD5(pw));
		String sql = "EXEC jslee.sp.insertComment ?, ?, ?, ?";

		try (Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setString(1, wrtier);
			stmt.setString(2, UserService.encryptToMD5(pw));
			stmt.setString(3, title);
			stmt.setString(4, content);

			stmt.execute();
			/*
			 * executeUpdate() -> database UPDATE statements executeQuery() ->
			 * database QUERY statements execute() -> anything that comes in
			 */
		} catch (Exception e) {
			System.out.println(e.toString());
		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}

	}

	public static int getRecordCount(/* int boardId, */int srchType,
			String srchText/* , int category */) throws Exception {
		String sql = "EXEC jslee.sp.commentRecordCount ?, ?";
		try (Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)) {
			// stmt.setInt(1, boardId);
			stmt.setInt(1, srchType);
			stmt.setString(2, srchText);
			// stmt.setInt(4, category);
			try (ResultSet rs = stmt.executeQuery()) {
				return rs.next() ? rs.getInt(1) : 0;
			}
		}
	}

	public static Comment selectById(int article_id, String user_ip,
			String user_name) throws Exception {
		String sql = "EXEC jslee.sp.selectById ?, ?, ?";
		try (Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, article_id);
			stmt.setString(2, user_ip);
			stmt.setString(3, user_name);
			ResultSet rs = stmt.executeQuery();
			//ResultSet rs = stmt.
			
			System.out.println(rs.toString());
			return rs.next() ? makeComment(rs) : null;
		}

	}
	public static boolean checkDelte(int article_id, String pw) throws Exception {
		String sql = " SELECT PW FROM [JSLEE].[sp].[comment] WHERE id = ?";
		try (Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, article_id);
			
			try (ResultSet rs = stmt.executeQuery()) {
				rs.next();
				//System.out.println(rs.getInt("pw"));
				
				String check1 = rs.getString("pw");
				String check2 = UserService.encryptToMD5(""+pw);
				//System.out.println(check1);
				//System.out.println(check2);
					
				
				if(check1.trim().equals(check2.trim())){					
					//System.out.println(123);
					return true;
				}
				else{
					//System.out.println(321);
					
				}
				return false;
				//return rs.next() ? rs.getInt(1) : 0;
			}finally{
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();
				
			}
		}

	}
	public static void deleteArticle(int article_id) throws Exception {
		String sql = " EXEC sp.deleteArticle ?";

		try (Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)) {
			stmt.setInt(1, article_id);
			
			try  {
				stmt.execute();
			}finally{
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();				
			}
		}

	}
	public static void main(String[] args) {
		
		
	}

}
