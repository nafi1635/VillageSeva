<%@page import="java.util.Vector"%>

<%@include file="header1.jsp"%>

<!--page_container-->
<div class="page_container">
	<div class="breadcrumb">
		<div class="wrap">
			<div class="container">
				<a href="index.jsp">Home</a><span>/</span>
				<%
											
						String desig=(String)session.getAttribute("desig");
			%>
				<a href="index.jsp">Home</a><span>/</span> Hello <%=desig%>
			</div>
		</div>
	</div>
	<div class="wrap">
		<div class="container">
			<section>
				<div class="row">
				<div class="span3">
					&nbsp;
				</div>
				<div class="span6">
					<form id="ajax-contact-form" action="CreateComplaint" method="post" onsubmit="return validateRegister();">
					<h2 class="title" style="text-align:center">
							<span>Create Complaint/Information</span>
						</h2>
						<input class="span6" type="text" name="title" value="" placeholder="Title of Complaint/Information (required)" /> 
						<textarea class="span6" name="details" placeholder="Contents of the Complaint/Information"></textarea>
						<div class="clear"></div>
						<input type="reset" class="btn dark_btn" value="Clear form" />
						<input type="submit" class="btn send_btn" value="Submit" />
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
    				if(msg.equals("notposted")){
       					%>
        					alert("Unable to register your complaint, please check the fields and retry again!");
       					<%	
        				}
    			}catch(Exception e){}
    %>
    </script>

<%@include file="footer.jsp"%>
