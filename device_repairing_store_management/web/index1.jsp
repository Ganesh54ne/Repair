<%-- 
    Document   : index1
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
        <link rel="stylesheet" type="text/css" href="css/index1.css">
    </head> 
    <body>
        <nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
	  <div class="container">
	  	<a class="navbar-brand" href="#"><i class="fas fa-bug"></i> RWMS</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
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
        
        <!--///-->
        <!--session cheching-->
         <%
    
            //check session for already logged in user
        if (session.getAttribute("userid") == null){
          %>
<!--          <a href="login1.jsp" id="loginButton"> Login111</a>-->
          <%
        }else{
            //String userid=request.getParameter("usr"); 
          //user=session.getValue("userid").toString();
          %>
            <p>you are already logged in 
            </p>
            
          <%
            }
          %>
        
        
        <%
          if (session.getAttribute("userid") != null){
         %>
           <a href="javascript:void(0);" onclick="logout()">Logout</a>
          <%
        }else{
          //user=session.getValue("userid").toString();
            }   
          %>
          
          
         <div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div id="content">
					<h1>Repair Workshop Management System</h1>
					<h3></h3>
					<hr>
                                        <p><center>
                                        <a href="reg1.jsp"><button class="btn btn-dark btn-lg"><i class="fas fa-user-plus"></i> Sign Up</button></a>
                                        &emsp;&emsp;&emsp;&emsp;
                                        <a href="login1.jsp"><button class="btn btn-dark btn-lg"><i class="fas fa-user"></i> Login</button></a>
                                        </center>
                                        </p>
                                </div>		
			</div>
		</div>
	</div>
            
            
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>

<script>
function logout(){
  <%
  //response.sendRedirect("login.jsp");
  %>
    window.location="logout.jsp";
  //document.location.reload();
}
</script>
</html>


