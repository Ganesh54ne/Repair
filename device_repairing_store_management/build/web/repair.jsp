<%-- 
    Document   : repair
    Created on : 19 Sep, 2018, 2:12:09 AM
    Author     : Mandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Repair</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/repair.css">
    </head>
    <body>
       <%@ page import ="java.sql.*" %>
       <%@ page import ="javax.sql.*" %>
        <nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
	  <div class="container">
	  	<a class="navbar-brand" href="index1.jsp"><i class="fas fa-bug"></i> RWMS</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="index1.jsp">Home <span class="sr-only"></span></a>
	      </li>
	      <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
	      <li class="nav-item"><a class="nav-link" href="adminemployee.jsp">Control</a></li>
	      
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	    	<%
                    String valid = (String)session.getAttribute("userid");
                    if(valid==null){  
                %>
	      	<li><a class="nav-link" href="reg1.jsp">Sign Up <i class="fa fa-user-plus"></i></a></li>
	    	<li><a class="nav-link" href="login1.jsp">Login <i class="fa fa-user"></i></a></li>
                <% }
                    else{ %>
                        <li><a class="nav-link" href="reg1.jsp"><% out.println(valid); %> <i class="fa fa-user"></i></a></li>
                        <li><a class="nav-link" href="logout.jsp">Logout <i class="fas fa-sign-out-alt"></i></a></li>
                <%
                    }
                %>
	    </ul>
	      
	  </div>
	  </div>
	</nav>
        
       
    <div class="">
        <div class="row">
                <div class="col-md-5 no-float pink bgimage"></div>
                <div class="col-md-7 no-float pink">
                        <div class="all-center">
                                <form name="myForm" action="repair.jsp" onsubmit="return validateForm()" method="post">
                                        <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                         <label for="">Repair Id<i class="text-danger"> *</i></label>
                                                    <input type="text" class="form-control" id="rid" name="rid"placeholder="12" required="">
                                                 </div>
                                        <div class="col-md-4"></div>
                                </div>  

                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Repair Name<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="rname" name="rname" placeholder="Screen Fix">
                                        </div>
                                        <div class="col-md-4"></div>
                                </div>

                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Repair Estimates<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="restimate" name="restimate" placeholder="45mins">
                                        </div>
                                        <div class="col-md-4"></div>
                                </div>

                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Repair Cost<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="rcost" name="rcost" placeholder="450">
                                        </div>
                                        <div class="col-md-4"></div>
                                </div>

                                <div class="row">		
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <center><button type="submit" class="btn btn-primary">submit</button>
                                                </center>
                                        </div>
                                </div>
                        </form>

                        </div>
                </div>
        </div>
    </div>
    
<%
    int flag =0;
    String rid1=request.getParameter("rid"); 
    int rid2 = 0;
    if(rid1 != null){
         rid2 = Integer.parseInt(rid1);
    }else
    {
         
    }
    String rname1=request.getParameter("rname"); 
    String restimate1=request.getParameter("restimate"); 
    String rcost1=request.getParameter("rcost"); 
    Connection con;
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
    Statement st= con.createStatement(); 
    ResultSet rs; 
    int i;
    if(rid2 !=0 && rname1 !=null && rcost1 !=null){
        i=st.executeUpdate("insert into repair_docs (rid,rname,restimate,rcost)values ('"+rid2+"','"+rname1+"','"+restimate1+"','"+rcost1+"')"); 
        if(i!=-1){
        out.println("Insertion Complete!!");
        response.sendRedirect("repairshow.jsp");
        }
    }
    
%>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
    </body>
</html>
