<%-- 
    Document   : admin
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
        <link rel="stylesheet" type="text/css" href="css/admin.css">
    
    </head>
    <style>
   /*
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
*/
/* 
    Created on : 19 Sep, 2018, 9:45:23 PM
    Author     : Mandar
*/

html,body,.container {
    height:100%;
    overflow-y: hidden;
    overflow-x: hidden;
 
}
.col-md-5 {
    padding-bottom: 100%;
    margin-bottom: -100%;
}
.container {
    height: 100%;
}

.row {
    height: 100vh;
}
.row .no-float {
  display: table-cell;
  float: none;
}
.bgimage{
    background-size: cover;
    background-position: center;
    background: url(https://images.unsplash.com/photo-1517754461499-9930e2b54957?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2e5cd00f78bb6a4c5f13a23ef1f0d257&auto=format&fit=crop&w=634&q=80);
    width: 90%;
    height: 90%;
}

.all-center{

    padding-top: 25%;
}
.split1 {
    height: 100%;
    width: 50%;
    position: fixed;
    z-index: 1;
    top: 0;
    overflow-x: hidden;
    padding-top: 20px;
}

h3 {
     font-family: 'Charmonman', cursive;
}
.left1 {
    left: 0;
    background-color: #111;
}

.right1 {
    right: 0;
    background-color: red;
}

.centered1 {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

hei1 {
    height: 100vh;
}

/* .centered img {
    width: 150px;
    border-radius: 50%;
}*/

hr.style18 { 
    height: 30px; 
    border-style: solid; 
    border-color: #8c8b8b; 
    border-width: 1px 0 0 0; 
    border-radius: 20px; 
  } 
hr.style18:before { 
    display: block; 
    content: ""; 
    height: 30px; 
    margin-top: -31px; 
    border-style: solid; 
    border-color: #8c8b8b; 
    border-width: 0 0 1px 0; 
    border-radius: 20px; 
  }
  
  
    </style>
    <body>
        <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>
        <%
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
            Statement st= con.createStatement(); 
            Statement st1= con.createStatement(); 
            Statement st2= con.createStatement(); 
            Statement st3= con.createStatement(); 
            ResultSet rs,rs_cname,rs_emp,rs_empname; 
            rs=st.executeQuery(" select count(distinct cid) from services_needed");
            int count=0;
            while(rs.next()){
                count = Integer.parseInt(rs.getString(1));
    //            out.println(count_repair);
            }
            //out.println("<br> count of distinct = "+count);
            rs=st.executeQuery("select distinct cid from services_needed"); //cid
            
            
            
            
        %>
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
           
                <div class="container">
                     <h2 class="text-primary">Progress Status</h2>
                <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">Customer_id</th>
                        <th scope="col">Customer_name</th>
                        <th scope="col">Employee_Assigned_ID</th>
                        <th scope="col">Employee_Assigned_Name</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                    <% while(rs.next()){
                    int cid = Integer.parseInt(rs.getString(1));
                   // rs_cname=st1.executeQuery("select cname from registered_customer where cid='"+cid+"' ");
                    rs_cname=st1.executeQuery("call cname_customer('"+cid+"')");
                    rs_emp = st2.executeQuery("select distinct empid,status from services_needed where cid='"+cid+"' ");
                        while(rs_cname.next()){
                          //  out.println("<br>inside while 2");  
                            String cname = rs_cname.getString(1);
                            while(rs_emp.next()){
                                int empid  = Integer.parseInt(rs_emp.getString(1));
                                int status_check  = Integer.parseInt(rs_emp.getString(2));
                                 String status;
                                if(status_check == 0){
                                    status ="In Progress";
                                }
                                else{
                                    status ="Completed";
                                }
                                rs_empname = st3.executeQuery("select ename from employee where empid='"+empid+"' ");
                                        while(rs_empname.next()){
                                            String empname = rs_empname.getString(1);
                            
                    %>
                    <tr>
                       <td><% out.println(cid); %></td>
                        <td><% out.println(cname); %></td>
                        <td><% out.println(empid); %></td>
                        <td><% out.println(empname); %></td>
                        <td><% out.println(status); %></td>
                    
                    </tr>
                    <%        
                                } //rs_empname
                                }//rs_emp
                            } //rs_name
                        } //rs 
                    %>
                    </tbody>
                </table>
            
                    <br>
                    <div class="container">    
                         <hr class="style18">
                    </div>
<!--                    <center>
                        <a href="repair.jsp"><button class="btn btn-primary">Repair Docs Insert</button></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
                        <a href="repairshow.jsp"><button class="btn btn-primary">Repair Docs Show</button></a><br><br><br> 
                        <a href="employee.jsp"><button class="btn btn-primary">Employee Registration</button></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                        <a href="employeeshow.jsp"><button class="btn btn-primary">Employee Records</button></a><br><br><br> 
                        <a href="sales.jsp"><button class="btn btn-primary">Sales</button></a><br><br><br> 
                    
                    </center>-->
                </div>
                </div>
                <div class="container">
                <div class='row'>    
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                              <h5 class="card-title">Repair Docs Insert</h5>
                              <p class="card-text"> Add/Remove Repair Records. Show all Repair docs.</p>
                              <a href="repairshow.jsp" class="btn btn-primary">Repair Docs</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                              <h5 class="card-title">Employee Registration</h5>
                              <p class="card-text">  Add/Remove employee records. Show all employee records.</p>
                              <a href="employeeshow.jsp" class="btn btn-primary">Employee Records</a>
                            </div>
                        </div>
                    </div>    
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                              <h5 class="card-title">Sales</h5>
                              <p class="card-text"> Show all sales records.</p>
                              <a href="sales.jsp" class="btn btn-primary">Sales</a>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        
                  
                    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
   
    </body>
</html>
