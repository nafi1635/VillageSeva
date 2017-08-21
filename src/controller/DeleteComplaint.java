package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Model;
import dao.Dao;

/**
 * Servlet implementation class DeleteComplaint
 */
@WebServlet("/DeleteComplaint")
public class DeleteComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteComplaint() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("cid");
	
		System.out.println(cid);
		String sql="delete from complaint where cid='"+cid+"'";
		String page="";
		try
		{
		Model m=new Model();
	
		int i=Dao.update(m, sql);	
	
		if(i>=0)
			{
	
				page="/adminview.jsp?msg=itemdeleted";			
			}
		else
			{
				page="/adminview.jsp?msg=notdeleted";
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		getServletContext().getRequestDispatcher(page).forward(request,response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
