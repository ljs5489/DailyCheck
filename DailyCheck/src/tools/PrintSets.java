package tools;

public class PrintSets {	
	
	public static String getTd(int index, String arr[]){
		String returnIt="";
		
		for(int i=0;i<arr.length;i++){
			if(i+1==index) returnIt+=arr[i];
			else returnIt+="<td>"+arr[i]+"</td>";
		}
		return returnIt;		
	}
	
	
	public static String getCol(String arr[]){
		String returnIt="";
		
		for(int i=0;i<arr.length;i++){
			returnIt+="<col width='"+arr[i]+"'>";
		}
		return returnIt;		
	}
	
	
	public static String getTh(String arr[]){
		String returnIt="";
		
		for(int i=0;i<arr.length;i++){
			returnIt+="<th>"+arr[i]+"</th>";
		}
		return returnIt;		
	}
	
	public static String getWrap(){
		String returnIt="";
		returnIt+=" <div id='wrap'>";
		returnIt+=" <div class='over_h'>";
		returnIt+="	<div style='width: 50%;' class='f_l'>";
		
		return returnIt;
	}
	
	public static String getHeader(String name,String checker, String checkTime, String checker2){
		String returnIt="";		

		returnIt+="	<table cellspacing='0' cellpadding='0' class='top2'";
		returnIt+="	style='width: 100%; margin-bottom: 0px;'>";
		returnIt+=" <colgroup> <col width='10%' /> <col width='90%' /> </colgroup> </table> </div>";
		returnIt+=" <div style='width: 50%;' class='f_r'> </div> </div> <br />";
		returnIt+=" <table width='100%' cellpadding='0' cellspacing='0' class='title'>";
		returnIt+=" <colgroup> <col width='65%' /> <col width='35%' /> </colgroup> <tr>";
		returnIt+=" <td><h2>●"+name+" ( "+checker+" ) : ( "+checkTime+" )</hs2></td>";
		//returnIt+=" <td>___________"+checker2+"____________ [ Error : N ]</td>";
		returnIt+=" <td>___________"+checker2+"____________ </td>";		
		returnIt+=" </tr><tr></tr></table>";
		
		return returnIt;
	}
	
	public static String whoName(String name){
		switch(name){
		case "splim":return "<u>임성필</u>";
		case "shhan":return "<u>한승훈</u>";
		case "mpark":return "<u>박  민</u>";
		case "sylee":return "<u>이송연</u>";
		case "jslee":return "<u>이진수</u>";
		
		default: return "<u>미확인</u>";
		
		}
	}
	public static String setC(String val){
		//SystemWriterLog.writeLog(val);
		try{
			String temp=(val).replaceAll("ºC","");
			return temp+"ºC";
			
		}
		catch(Exception e){
			return val;
			
		}
	
	}
	public static String whenOverLimit(String val,int limit){
		//SystemWriterLog.writeLog(val);
		try{
			Integer temp=Integer.parseInt((val).replaceAll("%",""));
			if(temp>=limit){
				return "<b><u>"+temp+"%</u></b>";
			}
			else return temp+"%";	
			
		}
		catch(Exception e){
			return val;
			
		}
	
	}
	public static String setTable(int count, String arr[]){
		String returnIt="";		

		returnIt+="	<table cellspacing='0' cellpadding='0' class='innerTable'"
				+ "<tr><td>"+arr[0]+" /</td><td>"+arr[1]+" /</td><td rowspan='"+count+"'> "+"%"+"</td></tr>";
				for(int i=1;i<count;i++){
					returnIt+= "<tr><td>"+arr[2*i]+" /</td><td>"+arr[2*i+1]+" /</td></tr>";
					
				}
		returnIt+=" </table>";
		
		return returnIt;
	}
	
	public static String getFooter(){
		String returnIt="</div>";
		return returnIt;	
	}
	
	public static String onToGood(String on){
		if((on).equals("on")) return "Good";
		else return "<b><u>Bad</u></b>";		
	}
	public static String onToY(String on){
		if((on).equals("on"))
			return "Y";
		else if((on).equals("off"))
			return "<b><u>N</u></b>";
		else
			return "<b><u>N/A</u></b>";
	}
	public static String onToN(String on){
		if((on).equals("on")) return "N";
		else return "<b><u>A</u></b>";		
	}
	public static String timeFormat(String time){
		if((time).equals("")) return " : ";
		else return time;
	}


}
