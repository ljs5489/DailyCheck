package tools;

public class PrintSets {
	public static String getTd(String arr[]){
		String returnIt="";
		
		for(int i=0;i<arr.length;i++){
			returnIt+="<td>"+arr[i]+"</td>";
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
		returnIt+=" <div style='width: 50%;' class='f_r'> </div> </div> <br /><br />";
		returnIt+=" <table width='100%' cellpadding='0' cellspacing='0' class='title'>";
		returnIt+=" <colgroup> <col width='65%' /> <col width='35%' /> </colgroup> <tr>";
		returnIt+=" <td><h2>●"+name+" ( "+checker+" ) : ( "+checkTime+" )</hs2></td>";
		returnIt+=" <td>___________"+checker2+"____________ [ Error : N ]</td>";
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
	public static String whenOver65(String val){
		System.out.println(val);
		try{
			Integer temp=Integer.parseInt((val).replaceAll("%",""));
			if(temp>=65){
				return "<b><u>"+temp+"%</u></b>";
			}
			else return temp+"%";	
			
		}
		catch(Exception e){
			return val;
			
		}
	
	}
	
	public static String getFooter(){
		String returnIt="<br /></div>";
		return returnIt;	
	}
	
	public static String onToGood(String on){
		if((on).equals("on")) return "Good";
		else return "Bad";		
	}
	public static String onToY(String on){
		if((on).equals("on")) return "Y";
		else return "N";		
	}
	public static String onToN(String on){
		if((on).equals("on")) return "N";
		else return "A";		
	}
	public static String timeFormat(String time){
		if((time).equals("")) return " : ";
		else return time;
	}


}
