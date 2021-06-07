<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>regjsp</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/reg1.css">
    
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page import="controller.SendEmailClass"%>

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
	    	<!-- <li class="nav-item nav-right">
	        	<a class="nav-link" href="#">Sign Up</a>
	      	</li> -->
	      	<li><a class="nav-link" href="reg1.jsp">Sign Up <i class="fa fa-user-plus"></i></a></li>
	    	<li><a class="nav-link" href="login1.jsp">Login <i class="fa fa-user"></i></a></li>
	    </ul>
	      
	  </div>
	  </div>
	</nav>

<div class="">
    <div class="row">
            <div class="col-md-5 no-float pink bgimage"></div>
            <div class="col-md-7 no-float pink">
                    <div class="all-center">
                            <form name="myForm" action="reg1.jsp" onsubmit="return validateForm()" method="post">
                                    <div class="form-group row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                     <label for="">Name<i class="text-danger"> *</i></label>
                                                <input type="text" class="form-control" id="name" name="userid"placeholder="Jon Doe" required="">
                                             </div>
                                    <div class="col-md-4"></div>
                            </div>  

                            <div class="form-group row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                            <label>Email<i class="text-danger"> *</i></label>
                                      <input type="email" class="form-control" id="email" name="email" placeholder="sample@gmail.com">
                                    </div>
                                    <div class="col-md-4"></div>
                            </div>

                            <div class="form-group row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                            <label>Contact<i class="text-danger"> *</i></label>
                                      <input type="text" class="form-control" id="contact" name="contact" placeholder="9999955555">
                                    </div>
                                    <div class="col-md-4"></div>
                            </div>

                            <div class="form-group row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                            <label>Address<i class="text-danger"> *</i></label>
                                      <input type="text" class="form-control" id="address" name="address" placeholder="Pune, Maharashtra">
                                    </div>
                                    <div class="col-md-4"></div>
                            </div>
                            <div class="form-group row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                     <label for="exampleInputPassword1">Password<i class="text-danger"> *</i></label>
                                                <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password" required="">
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
    String user=request.getParameter("userid"); 
    // out.println("!!!"+user); 
    session.putValue("userid",user); 
    
    String pwd=request.getParameter("pwd"); 
    String address=request.getParameter("address"); 
    String contact=request.getParameter("contact"); 
    String email=request.getParameter("email"); 
    Connection con;
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
    Statement st= con.createStatement(); 
    ResultSet rs,rs111; 
    int i;
    if(pwd != null && user!=null && email !=null){
       // i=st.executeUpdate("insert into registered_customer (cname,password,email,caddress,ccontact,streak)values ('"+user+"','"+pwd+"','"+email+"','"+address+"','"+contact+"','"+0+"')"); 
        rs111=st.executeQuery("select insert_customer('"+user+"','"+pwd+"','"+email+"','"+address+"','"+contact+"')"); 
        
       String email1 = email;

            SendEmailClass semail= new SendEmailClass();
                String message ="<body style='background: #36d1dc;background: -webkit-linear-gradient(to right, #36d1dc, #5b86e5);background: linear-gradient(to right, #36d1dc, #5b86e5);'> ";
                message = message+"<link rel='stylesheet' type='text/css' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css'>";
                message= message+"<h1> Your account has been Registered!! </h1>";
                message = message+"\n";
                message = message+"<h2> user id='"+user+"' </h2>";
                message = message+"\n <h2> password= '"+pwd+"' </h2>";
                message = message+"\n";
                message = message+"\n <h2> Contact='"+contact+"' </h2>";

                String mailSubject="Repair Workshop Credentials";
                semail.mail(email1, message, mailSubject);
                out.println("Successfully Registered!!!");
    }
    //deviceid code
    rs =st.executeQuery("select cid from registered_customer where cname='"+user+"' ");
    int cidtemp=0; 
    if(user!=null){
        if(rs.next())
        { 
            cidtemp = rs.getInt(1);
            out.println(cidtemp);
            cidtemp =cidtemp+1000;
            i=st.executeUpdate("update registered_customer set deviceid='"+cidtemp+"' where cname='"+user+"' "); 

        }
    }
    
    if(user!=null)
    {
        response.sendRedirect("login1.jsp");
        //out.println("Registration complete!!!!"); 
    }

%>
<script>
	
var password = document.getElementById("pwd");
  var passStatus=null;

var name = document.getElementById("name");
var contact = document.getElementById("contact");

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;


function contactValidate(){
    var contact = document.getElementById("contact").value;
    if(contact.length !==10){
        alert("contact should  be of 10 length");
        console.log("con ",contact);
        
        console.log("len ",contact.length);
        return false;
    }
}



function validateForm() {
    var name = nameValidate();
    var contact = contactValidate();
    var email = emailValidate();
	console.log(name);
	console.log(email);
	if(name === false ){
		document.forms["myForm"]["name"].value = null;
		return false;
	}
	if(email === false){
		//document.forms["myForm"]["email"].value = null;
	 return false;
	}
	if(passStatus === false){
		
	 return false;
	}
	if(contact === false ){
		document.forms["myForm"]["contact"].value = null;
		return false;
	}

	return true;
}

function nameValidate(){
	var x = document.forms["myForm"]["name"].value;
    if (x == "" || x == null) {
        alert("Name must be filled out");
    	return false;
	}
	else{
		return true;
	}
}

function emailValidate(){
	var email = document.forms["myForm"]["email"].value;
	var emailhelp = document.getElementById("emailHelp");
	at = email.indexOf("@");
    dot = email.lastIndexOf(".");
    if(at < 0){
    	alert("Email should contain @");
    	//email.setCustomValidity("Email should contain @");
		return false;
	}
	if(dot < 0){
		alert("Email should contain dot (.) ");
		//email.setCustomValidity("Email should contain (.)");
		return false;
	}
	console.log(" @ ",at);
	console.log(" . ",dot);
    if(at < 1 || (dot - at < 3)){
    	alert("Invalid email!! Email should have more than two letters after '@'");
		return false;

	}
	return true;
}

</script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
</body>
</html>