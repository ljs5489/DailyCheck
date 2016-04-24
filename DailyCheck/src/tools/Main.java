package tools;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import pages.*;

class DS{
	String salesMan;
	String dealerName;
	double target;
	double funded;
	double target_ms;
	double ms_all;
}

public class Main {
	
	
	public static void main(String[] args){
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyymmdd");
		System.out.println(sdf.format(cal.getTime()) + "Sales Performance 자료 가져오기...");
		
		//System.out.println("simple data format : "+sdf.toString());
		
		
		ArrayList<Sales> sales = null;
		try {
			sales = SalesDAO.selectWholeData("A271");
		} catch (Exception e) {
			e.printStackTrace();
		}


		
		DS data[] = new DS[10];	
		
		int i = 0;
		for(Sales temp : sales){
			data[i] = new DS();		
			
			data[i].salesMan   = temp.getTfskr_sales_rep();
			data[i].dealerName = temp.getDealer();
			data[i].target     = Double.parseDouble(temp.getTarget_amt());
			data[i].funded     = Double.parseDouble(temp.getTm_t_funded_amt());
			data[i].target_ms  = Double.parseDouble(temp.getTarget_ms());
			data[i].ms_all     = Double.parseDouble(temp.getMs_all());
			
			i++;
		}
	}
}
