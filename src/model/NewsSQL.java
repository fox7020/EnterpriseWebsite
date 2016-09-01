package model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewsSQL
 */
@WebServlet("/NewsSQL")
public class NewsSQL extends HttpServlet {
	private  PrintWriter out;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		SQLApi api = new SQLApi();
		String data = "";
		String id = request.getParameter("id");
		if(id.equals("allData")){
			data = api.queryAllData();
			out.print(data);	
		}
		else{
			data = api.queryData(id);
			out.print(data);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
