<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList, tools.*, pages.*, java.text.SimpleDateFormat, java.util.Calendar "%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String salesDataSet ="";	
	String id=request.getParameter("id").trim();
	String code=request.getParameter("code").trim();
	String ipAddress= RequestParameter.getClientIP(request);

	

	ArrayList<Sales> sales = SalesDAO.selectById(id,code);
	
	if (sales != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		
		for (Sales temp : sales) {						
			String kijun_date = temp.getKijun_date();
			String dealer = temp.getDealer();
			String dealer_cd = temp.getDealer_cd();
			String tfskr_sales_rep = temp.getTfskr_sales_rep();
			String target_cnt = temp.getTarget_cnt();
			String target_amt = temp.getTarget_amt();
			String target_ms = temp.getTarget_ms();
			String car_sales = temp.getCar_sales();
			String tfskr_funding = temp.getTfskr_funding();			
			String ms_all = temp.getMs_all();			
			String tm_applied = temp.getTm_applied();
			String tm_t_approved = temp.getTm_t_approved();
			String tm_t_approved_amt = temp.getTm_t_approved_amt();
			String tm_t_funded_amt = temp.getTm_t_funded_amt();			
			String etc = temp.getEtc();			
			
			salesDataSet +=
					kijun_date+"/"
					+dealer+"/"
					+dealer_cd+"/"
					+tfskr_sales_rep+"/"
					+target_cnt+"/"
					+target_amt+"/"
					+target_ms+"/"
					+car_sales+"/"
					+tfskr_funding+"/"
					+ms_all+"/"
					+tm_applied+"/"
					+tm_t_approved+"/"
					+tm_t_approved_amt+"/"
					+tm_t_funded_amt+"/"
					+etc+",";
			//SystemWriterLog.writeLog("gogo"+salesDataSet);
			
		}
	}
	
	//======================================================================================

 	Calendar cal = Calendar.getInstance();
    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
	SystemWriterLog.writeLog(sdf.format(cal.getTime()) + " getSalesData.jsp : "+code+" / IP : "+ipAddress);
	
	JSONObject json = new JSONObject();
	json.put("name", "테스트 입니다...");	
	json.put("salesDataSet", salesDataSet);


	out.print(json);
	
	
	
%>