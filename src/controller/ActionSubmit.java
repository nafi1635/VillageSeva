package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Model;
import dao.Dao;

/**
 * Servlet implementation class ActionSubmit
 */
@WebServlet("/ActionSubmit")
public class ActionSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActionSubmit() {
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
		// TODO Auto-generated method stub
		HttpSession session =request.getSession();
		DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date=new Date();
		String date1=dateFormat.format(date);
		
		String email=(String)session.getAttribute("email");
		System.out.println(email);
		String respons=request.getParameter("response");
		String id=request.getParameter("cid");
		String sql="update complaint set action='"+respons+"',actionposted='"+email+"',posteddate='"+date1+"' where cid='"+id+"'";
		String page="";
		if(respons.equals(""))
		{
			page="/complaint.jsp?msg=nullvaluesentered";//URL Rewriting
		}
		else
		{
		Model m=new Model();
		m.setEmailid(email);;
		
		try {
			int i=Dao.update(m, sql);
			if(i!=0)
			{
				page="/complaint.jsp?msg=actioninserted";
			}
			else
			{
				page="/complaint.jsp?msg=notposted";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		getServletContext().getRequestDispatcher(page).forward(request, response);		
				
				
				
				
				
				
				
	
	}

}
