package comments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pages.Sales;
import tools.DB;
import tools.UserService;

public class ReplyDAO {
	private static Reply makeReply(ResultSet resultSet) throws SQLException {
		Reply cmt = new Reply();

		cmt.setId(resultSet.getInt("id"));
		cmt.setWriter(resultSet.getString("writer").trim());
		//cmt.setTitle(resultSet.getString("title").trim());
		cmt.setContent(resultSet.getString("content").trim());
		cmt.setPw(resultSet.getString("pw").trim());
		cmt.setEntry_date(resultSet.getString("entry_date").trim());
		//try{ cmt.setView(resultSet.getInt("view")); } catch(Exception e){ cmt.setView(0); }
		
		return cmt;

	}
	
	public static void insertReply(int pid, String writer, String pw, String content) throws Exception {
		String sql =" INSERT INTO sp.reply(pid,writer,pw,content,entry_date) "
				   +" VALUES(?,?,?,?,Convert(varchar(30),Getdate(),120)) ";

		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)
			) {
				stmt.setInt(1, pid);
				stmt.setString(2, writer);
				stmt.setString(3, UserService.encryptToMD5(pw));
				stmt.setString(4, content);
	
				stmt.execute();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	public static int chkLikeIt(int pid, String userIP, String userName) throws Exception {
		String sql =""
			+"SELECT chk = COUNT(*) FROM [JSLEE].[sp].[likeit] WHERE 1=1"
			+" AND [pid] = ? "
			+" AND [userIp] = ? "
			+" AND [userName] = ? "
			+" AND CONVERT(varchar(8),entry_date,112) = CONVERT(varchar(8),GETDATE(),112) ";
		
		System.out.println(sql);
		System.out.println(pid);
		System.out.println(userIP);
		System.out.println(userName);
		
		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);	
			) {		
			stmt.setInt(1, pid);
			stmt.setString(2, userIP);
			stmt.setString(3, userName);		
			ResultSet rs = stmt.executeQuery();		

			rs.next();				
			int check1 = rs.getInt("chk");				
			System.out.println(check1);
			
			return check1;
		}
	}
	public static void insertLike(int pid, String userIP, String userName) throws Exception {
		String sql =" INSERT INTO sp.likeit(pid,userIp,userName,likeType,entry_date) "
				   +" VALUES(?,?,?,?,GETDATE()) ";
		System.out.println(sql);
		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)
			) {
				stmt.setInt(1, pid);
				stmt.setString(2, userIP);
				stmt.setString(3, userName);
				stmt.setString(4, "1");
				stmt.execute();
		} catch (Exception e) {
			System.out.println(e.toString());
		}

	}
	public static ArrayList<Reply> selectAll(int pid) throws Exception {
		String sql = " SELECT * FROM sp.reply WHERE pid = ? ORDER BY entry_date DESC ";

		try (	
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
			) {
				stmt.setInt(1, pid);
				ResultSet rs = stmt.executeQuery();
				
				ArrayList<Reply> list = new ArrayList<Reply>();
				while (rs.next()) {
					list.add(makeReply(rs));
				}
				return list; // select된곳에 null있으면 에러남... 공백이라도 있어야 함.
		}
	}
	public static boolean checkPW(String sid, String pid, String pw, boolean encrypted) throws Exception {
		String sql =   " SELECT PW "
					  +" FROM [JSLEE].[sp].[reply] "
					  +" WHERE 1=1 "
					  +" AND id = ? "
					  +" AND pid = ? ";
		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);				
			) {
			stmt.setString(1, sid);
			stmt.setString(2, pid);
			ResultSet rs = stmt.executeQuery(); 
		
			rs.next();				
			String check1 = rs.getString("pw");
			String check2 = pw;
			
			System.out.println(check1);
			System.out.println(check2);
			
			if(encrypted) check2 = pw;
			else check2 = UserService.encryptToMD5(""+pw);
			
			if(check1.trim().equals(check2.trim())) return true;				
			
			return false;
		}

	}
	public static void deleteReply(String sid, String pid) throws Exception {
		String sql = " DELETE FROM [JSLEE].[sp].[reply] WHERE id = ? AND pid = ? ";
		
		try (
				Connection con = DB.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql)
			) {
			stmt.setString(1, sid.trim());
			stmt.setString(2, pid.trim());
		
			stmt.execute();
			//System.out.println(sql);
			//System.out.println(sid);
			//System.out.println(pid);
		}

	}
	public static void main(String[] args) {
		try {
			// ReplyDAO.insertReply("","","");
			ReplyDAO.selectAll(12);
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
