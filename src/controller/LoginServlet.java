package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Model;
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String emailid=request.getParameter("email");
System.out.println("my email"+emailid);
String password=request.getParameter("password");
System.out.println("my email"+emailid);
String desig=request.getParameter("desig");
String page="";
String sql="select * from userinfo where email='"+emailid+"'and password='"+password+"' and desig='"+desig+"'";
HttpSession session =request.getSession();
session.setMaxInactiveInterval(20*60);


if(emailid.equals(" ")||password.equals(" "))	
{
        page="/login.jsp?msg=nullvalues";
}		
else
{
	Model m=new Model();
	m.setEmailid(emailid);
	m.setPass(password);
	try {
		ResultSet rs=Dao.validate(m,sql);
		if(rs.next())
		{
			session.setAttribute("email", emailid);
			session.setAttribute("desig", desig);
			session.setAttribute("password", password);
			page="/index.jsp?msg=loginsuccess";
		}
		else
		{
			page="/login.jsp?msg=nouser";
		}
		
	
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
		
		
		
		
		
		
		
		
getServletContext().getRequestDispatcher(page).forward(request, response);	
		
	}

}
