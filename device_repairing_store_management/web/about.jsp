<%-- 
    Document   : about
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
<body class="content">

	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
	  <div class="container">
	  	<a class="navbar-brand" href="#"><i class="fas fa-bug"></i> RWMS</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="index1.jsp">Home <span class="sr-only">(current)</span></a>
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
<div class="" style="padding-top: 2%;">
<div class="card-group container" style="color: black;">
  <div class="card">
    <img class="card-img-top" src="images/developer.png" height="370" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Mandar Bhosale</h5>
      <p class="card-text">Mail: mandarbhosale02@gmail.com<br>Phone: 8787878787</p>
      <p class="card-text"><small class="text-muted">Developer</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/developer.png" height="370" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Jay Thombre </h5>
      <p class="card-text">Mail: jay.thombre1997@gmail.com<br>Phone: 9999999999</p>
      <p class="card-text"><small class="text-muted">Developer</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/developer.png" height="370" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Vaibhav Mulaje</h5>
      <p class="card-text">Mail: vaibhavmulaje@gmail.com<br>Phone: 787656767</p>
      <p class="card-text"><small class="text-muted">Developer</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="images/developer.png" height="370" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Mihir Nevpurkar</h5>
      <p class="card-text">Mail: mihirnevpurkarmn@gmail.com<br>Phone: 8765454112</p>
      <p class="card-text"><small class="text-muted">Developer</small></p>
    </div>
  </div>
</div>
</div>
</body>
</html>