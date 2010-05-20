package chance.util;

public class HtmlUtils {
	/**
	 * omit string
	 * 
	 * @param strText  original string
	 * @param KeepLen  expect length
	 * @return
	 */
	public static String omitString(String strText, int KeepLen) {
		String strOmit = "... ";
		if (strText == null)
			return "";
		if (((strText + strOmit).length()) <= KeepLen)
			return strText;
		else
			try {
				return (strText.substring(0, KeepLen - 2) + strOmit);
			} catch (Exception e) {
				return strText;
			}
	}
	
	/**
	 * remove html tag and "&nbsp;"
	 * @param input   original string
	 * @param length  expect length
	 * @return
	 */
	public static String removeHTML(String input, int length) {   
        if (input == null || input.trim().equals("")) {   
            return "";   
        }   
        String str = input.replaceAll("<[a-zA-Z]+[1-9]?[^><]*>", "").replaceAll("</[a-zA-Z]+[1-9]?>", "");  
        str = str.replaceAll("&nbsp;", "");  
        if (length>0){
        	str = omitString(str, length); 
        }
        return str;
    }  
}
