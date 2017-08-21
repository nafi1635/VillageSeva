<%@include file="header1.jsp" %>
         
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
                    	
                    	<div class="span8">
                        	<h2 class="title"><span>Get In Touch</span></h2>
                            <div class="contact_form">  
                            	<div id="note"></div>
                                <div id="fields">
                                    <form id="ajax-contact-form" action="ContactServlet" method="post">
                                        <input class="span7" type="text" name="name" value="" placeholder="Name (required)" />
                                        <input class="span7" type="text" name="email" value="" placeholder="Email (required)" />
                                        <input class="span7" type="text" name="subject" value="" placeholder="Subject" />
                                        <textarea name="message" id="message" class="span8" placeholder="Message"></textarea>
                                        <div class="clear"></div>
                                        <input type="reset" class="btn dark_btn" value="Clear form" />
                                        <input type="submit" class="btn send_btn" value="Submit" />
                                        <div class="clear"></div>
                                    </form>
                                </div>
                            </div>                   
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
    					alert("Feedback posted successfully");
    					<%	
    				}
    				if(msg.equals("nullvaluesentered")){
   					%>
    					alert("All fied required");
   					<%	
    				}
    				if(msg.equals("notposted")){
       					%>
        					alert("Unable to register your feedback, please check the fields and retry again!");
       					<%	
        				}
    				if(msg.equals("actioninserted")){
       					%>
        					alert("Action posted Succefully!");
       					<%	
        				}
    			}catch(Exception e){}
    %>
    </script>
    
  <%@include file="footer.jsp"%>