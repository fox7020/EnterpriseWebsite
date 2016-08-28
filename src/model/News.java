package model;

public class News {
	
	private static String title = "綠島門市免費提供國軍弟兄清潔隊員飲料";
	private static String context = "尼伯特颱風重創東台灣，首當其衝的綠島是重災區之一，滿目瘡痍，百廢待舉。災後重建復原工作多虧國軍弟兄、清潔隊員的全力支援，清心福全綠島門市羅美蓮店長主動提供免費冰涼手搖茶飲，感謝大夥的無私奉獻，充分體現守望相助、軍民一家的台灣人情味。未來幾天綠島門市仍將持續響應總公司的號召，免費提供飲料，為投入重建工作的國軍弟兄、清潔隊員解渴、打氣。風雨無情，人間有愛！國軍弟兄、清潔隊員，真是好樣兒的，感謝你們（立正～敬禮）！綠島加油！";
	private static String previewContex = context.substring(0,20)+ "...";
	private static String firstCharcter = title.substring(0,1);
	public void main(String[] args){
		String  p =PrintNews();
		System.out.println(p);
	}
	private String out;
	
	public String getOut() {
		return out;
	}

	public void setOut(String out) {
		out = PrintNews();
	}
	
	public static String getTitle(){
		return title;
	}
	
	public static String getContext(){
		return context;
	}
	
	

	public static String PrintNews(){
		String closeDiv = ("</div>");
		String print1 = ("<div class = 'col-md-4 col-sm-6'>");
		String print2 = ("<div class='single-about-detail'>");
		String print3 = ("<div class='about-img'>");
		String print4 = ("<img class='img-responsive' src='img/item3.jpg' alt=''>");
		String print5 = ("<div class='about-details'>");
		String print6 = ("<div class='pentagon-text'>");
		String print7 = ("<h1>"+firstCharcter+"</h1>");
		String print8 = ("<h3>"+title+"</h3>");
		String print9 = ("<p>"+previewContex+"</p>");
		String print10 =("<a href='newsDetail.jsp' /a>");
		StringBuffer bufferOut = new StringBuffer();
		bufferOut.append(print1);
		bufferOut.append(print2);
		bufferOut.append(print10);
		bufferOut.append(print3);
		bufferOut.append(print4);
		bufferOut.append(closeDiv);
		bufferOut.append(print5);
		bufferOut.append(print6);
		bufferOut.append(print7);
		bufferOut.append(closeDiv);
		bufferOut.append(print8);
		bufferOut.append(print9);
		bufferOut.append(closeDiv);
		bufferOut.append(closeDiv);
		bufferOut.append(closeDiv);
		
		return bufferOut.toString();
	}
	
	public static String p(){
		String o = "45641";
		return o;
	}
	
	
}
