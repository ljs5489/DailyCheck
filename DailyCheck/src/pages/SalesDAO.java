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
		sales.setDEALER_CD(resultSet.getString("DEALER_CD").trim());
		//sales.getTARGET_AMT(resultSet.getString("TARGET_AMT").trim());
		
		return sales;
	}

	public static ArrayList<Sales> selectPage(String date, String series) throws Exception {
        String sql = "EXEC userSelectPage ?, ?";
        try (Connection con = DB.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, date);
            stmt.setString(2, series);
            try (ResultSet rs = stmt.executeQuery()) {
                ArrayList<Sales> list = new ArrayList<Sales>();
                while (rs.next()) list.add(makesales(rs));
                return list;
            }
        }
    }
/*
	public static Sales<Sales> selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Sales sales = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "EXEC LSR_SALES_PERFORMANCE_REPORT '20160120', 'A271'";
		
			
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				sales = makesales(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return sales;
	}
*/




}
