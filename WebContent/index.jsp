<%
if(session.getAttribute("email")==null)
{
%>
<%@include file="header1.jsp" %>     
    <!--page_container-->
    <div class="page_container">
        <!--slider-->
        <div id="main_slider">
            <div class="camera_wrap" id="camera_wrap_1">
               <div data-src="img/slider/sv5slate.jpg"></div>                                        
                <div data-src="img/slider/smart-village.jpg"></div>
                <div data-src="img/slider/sv2.jpg"></div>
                <div data-src="img/slider/sv3.jpg"></div>
                   <div data-src="img/slider/sv4.jpg"></div>  
                       <div data-src="img/slider/sv6.png"></div>                                                                                                   
            </div><!-- #camera_wrap_1 -->
            <div class="clear"></div>	
        </div>        
        <!--//slider-->
                       
        <!--planning-->
        
        <div class="wrap planning">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <a href="login.jsp">
                        	<span class="img_icon icon1"></span>
                            <span class="link_title">Login</span>
                        	Login Here
                        </a>
                    </div>
                    
                    <div class="span3">
                        <a href="login.jsp">
                        	<span class="img_icon icon2"></span>
                            <span class="link_title">Post complaint</span>
                        	VRO can post village problems
                        </a>
                    </div>
                    <div class="span3">
                        <a href="login.jsp">
                        	<span class="img_icon icon3"></span>
                            <span class="link_title">Action on complaint</span>
                        	Any higher officers other than vro can solve problems manually
                        </a>
                    </div>
                    <div class="span3">
                        <a href="contacts.jsp">
                        	<span class="img_icon icon4"></span>
                            <span class="link_title">Give Feedback</span>
                        	give complaints here
                        </a>
                    </div>                           	
                </div>
            </div>
        </div>
        <!--//planning-->
        
        <!--Welcome-->
        
    <!--//page_container-->
     <%@include file="footer.jsp" %>
     <%
}
else
{
	String desig=(String)session.getAttribute("desig");
	if(desig.equals("admin"))
		response.sendRedirect("users.jsp");
	else if(desig.equals("mro")||desig.equals("sarpanch")||desig.equals("mla")||desig.equals("ias"))
		response.sendRedirect("adminview.jsp");
	else
		response.sendRedirect("createcomplaint.jsp");
	
}
     
     %>
    <script>
    <%
    			try{
    				String msg = request.getParameter("msg");
    				if(msg.equals("loscs")){
    					%>
    					alert("Logged Out Successfully! ");
    					<%	
    				}
    				if(msg.equals("loginsuccess")){
    					%>
    					alert("Logged IN Successfully! ");
    					<%	
    				}
    			}catch(Exception e){}
    %>
    </script>
   
    
    
    
    
    
    