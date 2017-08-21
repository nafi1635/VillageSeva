<%@page import="dao.Dao"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<!--page_container-->
<div class="page_container">
	<div class="breadcrumb">
		<div class="wrap">
			<div class="container">
				<a href="index.jsp">Home</a><span>/</span>Contacts
			</div>
		</div>
	</div>
	
									
	<div class="wrap">
		<div class="container">
			<section>
				<div class="row">
				<div class="span1">&nbsp</div>
				<div class="span9">
					<h2 class="title" style="text-align:center">
							<span>Submitted Complaints/Information</span>
					</h2>

				<table class="span7" border="1">
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Subject</th>
					<th>Message</th>
					<th>Date</th>
					<th>Delete</th>
				</tr>
				<%
											
						//String email=(String)session.getAttribute("email");  
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost/vseva","root","root");
						String sql="select * from contacts";
						PreparedStatement ps=con.prepareStatement(sql);
						ResultSet rs1=ps.executeQuery();
						 		int i=0;
						    		int j=0;
								while(rs1.next())
						     		{	
									String name=rs1.getString(1);
						    			String email=rs1.getString(2);
						    			String subject=rs1.getString(3);
						    			String message=rs1.getString(4);
						    			String date=rs1.getString(5);
									     		
						%>
					<tr>
						<td style="text-align:center"><%=name %></td>
						<td><%=email %></td>
						<td><%=subject %></td>
						<td><%=message %></td>
						<td><%=date %></td>
						<td><a href="DeleteFeeback?gmail=<%=email%>&subject=<%=subject %>">Delete</a></td>
						
					</tr>
				<%
						   }
				%>
				</table>
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
    				if(msg.equals("rscs")){
    					%>
    					alert("Response Uploaded Successfully!");
    					<%	
    				}
    				if(msg.equals("rfld")){
   					%>
    					alert("Unable to upload response!");
   					<%	
    				}
    				if(msg.equals("itemdeleted")){
       					%>
        					alert("Feedback deleted successfully");
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
