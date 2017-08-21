<%@page import="dao.Dao"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<html>
<head>
<style>
table
{
table-layout:fixed;

}
.class1
{
table-layout:fixed;
width:200px''
}
</style>
</head>
<!--page_container-->
<div class="page_container">
	<div class="breadcrumb">
		<div class="wrap">
			<div class="container">
				<%
											
						String desig=(String)session.getAttribute("desig");
				
			%>
				<a href="index.jsp">Home</a><span>/</span> Hello <%=desig.toUpperCase()%>
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
					<th>Title</th>
					<th>Complaint</th>
					<th>Posted on</th>
					
					<th>Action</th>
					<th>Report</th>
					<th>Delete</th>
				</tr>
				<%
											
						String email=(String)session.getAttribute("email");  
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost/vseva","root","root");
						String sql="select * from complaint";
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
						<td><%=title %></td>
						<td ><%=details %></td>
						<td><%=date %></td>
						<td class="class1"><%=action %></td>
						<td><input type="button" value="Report" onclick="window.location.assign('complaint.jsp?cid=<%=cid%>')"></td>
					<td><input type="button" style="width:60px;" value="Delete" onclick="window.location.assign('DeleteComplaint?cid=<%=cid%>')"></td>
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
    				else if(msg.equals("rfld")){
   					%>
    					alert("Unable to upload response!");
   					<%	
    				}
    				else if(msg.equals("itemdeleted")){
       					%>
        					alert("Deleted successfully");
       					<%	
        				}
    				else if(msg.equals("notdeleted")){
       					%>
        					alert("Not deleted");
       					<%	
        				}
    				
    			}catch(Exception e){}
    %>
    </script>

<%@include file="footer.jsp"%>
