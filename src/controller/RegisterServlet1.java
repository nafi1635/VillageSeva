package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Model;
public class RegisterServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterServlet1() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("phone");
String state=request.getParameter("state");
String city=request.getParameter("city");
String village=request.getParameter("village");
String pass=request.getParameter("pwd");
String pass1=request.getParameter("pwd1");
String desig=request.getParameter("desig");
String page="";
String sql="insert into userinfo values('"+name+"','"+email+"','"+contact+"','"+state+"','"+city+"','"+village+"','"+pass+"','"+desig+"')";
if(name.equals("")||email.equals("")||contact.equals("")||state.equals("")||city.equals("")||village.equals("")||pass.equals("")||pass1.equals(""))
{
	page="/users.jsp?msg=abc";//URL Rewriting
}
else if(pass.equals(pass1))
{
Model m=new Model();	
m.setCity(city);
m.setContact(contact);
m.setEmailid(email);
m.setname(name);
m.setPass(pass1);
m.setState(state);
m.setVillage(village);
m.setDesig(desig);
try {
	int i=Dao.insert(m,sql);
	if(i!=0)
	{
		page="/users.jsp?msg=qwerty";
	}
	else
	{
		page="/users.jsp?msg=notinsert";
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
}
else
{
	page="/users.jsp?msg=pwdnot";
}
getServletContext().getRequestDispatcher(page).forward(request, response);		
		
		
		
		
		
		
		
		
		
		
		
	}

}
