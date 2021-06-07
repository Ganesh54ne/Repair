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
       
                <h2>Status</h2>
                <div class="container">
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
                    rs_cname=st1.executeQuery("select cname from registered_customer where cid='"+cid+"' ");
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
                    <center>
                        <a href="repair.jsp"><button class="btn btn-primary">Repair Docs Insert</button></a><br><br><br>    
                        <a href="repairshow.jsp"><button class="btn btn-primary">Repair Docs Show</button></a><br><br><br> 
                        <a href="employee.jsp"><button class="btn btn-primary">Employee Registration</button></a><br><br><br> 
                        <a href="employeeshow.jsp"><button class="btn btn-primary">Employee Records</button></a><br><br><br> 
                    </center>
                </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
   
    </body>
</html>
