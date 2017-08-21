package controller;
import java.io.IOException;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Model;

import org.apache.catalina.Session;

import dao.Dao;

/**
 * Servlet implementation class CreateComplaint
 */
@WebServlet("/CreateComplaint")
public class CreateComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateComplaint() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
		String email=(String)session.getAttribute("email");
		DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date=new Date();
		String date1=dateFormat.format(date);
		String title=request.getParameter("title");
		String details=request.getParameter("details");
		String sql="insert into complaint(email,title,details,date) values('"+email+"','"+title+"','"+details+"','"+date+"')";
		String page="";
		if(title.equals("")||details.equals(""))
		{
			page="/createcomplaint.jsp?msg=nullvaluesentered";//URL Rewriting
		}
		else
		{
		Model m=new Model();
		m.setEmailid(email);
		m.setTitle(title);
		m.setDetails(details);
		try {
			int i=Dao.insert(m,sql);
			if(i!=0)
			{
				page="/createcomplaint.jsp?msg=inserted";
			}
			else
			{
				page="/createcomplaint.jsp?msg=notposted";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		getServletContext().getRequestDispatcher(page).forward(request, response);		
				
				
				
				
				
				
				
	}

}
