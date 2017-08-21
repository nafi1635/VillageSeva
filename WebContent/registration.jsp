<%@include file="header1.jsp" %>
         
    <!--page_container-->
    <div class="page_container">
    	<div class="breadcrumb">
        	<div class="wrap">
            	<div class="container">
                    <a href="index.jsp">Home</a><span>/</span>Registration
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
                        	<h2 class="title"><span>User Registration</span></h2>
                            <div class="contact_form">
                            	<div id="note"></div>
                                <div id="fields">
                                    <form action="RegisterServlet1" method="post" >
                                    	<input class="span7" type="text" name="name" value="" pattern="[a-z]{1,26}"  placeholder="Name" required="required" />
                                        <input class="span7" type="email" name="email" value="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" placeholder="Email id" required="required"/>
                                         <input class="span7" type="text" name="phone" value="" placeholder="Phone number"pattern="[7-9]{1}\d{9}"/>
                                         <input class="span7" type="text" name="state" value="Telangana" placeholder="State" />
                                         <input class="span7" type="text" name="city" pattern="[a-z]{1,26}" value="" placeholder="City" />
                                         <input class="span7" type="text" name="village" pattern="[a-z]{1,26}" value="" placeholder="Village" />
                                        <input class="span7" type="password" name="pwd" id=password value="" placeholder="Password" required="required" password="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  />
                                        <input class="span7" type="password" name="pwd1" id="confirm_password" value="" placeholder="Confirm Password" />
                                      <select  class="span7" name="desig">
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
                                        Not a User <a href="register.jsp">Click Here</a>
                                        </p>
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
    				if(msg.equals("notregistered")){
    					%>
    					alert("Not registerd");
    					<%	
    				}
    			}catch(Exception e){}
    %>
    </script>
  <%@include file="footer.jsp"%>