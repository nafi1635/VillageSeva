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

import model.Model;
import dao.Dao;
import sun.awt.ModalExclude;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
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
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		DateFormat dateFormat=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date=new Date();
		String date1=dateFormat.format(date);
		String subject=request.getParameter("subject");
		String message=request.getParameter("message");
		String sql="insert into contacts(name,email,subject,message,date) values('"+name+"','"+email+"','"+subject+"','"+message+"','"+date+"')";
		Model m=new Model();
		String page="";
		m.setEmailid(email);
		if(name.equals("")||email.equals("")||subject.equals("")||message.equals(""))
		{
			page="/contacts.jsp?msg=allfields";
		}
		else
		{
			try {
				int i=Dao.insert(m,sql);
				if(i!=0)
				{
					page="/contacts.jsp?msg=inserted";
				}
				else
				{
					page="/contacts.jsp?msg=notposted";
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			getServletContext().getRequestDispatcher(page).forward(request, response);
		}	
	}

}
