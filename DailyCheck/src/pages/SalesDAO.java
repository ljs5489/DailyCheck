package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import tools.*;



public class SalesDAO {
	private static Sales makesales(ResultSet resultSet) throws SQLException {
		Sales sales = new Sales();
		sales.setKijun_date(resultSet.getString("kijun_date").trim());
		sales.setDealer(resultSet.getString("dealer").trim());
		sales.setDealer_cd(resultSet.getString("dealer_cd").trim());	
		sales.setTfskr_sales_rep(resultSet.getString("tfskr_sales_rep").trim());	
		//sales.setTarget_cnt(resultSet.getString("target_cnt").trim());	
		sales.setTarget_amt(resultSet.getString("target_amt").trim());	
		sales.setTarget_ms(resultSet.getString("target_ms").trim());	
		//sales.setCar_sales(resultSet.getString("car_sales").trim());	
		//sales.setTfskr_funding(resultSet.getString("tfskr_funding").trim());	
		
		
		if(resultSet.getString("ms_all") == null){
			sales.setMs_all("0");	
		}
		else{
			sales.setMs_all(resultSet.getString("ms_all").trim());	
		}
		
		//sales.setTm_applied(resultSet.getString("tm_applied").trim());	
		//sales.setTm_t_approved(resultSet.getString("tm_t_approved").trim());	
		//sales.setTm_t_approved_amt(resultSet.getString("tm_t_approved_amt").trim());	
		sales.setTm_t_funded_amt(resultSet.getString("tm_t_funded_amt").trim());	
		//sales.setEtc(resultSet.getString("etc").trim());	
		return sales;
		
	}

	public static ArrayList<Sales> selectById(String date, String code) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
        String sql = "EXEC LSR_SALES_PERFORMANCE_REPORT ?, ?";

        try (Connection con = DB_sales.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, date);
            stmt.setString(2, code);                        
            try (ResultSet rs = stmt.executeQuery()) {
                ArrayList<Sales> list = new ArrayList<Sales>();
                while (rs.next()){
                	
                	list.add(makesales(rs));
                }
                return list; //select된곳에 null있으면 에러남... 공백이라도 있어야 함.

            }
        }finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
    }
	/*
	public static void insertComment(String wrtier, String password, String content) throws Exception{
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO comment("
					+ "writer"
					+ ",password"
					+ ",content)"
					+ "VALUES ( "
					+ "?, ?, ?)";
			
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			statement.setString(1, wrtier);
			statement.setString(2, password);
			statement.setString(3, content);		
			statement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		
		
	}

	*/
	public static String getYesterday(){
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, -1);
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(cal.getTime()).replaceAll("-", "");		
	}
	
	
	
	public static void main(String[] args){		
		try {
			//System.out.println("어제"+getYesterday());
			//getTotal("a271");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Sales getTotal(String code) throws Exception{
		
		try{
			ArrayList<Sales> temp = selectTotal(code);
			int tot = temp.size()-1;
			return temp.get(tot);
		}
		catch(Exception e){
			return null;
		}

		//System.out.println(temp.get(tot).getDealer());
		//System.out.println(temp.get(tot).getTarget_amt());
		//System.out.println(temp.get(tot).getTm_t_funded_amt());		
		//System.out.println(temp.get(tot).getTarget_ms());
		//System.out.println(temp.get(tot).getMs_all());
		
		
		
	}
	public static ArrayList<Sales> selectTotal(String code) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
        String sql = "EXEC LSR_SALES_PERFORMANCE_REPORT ?, ?";

        try (Connection con = DB_sales.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, getYesterday());
            stmt.setString(2, code);                        
            try (ResultSet rs = stmt.executeQuery()) {
                ArrayList<Sales> list = new ArrayList<Sales>();
                while (rs.next()){                	
                	list.add(makesales(rs));
                }              
                
                /*
                for(Sales temp : list){
                	System.out.println(list.size());
                	System.out.print(temp.getDealer().toString());
                	System.out.print(temp.getTarget_amt().toString());
                	System.out.print(temp.getTm_t_funded_amt().toString());
                	System.out.print(temp.getTarget_ms().toString());
                	System.out.print(temp.getMs_all().toString());      
                }
                */
                return list; //select된곳에 null있으면 에러남... 공백이라도 있어야 함.
            }
        }finally {
        	
        	
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}		
	}
		
	


}
