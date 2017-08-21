<%@include file="header1.jsp" %>
         
    <!--page_container-->
    <div class="page_container">
    	<div class="breadcrumb">
        	<div class="wrap">
            	<div class="container">
                    <a href="index.jsp">Home</a><span>/</span>Login
                </div>
            </div>
        </div>
    	<div class="wrap">
        	<div class="container">
                <section>
                	<div class="row">
                    	<div class="span4">
                        </div>
                    	<div class="span8">
                        	<h2 class="title"><span>User Login</span></h2>
                            <div class="contact_form">
                            	<div id="note"></div>
                                <div id="fields">
                                    <form id="ajax-contact-form" action="LoginServlet" method="post">
                                        <input class="span7" type="email" name="email" value="" placeholder="User ID /E-mail ID" required/>
                                        <input class="span7" type="password" name="password" value="" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required/>
                                        <select  class="span7" name="desig" >
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
    				if(msg.equals("qwerty")){
    					%>
    					alert("Registration successfull ");
    					<%	
    				}
    				if(msg.equals("nullvalues")){
    					%>
    					alert("Null values");
    					<%	
    				}
    				if(msg.equals("nouser")){
    					%>
    					alert("Not registered number");
    					<%	
    				}
    			}catch(Exception e){}
    %>
    </script>
  <%@include file="footer.jsp"%>