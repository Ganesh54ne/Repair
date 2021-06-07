<%-- 
    Document   : repairshow
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
        <style>
            .hr-danger{
                     background-image: -webkit-linear-gradient(left, rgba(244,67,54,.8), rgba(244,67,54,.6), rgba(0,0,0,0));
            }
        </style>
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
        
    <%
        Connection con;
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
        Statement st= con.createStatement(); 
        ResultSet rs; 
        rs=st.executeQuery("select count(rid) from repair_docs");
        int count_repair=0;
        while(rs.next()){
            count_repair = Integer.parseInt(rs.getString(1));
//            out.println(count_repair);
        }
        rs=st.executeQuery("call all_repair()");
        %>
        <div class="container">
        <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">Rid</th>
                <th scope="col">Rname</th>
                <th scope="col">Restimate</th>
                <th scope="col">Rcost</th>
              </tr>
            </thead>
            <tbody>
            <% while(rs.next()){
            String rid = rs.getString(1);
            String rname = rs.getString(2);
            String restimate = rs.getString(3);
            String rcost = rs.getString(4);
            %>
            <tr>
               <td><% out.println(rid); %></td>
                <td><% out.println(rname); %></td>
                <td><% out.println(restimate); %></td>
                <td><% out.println(rcost); %></td>
                
            </tr>
            <%
                } %>
            </tbody>
        </table>
        </div>
    <center>
        <div class="container">
            <a href="repair.jsp"><button type="submit" class="btn btn-success">Add Repair Docs</button></a>
            <hr class="hr-danger">
            <form action="repairshow.jsp" method="post">    
            <div class="form-group col">
                <div class="row">
                    <div class=""></div>
                    <div class="col-4">
                    <!--<label>Add More Docs</label><i class=""> </i>-->
                    <!--<a href="repair.jsp"><button type="submit" class="btn btn-success">Add Repair Docs</button></a>-->
                    </div>
                </div>
            </div>
            <div class="form-group col">
                <div class="">
                    <div class="col-xs-2"></div>
                    <div class="col-4">
                    <label>Delete Repair Doc</label><i class=""> </i>
                    
                    <input type="text" class="form-control" placeholder="Rid 1" name="rid_del">
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
            String rid_del=request.getParameter("rid_del");
            if(rid_del!=null){
             int i=st.executeUpdate("delete from repair_docs where rid='"+rid_del+"'"); 
            response.sendRedirect("repairshow.jsp");
            }
         %>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
    </body>
</html>
