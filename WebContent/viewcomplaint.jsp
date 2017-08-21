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
				<a href="index.jsp">Home</a><span>/</span>Hello <%=desig%>
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
					<th>Sr. No.</th>
					<th>Complaint/Information ID</th>
					<th>Date</th>
					
					<th>Action</th>
					<th>click to view</th>
				</tr>
				<%
											
						String email=(String)session.getAttribute("email");  
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost/vseva","root","root");
						String sql="select * from complaint where email='"+email+"'";
						PreparedStatement ps=con.prepareStatement(sql);
						ResultSet rs1=ps.executeQuery();
						 		int i=0;
						    		int j=0;
								while(rs1.next())
						     		{	
									String cid=rs1.getString(1);
						    			String title=rs1.getString(3);
						    			String details=rs1.getString(4);
						    			String date=rs1.getString(5);
						    			String action=rs1.getString(6);
									     		
						%>
					<tr>
						<td style="text-align:center"><%=title %></td>
						<td><%=details %></td>
						<td><%=date %></td>
						<td><%=action %></td>
						<td><input type="button" value="View Detailed Report" onclick="window.location.assign('complaint.jsp?cid=<%=cid%>')"></td>
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
    			}catch(Exception e){}
    %>
    </script>

<%@include file="footer.jsp"%>
