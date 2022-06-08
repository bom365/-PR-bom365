package controller.crawler;

import java.io.IOException;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;


public class Crawling extends CrawlingUtil{
	private final static String USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36";
	
	
	private  Connection connection;
	
	
	public Connection getConnection(String URL) {
		
		
		connection = Jsoup.connect(URL)
				.userAgent(USER_AGENT)
				.method(Connection.Method.GET)
				.ignoreContentType(true);
					
		return connection;
		
	}
	/*
	 * 
	 * 	Connection 객체?��?�� HTML ?��?��?���? �??��?��?��
	 * 	@param
	 * 	@return 
	 */
	public Document  getHtmlData() {
		try {
			return connection.get();
			
		} catch (IOException e) {
			
			
			e.printStackTrace();
		}
		return null;
		
	}
	/*
	 *  ?��?�� ?��?��?�� : 
	 *  	?���? : name
	 * 	�? :
	 * 
	 * 
	 */
	public void   start(Document document)
	{
		Elements col_sm_6 =  document.getElementsByClass("col-sm-6");
		Element element;
		//Map<String[], String[]> animal = new HashMap<String[], String[]>();
		
		for(int i=0;i<col_sm_6.size();i++) {
			element =  col_sm_6.get(i);
			
			System.out.println(getImgSrc(element));
			System.out.println(getAtag(element));
			System.out.println(getName(element));
			System.out.println(getNSpecies(getSpecies(element)));
			System.out.println(getNameSpecies(getSpecies(element)));
			//System.out.println(getSpecies(element));
			System.out.println(getGender(element));
			//System.out.println(getAWC(element));
			
			System.out.println(getWeight(getAWC(element)));
			System.out.println(getAge(getAWC(element)));
			
			
			System.out.println();
		}
				
		/*
		animal.put("name", USER_AGENT);
		animal.put("Species", USER_AGENT);
		animal.put("gender",USER_AGENT);
		animal.put("age", USER_AGENT);
		animal.put("weight", USER_AGENT);
		*/
		
	}
	public String getNameSpecies(String Species) {
		
		
		
		return Species.replaceAll("[고양?�� | �?]+", "").replaceAll("[( | )]+","");
	}
	public String getNSpecies(String Species) {
		
		
		
		return Species.replaceAll("\\(+[�?-?��]+\\)+", "");
	}
	
	
	public String  getAge(String AWC) {
		String[] weight;
		
		weight = AWC.split("/");
		
		
		return weight[0];
	}
	
	public String  getWeight(String AWC) {
		String[] weight;
		
		weight = AWC.split("/");
		
		
		return weight[1];
	}
	
	
	/*
	 * ?��미�? URL 추출
	 * Element �? ?��기면 ?��미�??�� ?��?�� URL?�� 추출?��?��
	 * 
	 */
	public String getImgSrc(Element Element) {
		
		return Element.getElementsByClass("card-img-top").attr("src");
		
	}
	/*
	 * 
	 * A?���? href 추출
	 */
	public String getAtag(Element Element) {
		
		return Element.getElementsByTag("a").attr("href").toString();
	}
	/*
	 *  �?, 고양?�� ?���? 추출
	 * 
	 */
	public String getName(Element Element) {
		
		return Element.getElementsByClass("h5 font-weight-bold").text();
	}
	/*
	 * �? 추출
	 *
	 */
	public String getSpecies(Element Element) {
		Elements element = Element.getElementsByClass("text-secondary mb-0");
		List<TextNode> textList =  element.textNodes();
		
		return textList.get(0).toString();
	}
	/*
	 * ?���? 추출
	 * 
	 */
	public String getGender(Element Element) {
		Elements element = Element.getElementsByClass("text-secondary mb-0");
		List<TextNode> textList =  element.textNodes();
		
		return textList.get(1).toString();
	}
	/*
	 * ?���? 추출
	 */
	public String getAWC(Element Element) {
		Elements element = Element.getElementsByClass("text-secondary mb-0");
		List<TextNode> textList =  element.textNodes();
		
		return textList.get(2).toString();
	}
	
	
}
