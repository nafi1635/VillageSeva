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
				<div class="span2">&nbsp</div>
				<div class="span8">
				<%
				
				String cid=request.getParameter("cid");
				String desig=(String)session.getAttribute("desig");
				
			
					
				%>
					
					<%
					if(!desig.equals("vro")&&!desig.equals("admin"))
					{
					%>
					<h2 class="title" style="text-align:center">
							<span>Submit Action</span>
					</h2>
					<div style="background:#d1d1d1; text-align:center; border-radius:20px;padding:25px">
						<form action="ActionSubmit" method="post">
						<h1  style="text-align: left">Enter Response<input type="submit" class="btn send_btn" value="Submit" style="float:right"/></h1>
							<textarea class="span7" name="response" rows="6" placeholder="Contents of the response"></textarea>
							<input type="hidden" name="cid" value="<%=cid%>">
							<div class="clear"></div>
						</form>
					</div>
					<% 
					}	
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost/vseva","root","root");
					String sql="select * from complaint where cid='"+cid+"'";
					PreparedStatement ps=con.prepareStatement(sql);
					ResultSet rs1=ps.executeQuery();
					 		int i=0;
					    		int j=0;
							if(rs1.next())
					     		{	
								 String ccid=rs1.getString(1);
								 String email=rs1.getString(2);
					    			String title=rs1.getString(3);
					    			String details=rs1.getString(4);
					    			String date=rs1.getString(5);
					    			String action=rs1.getString(6);
					    			String actionposted=rs1.getString(7);
					%>
					<h2 class="title" style="text-align:center">
							<span>Detailed Report</span>
					</h2>
					
				<div style="background:#d1d1d1; margin-top:50px; border-radius:20px;padding:25px">
				
				<h1 class="title">Complaint Details : <%=title %></h1>
				<p style="font-size: 25px; font-style: italic; font-weight:bold; font-family:Calibri; line-height:.6in">
				Registered By :<%=email %>
				</p>
				<p style="font-size: 25px; font-style: italic; font-weight:bold; font-family:Calibri; line-height:.6in">
				On : <%=date %>
				</p> 
								</div>
				
					<div style="background:#d1d1d1; margin-top:50px; border-radius:20px;padding:25px">
						<p style="font-size: 25px; font-style: italic; font-weight:bold; font-family:Calibri; line-height:.6in">
						Response By :<%=actionposted %>
						</p>
						
						<p style="font-size: 25px; font-style: italic; font-weight:none; font-family:Calibri; line-height:.6in">
						<%=action %>
						</p>
					</div>
					
					<%
					    }
					%>
				
				
				
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
    				if(msg.equals("inserted")){
    					%>
    					alert("Complaint posted successfully");
    					<%	
    				}
    				if(msg.equals("nullvaluesentered")){
   					%>
    					alert("All fied required");
   					<%	
    				}
    				else if(msg.equals("notposted")){
       					%>
        					alert("Unable to register your complaint, please check the fields and retry again!");
       					<%	
        				}
    				else if(msg.equals("actioninserted")){
       					%>
        					alert("Action posted Succefully!");
       					<%	
        				}
    			}catch(Exception e){}
    %>
    </script>


<%@include file="footer.jsp"%>
