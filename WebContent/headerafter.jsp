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
                        	<div class="follow_us">
                                <ul>
                                    <li><a href="#" class="facebook">Facebook</a></li>
                                    <li><a href="#" class="vimeo">Vimeo</a></li>
                                    <li><a href="#" class="tumbrl">Tumbrl</a></li>
                                    <li><a href="#" class="twitter">Twitter</a></li>
                                    <li><a href="#" class="delicious">Delicious</a></li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                            <nav id="main_menu">
                                <div class="menu_wrap">
                                    <ul class="nav sf-menu">
                                      <li><a href="index.jsp">Home</a></li>
                                    <%--   <%
                                      try{ 
                                    	  User u1=(User)session.getAttribute("user");
                                    	  String Designation=u1.getDesignation();
                                    	  if(Designation.equals("vro")){
                                    		  --
                                    		  <li><a href="createcomplaint.jsp">create complaint</a></li>
                                    		  <li><a href="viewcomplaint.jsp">view complaint</a></li>
                                    		  <%
                                    	  } else if(Designation.equals("sarpanch")){
                                        		  %>
                                        		  <li><a href="viewcomplaint.jsp">view complaint</a></li>
                                        		  <% 
                                        	  } else if(Designation.equals("mla")){
                                    		  
                                    		  %>
                                    		  <li><a href="viewcomplaint.jsp">view complaint</a></li>
                                    		  
                                    	  
                                    		  <%
                                    	  } else if(Designation.equals("mro")){
                                    		  
                                    		  %>
                                    	  <li><a href="viewcomplaint.jsp">view complaint</a></li>
                                    		  
                                    	  <%
                                    	  } else if(Designation.equals("admin")){
                                    		  
                                    		  %>
                                    	  <li><a href="users.jsp">Manage User</a></li>
                                    	    <li><a href="viewcomplaint.jsp">view complaint</a></li>
                                    	  <%
                                    	  } else{
                                    		  %>
                                    		  <li><a href="viewcomplaint.jsp">view complaint</a></li>
                                    	  <%
                 	                                 	  }
                                    	%><li><a href="logout.jsp">Logout</a></li><%  
                                      }catch(Exception e){
										%>
										 <li><a href="login.jsp">Login</a></li>
                                    	<%
                                      }
                                      %> --%>
                                      <li><a href="about.jsp">About</a></li>
                                      <li class="sub-menu"><a href="javascript:{}">Features</a>
                                          <ul>
                                              <li><a href="scaffolding.jsp"><span>-</span>Scaffolding</a></li>
                                              <li><a href="typography.jsp"><span>-</span>Typography</a></li>
                                              <li><a href="shortcodes.jsp"><span>-</span>Shortcodes</a></li>
                                              <li><a href="tables.jsp"><span>-</span>Tables</a></li>                                          
                                          </ul>                                          
                                      </li>     
                                      <li><a href="contacts.jsp">Contacts</a></li>
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