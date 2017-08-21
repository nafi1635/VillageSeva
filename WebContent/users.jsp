<%@page import="dao.Dao"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>

<!--page_container-->
<div class="page_container">
	<div class="breadcrumb">
		<div class="wrap">
			<div class="container">
				<%
											
						String desig=(String)session.getAttribute("desig");
			%>
				<a href="index.jsp">Home</a><span>/</span> Hello <%=desig%>
			</div>
		</div>
	</div>
	<div class="wrap">
		<div class="container"  >
			<section>
				<div class="row" >
				<div class="span7" style="margin-left:150px">
					<h2 class="title" style="text-align:center">
							<span>Existing Members</span>
					</h2>

				<table class="span7" border="1">
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>City</th>
					<th>State</th>
					<th>Village</th>
					<th>Password</th>
					<th>Designation</th>
					<th>Delete</th>
					
				</tr>
				<% 
					String email=(String)session.getAttribute("email");
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/vseva","root","root");
					String sql="select * from userinfo";
					PreparedStatement ps=con.prepareStatement(sql);
					ResultSet rs1=ps.executeQuery();
					 		int i=0;
					    		int j=0;
							while(rs1.next())
					     		{	
							
					   %> 			
				<tr>
					<td><%=rs1.getString(1)%></td>
					<td><%=rs1.getString(2)%></td>
					<td><%=rs1.getString(3)%></td>
					<td><%=rs1.getString(4)%></td>
					<td><%=rs1.getString(5)%></td>
					<td><%=rs1.getString(6)%></td>
					<td><%=rs1.getString(7)%></td>
					<td><%=rs1.getString(8)%></td>
					<td><a href="DeleteUser?gmail=<%=rs1.getString(2)%>">Delete</a></td>
				</tr>
				<% 
				}
				%>
				</table>
				</div>
				<br><br>
				<div class="span7" style="margin-left:250px">
				
					 <form action="RegisterServlet1" method="post" name="f1">
					 <h2 class="title" style="text-align:center">
					 <br><br>
							<span style="margin-left:-100px">User Registration</span>
						</h2>
                                    	
                                        <input class="span7" type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" value="" placeholder="Email id" required/>
                                        <input class="span7" type="text" name="name" value="" pattern="[a-z A-Z]{1,26}"  placeholder="Name" title="maximum 26 letters only" required="required" />
                                        
                                         <input class="span7" type="text" name="phone" value="" placeholder="Phone number" pattern="[7-9]{1}\d{9}" required/>
                                         <input class="span7" type="text" name="state" value="" placeholder="State" pattern="[a-zA-Z]{1,26}" title="maximum 26 letters only" required/>
                                         <input class="span7" type="text" name="city" value="" placeholder="City" pattern="[a-zA-Z]{1,26}" title="maximum 26 letters only" required/>
                                         <input class="span7" type="text" name="village" value="" placeholder="Village" pattern="[a-zA-Z]{1,26}" title="maximum 26 letters only" required/>
                                        <input class="span7" type="password" name="pwd" value="" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
                                        <input class="span7" type="password" name="pwd1" value="" placeholder="Confirm Password" required/>
                                      <select  class="span7" name="desig" required>
                                        	<option value="vro">Village Revenue Officer</option>
                                        	<option value="sarpanch">Sarpanch</option>
                                        	<option value="mro">Mandal Revenue Officer</option>
                                        	<option value="mla">M.L.A.</option>
                                        	<option value="ias">I.A.S.</option>
                                        	<option value="admin">Admin</option>
                                        </select> 
                                        <div class="clear"></div>
                                        <input type="reset" class="btn dark_btn" value="Clear form" />
                                        <input type="submit" class="btn send_btn" value="Submit" />
                                        <br>
                                        <br>
                                        <p>
                                      
                                        </p>
                                        <div class="clear"></div>
                                    </form>
				</div>
				</div>
			</section>
		</div>
	</div>
</div>
<!--//page_container-->
<script>
    <%
    			try{
    				String msg = request.getParameter("msg");
    				if(msg.equals("qwerty")){
    					%>
    					alert("User account created Successfully!");
    					<%	
    				}
    				if(msg.equals("rfld")){
       					%>
        					alert("Unable to create user, please check the fields and retry again!");
       					<%	
        				}
    				if(msg.equals("dfld")){
       					%>
        					alert("Unable to delete user! User doesn't exists!");
       					<%	
        				}
    				if(msg.equals("dscs")){
       					%>
        					alert("User account deleted successfully!");
       					<%	
        				}
    				if(msg.equals("itemdeleted")){
       					%>
        					alert("Official deleted successfully");
       					<%	
        				}
    				if(msg.equals("notdeleted")){
       					%>
        					alert("Not deleted successfully!");
       					<%	
        				}
    				if(msg.equals("abc")){
       					%>
        					alert("Official deleted successfully");
       					<%	
        				}
    				if(msg.equals("pwdnot")){
       					%>
        					alert("Passwords not matched!");
       					<%	
        				}
    				if(msg.equals("notdeleted")){
       					%>
        					alert("Not deleted successfully!");
       					<%	
        				}
    				
    			}catch(Exception e){}
    %>
    </script>

<%@include file="footer.jsp"%>
