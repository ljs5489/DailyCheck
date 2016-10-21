package makeBinary;

public class MyErr extends Exception{
	String myName = "";
	MyErr(String name){
		this.myName = name;		
	}	
	public String getMyName(){
		return myName;
	}
}
