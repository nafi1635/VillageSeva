<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<title>V-Seva |Your Problem Our Solution</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" id="camera-css"  href="css/camera.css" type="text/css" media="all">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/skins/tango/skin.css" />
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->    
</head>
<script type="text/javascript" src="js/email.js"></script>
<body>
	<!--header-->
    <div class="header">
    	<div class="wrap">
        	<div class="navbar navbar_ clearfix">
            	<div class="container">
                    <div class="row">
                        <div class="span4">
                        	<div class="logo"><a href="index.jsp"><img src="img/logo.png" alt="" /></a></div>                        
                        </div>
                        <div class="span8">
                        	
                            <div class="clear"></div>
                            <nav id="main_menu">
                                <div class="menu_wrap">
                                    <ul class="nav sf-menu">
                                      <li><a href="index.jsp">Home</a></li>
                                    <%
                                      try{ 
                                    	  String email=(String)session.getAttribute("email");
                                    	  String Designation=(String)session.getAttribute("desig");
                                    	
                                    	  if(Designation.equals("vro"))
                                    	  {
                                    		 %> 
                                    		  <li><a href="createcomplaint.jsp">create complaint</a></li>
                                    		  <li><a href="viewcomplaint.jsp">view complaint</a></li>
                                    		  <%	  	  
                                    	  } 
                                    	  else if(Designation.equals("sarpanch")){
                                        		  %>
                                        		  <li><a href="adminview.jsp">view complaint</a></li>
                                        		  <% 
                                        	  } 
                                    	  else if(Designation.equals("mla")){
                                    		  
                                    		  %>
                                    		  <li><a href="adminview.jsp">view complaint</a></li>
                                    		  
                                    	  
                                    		  <%
                                    	 	 } 
                                    	  else if(Designation.equals("mro")){
                                    		  
                                    		  %>
                                    	  <li><a href="adminview.jsp">view complaint</a></li>
                                    		 
                                    	  <%
                                    	  } 
                                    	  else if(Designation.equals("admin")){
                                    		  
                                    		  %>
                                    	  <li><a href="users.jsp">Manage User</a></li>
                                    	    <li><a href="adminview.jsp">view complaint</a></li>
                                    	     <li><a href="feedback.jsp">Feedbacks</a></li>
                                    	  <%
                                    	  } 
                                    	  else{
                                    		  %>
                                    		  <li><a href="adminview.jsp">view complaint</a></li>
                                    		   
                                      
                                    	  <%
                 	                                 	  }
                                    	%><li><a href="logout.jsp">Logout</a></li><%  
                                      }catch(Exception e)
                                      {
										%>
										 <li><a href="login.jsp">Login</a></li>
										 <li><a href="about.jsp">About us</a></li>
                                      <li><a href="contacts.jsp">Contact us</a></li>
                                    	<%
                                      }
                                    
                                      %>
                                     
                                    </ul>
                                </div>
                             </nav>                            
                        </div>
                    </div>                
                </div>
             </div>
        </div>    
    </div>
    <!--//header-->