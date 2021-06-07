<%-- 
    Document   : sales
    Created on : 18 Oct, 2018, 5:30:14 PM
    Author     : Mandar
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.Format"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>
        <%@ page import ="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/sales.css">
    </head>
    <body>
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
       
        <%
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
            Statement st= con.createStatement(); 
            Statement st2= con.createStatement(); 
            Statement st3= con.createStatement(); 
            
            ResultSet rs,rs2,rs3;
            
            String cid, date1,total_sales, cname;
            
            %>
            <br>
            <div class="container">
            <h2 class="text-primary">Sales</h2>
                <div class="">
                <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">Customer_id</th>
                        <th scope="col">Customer_name</th>
                        <th scope="col">Date</th>
                        <th scope="col">Sales</th>
                      </tr>
                    </thead>
                    <tbody>
            <%            
            //rs=st.executeQuery(" select * from sales");
            rs=st.executeQuery("call all_sales()");
            
            while(rs.next()){
                cid=rs.getString(1);
                date1=rs.getString(2);
                total_sales=rs.getString(3);
               // rs2=st2.executeQuery(" select cname from registered_customer where cid='"+cid+"'");
                rs2=st2.executeQuery("call cname_customer('"+cid+"') ");
                while(rs2.next()){
                    cname=rs2.getString(1);
                
            %>
                <tr>
                    <td><% out.println(cid); %></td>
                    <td><% out.println(cname); %></td>
                    <td><% out.println(date1); %></td>
                    <td><% out.println(total_sales); %></td>

                </tr>
            
            <%
            
            }
        }
    %>
                </tbody>
            </table>
                <br>
                
    <%
    %>
    <div class="container">
        <form class="form-inline" name="myForm" action="sales.jsp" onsubmit="" method="POST">
          <label class="sr-only" for="date">Date</label>
          <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
              <div class="input-group-text">YYYY-MM-DD</div>
            </div>
            <input type="text" class="form-control" id="date" name="date" placeholder="2018-10-02">
          </div>
          <button type="submit" class="btn btn-primary mb-2">Get Sales</button>
        </form>
    </div>
    <br>
    <%
        String date2=request.getParameter("date");
        int add_sales=0, sales_count=0;
        int sale=0;
        if(date2 != null){
            //rs3=st3.executeQuery(" select total_sales from sales where date1='"+date2+"' ");
            rs3=st3.executeQuery(" call totalsales_date_sales('"+date2+"') ");
            while(rs3.next()){
                sales_count++;
                sale = Integer.parseInt(rs3.getString(1));
                add_sales = add_sales+ sale;
             }
        }
       
        if(date2 != null){
            
        %>
        <div class="container">
            <hr class="style18">
        </div>
        <div class="container">
            <h2 class="text-primary">Sales on <% out.println(date2); %></h2>
                <div class="">
                <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">Sales count</th>
                        <th scope="col">Date</th>
                        <th scope="col">Total Sales</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><% out.println(sales_count); %></td>
                        <td><% out.println(date2); %></td>
                        <td><% out.println(add_sales); %></td>
                      </tr>
                    </tbody>
                </table>
                </div>
        </div>
        <%
        }
           
     %>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
   
    </body>
</html>
