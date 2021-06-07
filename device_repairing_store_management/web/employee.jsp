<%-- 
    Document   : employee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.SendEmailClass"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/employee.css">
    
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
	      <li class="nav-item"><a class="nav-link" href="">Contact</a></li>
	      
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
                <div class="col-md-7 no-float pink all-center">
                        <div class="all-center">
                                <form name="myForm" action="employee.jsp" onsubmit="return validateForm()" method="post">
                                        <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                         <label for="">Employee Name<i class="text-danger"> *</i></label>
                                                    <input type="text" class="form-control" id="ename" name="ename"placeholder="Jon Doe" required="">
                                                 </div>
                                        <div class="col-md-4"></div>
                                </div>  

                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Employee Address<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="eaddress" name="eaddress" placeholder="Pune, Maharashtra">
                                        </div>
                                        <div class="col-md-4"></div>
                                </div>

                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Employee Contact<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="econtact" name="econtact" placeholder="99999-55555">
                                        </div>
                                        <div class="col-md-4"></div>
                                </div>
                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Employee Email<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="email" name="email" placeholder="sample@gmail.com">
                                        </div>
                                        <div class="col-md-4"></div>
                                </div>

                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Employee Salary<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="esalary" name="esalary" placeholder="">
                                        </div>
                                        <div class="col-md-4"></div>
                                </div>
                                <div class="form-group row">
                                        <div class="col-md-4"></div>
                                        <div class="col-md-4">
                                                <label>Employee Password<i class="text-danger"> *</i></label>
                                          <input type="text" class="form-control" id="epassword" name="epassword" placeholder="">
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
    
    String ename = request.getParameter("ename"); 
    String eaddress = request.getParameter("eaddress"); 
    String esalary = request.getParameter("esalary"); 
    String econtact = request.getParameter("econtact");
    String epassword = request.getParameter("epassword");
    String email = request.getParameter("email");
    
    Connection con;
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
    Statement st= con.createStatement(); 
    ResultSet rs; 
    int i=-1;
    if(esalary !=null && ename !=null && econtact !=null){
       // i=st.executeUpdate("insert into employee (ename,eaddress,esalary,econtact,current_job_count,epassword,eemail)values ('"+ename+"','"+eaddress+"','"+esalary+"','"+econtact+"','"+0+"','"+epassword+"','"+email+"')"); 
        rs=st.executeQuery("select insert_employee('"+ename+"','"+eaddress+"','"+esalary+"','"+econtact+"','"+epassword+"','"+email+"')"); 
       if(rs.next())
       {
           i= Integer.parseInt(rs.getString(1));
       }
       String email1 = email;

            SendEmailClass semail= new SendEmailClass();
            String message="Your account has been Registered!!";
            message = message+"\n";
            message = message+"\n------------------------------------\n";
            message = message+"Employee @handle - '"+ename+"'";
            message = message+"\n";
            message = message+"password -'"+epassword+"'";
            message = message+"\n";
            message = message+"Contact - '"+econtact+"'";
            message = message+"\n";
            message = message+"Salary Details - '"+esalary+"'";
            message = message+"\n------------------------------------\n";
            String mailSubject="Repair Workshop Credentials";
            semail.mail(email1, message, mailSubject);
            out.println("Successfully Registered!!!");
        if(i!=-1){
        out.println("Insertion Complete!!");
        response.sendRedirect("employeeshow.jsp");
        }
    }
    
    
%>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
    </body>
</html>
