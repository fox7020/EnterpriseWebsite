package model;

import java.io.IOException;
import java.util.List;

import org.json.JSONArray;

public class NewsDAO {
	//http://localhost:8080/EnterpriseWebsite/NewsSQL
	private static final String url = "http://localhost:8080/EnterpriseWebsite/NewsSQL?id=";
	
	
	protected String getTitle(int id){
		String title = null;
		String strId = Integer.toString(id);
		try {
			MultipartUtility mu = 
					new MultipartUtility(
						url + strId,"UTF-8");
			System.out.println(url+strId);
			
			List<String> ret = mu.finish();
			
			String json = ret.get(0);
			System.out.println(json);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return title;
	}
}
