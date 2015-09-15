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
}
