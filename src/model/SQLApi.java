package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.Properties;

import org.json.JSONArray;
import org.json.JSONObject;




public class SQLApi {
	
	public Connection con;
	private PreparedStatement pstmt;
	public SQLApi(){
		
	}
	
	public void setDBProp() {
		
		try {
			Properties prop = new Properties();
			prop.setProperty("user", "root");
			prop.setProperty("password", "");
			prop.setProperty("characterEncoding", "UTF-8");
			prop.setProperty("useUnicode", "true");
			prop.setProperty("useSSL", "False");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/erp", prop);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String queryData(String id) {
		setDBProp();
		String data = "";
		
		try{
			pstmt = con.prepareStatement("SELECT id,title,content,picName FROM webnews WHERE id = ?");
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			JSONArray all = new JSONArray();
			while (rs.next()) {
				JSONObject jsonRow = new JSONObject();
				jsonRow.put("id", rs.getString("id"));
				jsonRow.put("title", rs.getString("title"));
				jsonRow.put("content", rs.getString("content"));
				jsonRow.put("picName", rs.getString("picName"));
				all.put(jsonRow);
			}
			data = all.toString();
		}
		catch(Exception ee){
			System.out.println(ee.toString());
		}
		return data;
    }
	
	
	public String queryAllData() {
		setDBProp();
		String data = "";
		
		try{
			pstmt = con.prepareStatement("SELECT id,title,content,picName FROM webnews");
			ResultSet rs = pstmt.executeQuery();
			JSONArray all = new JSONArray();
			while (rs.next()) {
				JSONObject jsonRow = new JSONObject();
				jsonRow.put("id", rs.getString("id"));
				jsonRow.put("title", rs.getString("title"));
				jsonRow.put("content", rs.getString("content"));
				jsonRow.put("picName", rs.getString("picName"));
				all.put(jsonRow);
			}
			data = all.toString();
		}
		catch(Exception ee){
			System.out.println(ee.toString());
		}
		return data;
    }

}
