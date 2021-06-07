<%-- 
    Document   : employee_dashboard
--%>
      <%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
        <%@page import="controller.SendEmailClass"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--boot-->
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/employee_dashboard.css">
        
    </head>
 
    <body class="">
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
       
        <%
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
            String ses_user = (String)session.getAttribute("userid");
            Statement st= con.createStatement(); 
            Statement st1= con.createStatement(); 
            Statement st2= con.createStatement(); 
            Statement st3= con.createStatement(); 
            Statement st31= con.createStatement(); 
            Statement st32= con.createStatement(); 
            Statement st33= con.createStatement(); 
            Statement st34= con.createStatement(); 
            Statement st35= con.createStatement(); 
            Statement st36= con.createStatement(); 
            Statement st40= con.createStatement(); 
            Statement st41= con.createStatement(); 
            
            ResultSet rs,rs1,rs2,rs3,rs31,rs34,rs35,rs36, rs40, rs41; 
            int i,i2,i7,i32,i33,i36, i40;
            String[] delete1;
            int emp_id=0, current_jobs;
            int cid_assigned=0;
            int rid_assigned;
            String rname_assigned;
            int streak1=-1;
                            
            %>
            <br>
            <div class="container">
                    <table class="table table-striped table-light">
                        <thead class="">
                          <tr class="">
                            <th scope="col">Emp ID</th>
                            <th scope="col">Employee Name</th>
                            <th scope="col">Current Assigned Jobs</th>
                          </tr>
                        </thead>
                        <tbody>
            <%
            rs=st.executeQuery("select empid,ename,current_job_count from employee where ename='"+ses_user+"' ");
            while(rs.next()){
                emp_id = Integer.parseInt(rs.getString(1));            
                String emp_name = rs.getString(2);
                current_jobs = Integer.parseInt(rs.getString(3));
            %>
            <tr>
                           <td><% out.println(emp_id); %></td>
                           <td><% out.println(emp_name); %></td>
                           <td><% out.println(current_jobs); %></td>
            </tr>
            
            <%
            }
        %>
                        </tbody>
                 </table>
            </div>
                        <br>
                        
        <div class="container">
            <hr class="style18">
        </div>
        
        <div class="container">
            <h2>
                Customer Requests
            </h2>
        </div>
                        
             <div class="container">
                 <form name="myForm" action="employee_dashboard.jsp" onsubmit="" method="POST">
                    <table class="table table-striped table-light">
                        <thead class="">
                          <tr class="">
                            <th scope="col">Customer ID</th>
                            <th scope="col">Repair ID</th>
                            <th scope="col">Repair Name</th>
                            <th scope="col">Select Completed</th>
                          </tr>
                        </thead>
                        <tbody>
            <%                
            rs1=st1.executeQuery("select distinct cid,rid from services_needed where empid='"+emp_id+"' ");
            while(rs1.next()){
                cid_assigned = Integer.parseInt(rs1.getString(1));
                rid_assigned = Integer.parseInt(rs1.getString(2));
                
                rs2=st2.executeQuery("select rname from repair_docs where rid='"+rid_assigned+"' ");
                while(rs2.next()){
                    rname_assigned = rs2.getString(1);
               %>
                        <tr>
                           <td><% out.println(cid_assigned); %></td>
                           <td><% out.println(rid_assigned); %></td>
                           <td><% out.println(rname_assigned); %></td>
                           <td><input type="checkbox" name="delete1" value="<% out.print(rid_assigned); %>"></input></td>
                        </tr>
                    
                    
                    
                <%    
                    
                }
            }
            %>
               </tbody>
                <tfoot class="">
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class=""><button class="btn btn-danger" type="submit">Confirm Completed</button></td>
                    </tr>
                </tfoot> 
                </table>
            
            </form>
            </div>   
             
            
            
                  <%
            
                    delete1 = request.getParameterValues("delete1");
                    //out.println("<br> delete1 = "+delete1);
                    if (delete1 != null) 
                    {
                       for (int i1 = 0; i1 < delete1.length; i1++) 
                       {
                          out.println("<b>"+delete1[i1]+"<b>");
                          i2=st3.executeUpdate("delete from services_needed where cid='"+cid_assigned+"' and empid='"+emp_id+"' and rid='"+delete1[i1]+"' "); 
                          //response.sendRedirect("employee_dashboard.jsp");
                       }
                       rs31=st31.executeQuery("select * from services_needed where cid='"+cid_assigned+"'  "); 
                          if(!rs31.next())
                          {
                            i32=st32.executeUpdate("update registered_customer set estimated_wait=0 where cid='"+cid_assigned+"'  "); 
                            i33=st33.executeUpdate("update employee set current_job_count=current_job_count-1 where empid='"+emp_id+"'  "); 
                            
                            rs34=st34.executeQuery("select email,cname,estimated_cost,deviceid from registered_customer where cid='"+cid_assigned+"'  "); 
                            rs35=st35.executeQuery("select now()"); 
                            String date="";
                            if(rs35.next()){
                                date =rs35.getString(1);
                            }
                            if(rs34.next()){
                            String email1,name1,deviceid1;
                            int        estimated_cost1;
                                
                            email1 = rs34.getString(1);
                            name1 = rs34.getString(2);
                            deviceid1 = rs34.getString(4);
                            estimated_cost1 = Integer.parseInt(rs34.getString(3));
                            
                            
                            
                            
                            
                            rs36=st35.executeQuery("select streak from registered_customer where cid='"+cid_assigned+"' "); 
                            if(rs36.next()){
                                streak1 = Integer.parseInt(rs36.getString(1));
                            }
                            if(streak1<3 && streak1 >=0  ){
                                i36=st36.executeUpdate("update registered_customer set streak=streak+1 where cid='"+cid_assigned+"'  "); 
                                out.println("<br> insid <3 >0");
                            }
                            else if(streak1 == 3){
                                i36=st36.executeUpdate("update registered_customer set streak=0 where cid='"+cid_assigned+"'  "); 
                                out.println("<br> steak 0");
                                estimated_cost1 = estimated_cost1 - 100;
                            }
                            
                            
                            SendEmailClass semail= new SendEmailClass();
                            String message="<body style='background: #36d1dc;background: -webkit-linear-gradient(to right, #36d1dc, #5b86e5);background: linear-gradient(to right, #36d1dc, #5b86e5);'> ";
                
                            
                            message = message+"\n";
                            message = message+" <h2> \n ------------------------------------\n </h2>";
                            message = message+" <h2> \n Date - "+date+" </h2> ";
                            message = message+"\n";
                            message = message+" <h2> \n Hello "+name1+"!! </h2>";
                            message = message+"\n";
                            message = message+" <h2> \n Receipt ID - "+(cid_assigned+deviceid1)+" </h2>";
                            message = message+"\n";
                            message = message+" <h2> \n Total cost - "+estimated_cost1+" Rs </h2>";
                            message = message+"\n";
                            message = message+"";
                            message = message+" <h2> \n------------------------------------\n </h2>";
                            message = message+"\n <h2> Thanks You!! </h2> ";
                            
                            String mailSubject="Repair Workshop Credentials";
                            semail.mail(email1, message, mailSubject);
                            String now_date="";
                            rs41=st41.executeQuery("select date(now())"); 
                            while(rs41.next()){
                                now_date = rs41.getString(1);
                                out.println("<br> date got :: "+now_date);
                            }
                            i40=st40.executeUpdate("insert into sales (cid,date1,total_sales) values ('"+cid_assigned+"','"+now_date+"','"+estimated_cost1+"')"); 
                        
                            
                            
                            
                           }
                        i36=st36.executeUpdate("update registered_customer set estimated_cost=0 where cid='"+cid_assigned+"'  "); 
                                
//                        response.sendRedirect("employee_dashboard.jsp");
                    }
                          response.sendRedirect("employee_dashboard.jsp");
                    }
                    
                   
                    
         %>   
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script>
        
    </script>
</body>
</html>

