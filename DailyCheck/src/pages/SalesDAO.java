package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import tools.*;



public class SalesDAO {
	private static Sales makesales(ResultSet resultSet) throws SQLException {
		Sales sales = new Sales();
		sales.setKijun_date(resultSet.getString("kijun_date").trim());
		sales.setDealer(resultSet.getString("dealer").trim());
		sales.setDealer_cd(resultSet.getString("dealer_cd").trim());	
		sales.setTfskr_sales_rep(resultSet.getString("tfskr_sales_rep").trim());	
		sales.setTarget_cnt(resultSet.getString("target_cnt").trim());	
		sales.setTarget_amt(resultSet.getString("target_amt").trim());	
		sales.setTarget_ms(resultSet.getString("target_ms").trim());	
		sales.setCar_sales(resultSet.getString("car_sales").trim());	
		sales.setTfskr_funding(resultSet.getString("tfskr_funding").trim());	
		sales.setMs_all(resultSet.getString("ms_all").trim());	
		sales.setTm_applied(resultSet.getString("tm_applied").trim());	
		sales.setTm_t_approved(resultSet.getString("tm_t_approved").trim());	
		sales.setTm_t_approved_amt(resultSet.getString("tm_t_approved_amt").trim());	
		sales.setTm_t_funded_amt(resultSet.getString("tm_t_funded_amt").trim());	
		sales.setEtc(resultSet.getString("etc").trim());	
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

	




}
