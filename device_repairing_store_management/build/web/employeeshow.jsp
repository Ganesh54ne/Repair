<%-- 
    Document   : employeeshow
    Created on : 19 Sep, 2018, 9:27:16 PM
    Author     : Mandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="">
    
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
	      <li class="nav-item"><a class="nav-link" href="">About</a></li>
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
        
    <%
        Connection con;
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
        Statement st= con.createStatement(); 
        ResultSet rs; 
        rs=st.executeQuery("select count(empid) from employee");
        int count=0;
        while(rs.next()){
            count = Integer.parseInt(rs.getString(1));
//            out.println(count_repair);
        }
        rs=st.executeQuery("call all_employee()");
        %>
        <div class="container">
        <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">Contact</th>
                <th scope="col">Salary</th>
              </tr>
            </thead>
            <tbody>
            <% while(rs.next()){
            String empid = rs.getString(1);
            String ename = rs.getString(2);
            String eaddress = rs.getString(3);
            String econtact = rs.getString(4);
            String esalary = rs.getString(5);
            %>
            <tr>
               <td><% out.println(empid); %></td>
                <td><% out.println(ename); %></td>
                <td><% out.println(eaddress); %></td>
                <td><% out.println(econtact); %></td>
                <td><% out.println(esalary); %></td>    
            </tr>
            <%
                } %>
            </tbody>
        </table>
        </div>
    <center>
        <div class="container">
            <a href="employee.jsp"><button type="submit" class="btn btn-success">Add Employee Records</button></a>
            <hr>
            <form action="employeeshow.jsp" method="post">    
            <div class="form-group col">
                <div class="">
                    <div class="col-xs-2"></div>
                    <div class="col-4">
                    <label>Delete Employee Records</label><i class=""> </i>
                    
                    <input type="text" class="form-control" placeholder="Emp id" name="empid_del">
                    </div>
                </div>
            </div>
            <div class="form-group col">    
                <div class="">
                    <center><button type="submit" class="btn btn-danger">Delete</button>
                    </center>
                </div>
            </div>
            </form>
            </div>
    </center>    
        <%
            String empid_del=request.getParameter("empid_del");
            if(empid_del!=null){
             int i=st.executeUpdate("delete from employee where empid='"+empid_del+"'"); 
            response.sendRedirect("employeeshow.jsp");
            }
         %>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
    </body>
</html>
