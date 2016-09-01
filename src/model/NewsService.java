package model;

public class NewsService {
	
	private static String title = "��q�����K�O���Ѱ�x�̥S�M�䶤������";
	private static String context = "���B�S�䭷���ЪF�x�W�A�����Ī���q�O���a�Ϥ��@�A���ؽH���A�ʼo���|�C�a�᭫�ش_��u�@�h����x�̥S�B�M�䶤�������O�䴩�A�M�ߺ֥���q����ù���������D�ʴ��ѧK�O�B�D��n�����A�P�¤j�٪��L�p�^�m�A�R����{�u��ۧU�B�x���@�a���x�W�H�����C���ӴX�Ѻ�q�������N�����T���`���q�����l�A�K�O���Ѷ��ơA����J���ؤu�@����x�̥S�B�M�䶤���Ѵ��B����C���B�L���A�H�����R�I��x�̥S�B�M�䶤���A�u�O�n�˨઺�A�P�§A�̡]�ߥ���q§�^�I��q�[�o�I";
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
		String print7 = ("<h1 >"+firstCharcter+"</h1>");
		String print8 = ("<h3 id = 'title'>"+title+"</h3>");
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
