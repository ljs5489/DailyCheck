package tools;

/*문자열 핸들링 메소드 모음*/

public class Sets {
	public static String setBlock(String block, String name, String on, String off, boolean mini) {

		String tags = "";
		tags += "<div class='ui-block-" + block + "'>";
		tags += "<label for='" + name + "'>" + firstUpper(getRidOfTwoChar(name)) + ":</label><select type='checkbox' ";
		if (mini)
			tags += "data-mini='true' ";
		tags += "data-role='flipswitch' name='" + name + "' id='" + name + "'>";
		tags += "<option value='off'>" + off + "</option>";
		tags += "<option value='on'>" + on + "</option>";
		tags += "</select><br></div>";

		return tags;
	}

	public static String getRidOfTwoChar(String str) {		
		str = str.replaceAll("WE", "");
		str = str.replaceAll("WM", "");
		str = str.replaceAll("EM", "");
		str = str.replaceAll("EE", "");
		
		return str;
	}

	public static String firstUpper(String str) {
		char[] stringArray = str.trim().toCharArray();
		stringArray[0] = Character.toUpperCase(stringArray[0]);
		str = new String(stringArray);

		return str;
	}
}
