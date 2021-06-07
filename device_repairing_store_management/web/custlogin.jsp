<%-- 
    Document   : custlogin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/custlogin.css">
    </head>
    <body>
      <%
        Connection con;
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
        Statement st= con.createStatement(); 
        Statement st1= con.createStatement(); 
        Statement st2= con.createStatement(); 
        Statement st3= con.createStatement(); 
        Statement st11= con.createStatement(); 
        Statement st12= con.createStatement(); 
        Statement st31= con.createStatement(); 
        Statement st32= con.createStatement(); 
        Statement st33= con.createStatement(); 
        
        ResultSet rs,rs2,rs3,rs11,rs12,rs31; 
        int i,i7,i4,i32,i33;
        int mincurrent = -1, minempid=0;
        String[] delete1;
        rs=st.executeQuery(" call rname_repair()");
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
            <br>
       <div class="container">
        <form action="custlogin.jsp" method="POST">
            <div class="form-group">
              <label class="text-bold" for="selectid">Select Repairs - </label>
              <select class="form-control" id="selectid" name="selectid" multiple>
              <% while(rs.next()){
                String rname = rs.getString(1);
               %>
              <option> <% out.println(rname); %> </option>
              <%
                } %>
                
              </select>
            </div>
            <button type="submit" class="btn btn-primary ">submit</button>
        </form>
        </div>
        <%
                int temp_cid=0;
                int flag_assign_empid = 0; // if user inserts again dont update assigned emp again
                    int temp_deviceid=0;
                    int temp_rid=1; //1 for foreign key error
                    int status=0;
                    int flag_display = 0 ; //flag for display of table of selected records
                   //store selected items in a[]
                   String[] a = request.getParameterValues("selectid");
                   int length1=0; //a[] length
                   int[] res = new int[0]; //res which will store actual rids
                   
                    //getting number of selected items
                   if(a!=null)
                   {
                        length1 = a.length;
                        res = new int[length1]; //store rids
                       
                    }
                   
                   //fetching corresponding rid values from repair_docs
                   if(a != null){
                    for(int i1=0;i1<a.length;i1++){
                         rs=st.executeQuery("select rid from repair_docs where rname='"+a[i1]+"'");
                         if(rs.next()){
                            res[i1] = rs.getInt(1);
                         }

                    }
                   }
                   
                   //display all rids fetched from db
//                   
                   //get cid through session     
                   // insert select in db
                   // status meanings
                   // get repair id
                   // there will be multiple rid so will have to exec insert multiple times
                   String sid = (String)session.getAttribute("userid");
                   //out.println(sid);
                   rs=st.executeQuery("select cid,deviceid from registered_customer where cname='"+sid+"'");
                        
                   if(rs.next()){
                     //  out.println("inside rs");
                       temp_cid = rs.getInt(1);
                       //out.println("cid temp = "+temp_cid);
                       temp_deviceid = rs.getInt(2);
//                       out.println("dev temp = "+temp_deviceid);
                    }
                   if(temp_cid!=0 && temp_deviceid!=0){
//                    out.println("inside insert");
                     for(int i1=0;i1<res.length;i1++){
                         //if requested again should not insert
                         rs=st2.executeQuery("select * from services_needed where rid='"+res[i1]+"' and cid='"+temp_cid+"'");
                         if(rs.next()){
//                             out.println("<br> iinside if "+rs.getInt(1));
                             
                         }
                         else{
//                             out.println("<br> iinside else");
                            i=st.executeUpdate("insert into services_needed (cid,deviceid,rid,status)values ('"+temp_cid+"','"+temp_deviceid+"','"+res[i1]+"','"+status+"')"); 
                            flag_assign_empid =1;
                         }
                     }
                   }
        
              
                int count_rid=0;
                
                // calculate count of inserted 
                rs=st.executeQuery("select count(rid) from services_needed where cid='"+temp_cid+"'");
                if(rs.next()){
                    count_rid = rs.getInt(1);
                }
                if(count_rid > 0){ //if user already inserted
//                out.println("++++++ inside already inserted");
                count_rid = rs.getInt(1);    
                String[] store = new String[count_rid];
                int index_count =0;
                rs=st.executeQuery("select rid from services_needed where cid='"+temp_cid+"'");
                int x=0,k=0;
                int estimated_time= 0, estimated_cost=0;
                int calculated_time, hours=0, minutes=0;
        %>
                
        
                <!--assign employee-->
                <%
                    Statement st5= con.createStatement();
                    Statement st6= con.createStatement();
                    Statement st7= con.createStatement();
                    Statement st8= con.createStatement();
                    Statement st21= con.createStatement();
                    Statement st51= con.createStatement();
                    
                    ResultSet rs5,rs6,rs7,rs21,rs51;
                    int count_of_empid=-1;
                    int empid1, current, empid2=0;
                    
                    int i2,i3;
                    int emp_already_working =0,cid_already_working=0;
                    
                    
                    rs7 = st7.executeQuery("select count(distinct empid) from services_needed where cid='"+temp_cid+"'");
                    while(rs7.next()){
                        count_of_empid = rs7.getInt(1);
//                        out.print("<br> countof empid++"+count_of_empid+"+++");
                    }
                    if(count_of_empid == 0){
                        
                    rs6 = st6.executeQuery("select distinct empid from services_needed where cid='"+temp_cid+"'");
                    int zero_assign=1;
                    while(rs6.next()){
//                        out.print(rs6.getInt(1));
                        zero_assign = rs6.getInt(1);
//                        out.println("<br> zero = "+zero_assign);
                    }
                    if(zero_assign != 0){
                        
                    }
                    else{
                        
                    
                    if(flag_assign_empid == 0){
//                        out.print("flag_assign_empid not needed");
                    }
                    else if(flag_assign_empid > 0)
                    {
//                        out.print("flag_assign_empid needed");
                        
                      
                       
                        //i=st.executeUpdate("insert into services_needed (cid,deviceid,rid,status)values ('"+temp_cid+"','"+temp_deviceid+"','"+res[i1]+"','"+status+"')"); 
                        //rs=st.executeQuery("select rid from services_needed where cid='"+temp_cid+"'");
                        
                        rs5=st5.executeQuery(" select empid,current_job_count from employee;");
                        while(rs5.next()){
                            empid1  = rs5.getInt(1);
                            current = rs5.getInt(2);
                            if(mincurrent == -1)
                            {
                               mincurrent = current;
                               minempid = empid1;
                            }
                            
                            if(mincurrent > current){
                                mincurrent = current;
                                minempid = empid1;
                            }
//                            out.print("<br> mincurrent = "+mincurrent+" current = "+current);
//                            out.print("<br> empid = "+minempid);
                        
                        }
                        i2=st5.executeUpdate("update services_needed set empid='"+minempid+"' where cid='"+temp_cid+"'"); 
                        flag_assign_empid = -2;
                        i2=st5.executeUpdate("update employee set current_job_count=current_job_count+1 where empid='"+minempid+"'"); 
                        
                    }
                    else{
//                        out.print("already assigned");
                    }
                    }
                    }
                    else if (count_of_empid ==1){
                        rs7 = st7.executeQuery("select empid from services_needed where cid='"+temp_cid+"'");
                         if(rs7.next()){
                             
                            empid2 = rs7.getInt(1);
                            if(empid2 == 0){
                                if(rs7.next()){
                                    empid2 = rs7.getInt(1);
                                }
                            }
//                            out.print("<br> second count ++"+count_of_empid+"+++");
                        }
//                        out.print("<br><br> **mineempid after '"+empid2+"' *** cid ="+temp_cid);
                        i3=st8.executeUpdate("update services_needed set empid='"+empid2+"' where cid='"+temp_cid+"'"); 
                        flag_assign_empid = -2; 
                        
                    }
                    
                %>
                 <div class="container">
                    <hr class="style18">
                </div> 
                <div class="container">
                     <form name="myForm" action="custlogin.jsp" onsubmit="" method="POST">
                    <table class="table table-striped table-light">
                        <thead class="">
                          <tr class="">
                            <th scope="col">#ID</th>
                            <th scope="col">Repair Requested</th>
                            <th scope="col">Estimated Time</th>
                            <th scope="col">Estimated Cost</th>
                            <th scope="col">Delete Request</th>
                            
                          </tr>
                        </thead>
                        <tbody>
                
                <%
                while(rs.next()){   
                    x = rs.getInt(1);
                    rs2 = st1.executeQuery("select rname,restimate,rcost from repair_docs where rid='"+x+"'");
                    while(rs2.next()){
                // fetch rname
               
                    %>
                   
                        <% 
    //                        while(rs.next()){
                        String rname_fetched = rs2.getString(1);
                        String rtime_fetched = rs2.getString(2);
                        int rcost_fetched = Integer.parseInt(rs2.getString(3));
                        index_count++;
                        //take only mins from 45mins string
                        //String str1="sdfvsdf68fsdfsf8999fsdf09";
                        //String numberOnly= str1.replaceAll("[^0-9]", "");
                        //out.print("<br> number only-"+numberOnly);
                        int numberOnly= Integer.parseInt(rtime_fetched.replaceAll("[^0-9]", ""));
                        estimated_time= estimated_time + numberOnly;
                        estimated_cost=estimated_cost+rcost_fetched;
                        //mins to hours
                        hours = estimated_time / 60; //since both are ints, you get an int
                        minutes = estimated_time % 60;
//                        out.println("<br> estimated time "+estimated_time);
                        i7=st3.executeUpdate("update registered_customer set estimated_wait="+estimated_time+" where cid="+temp_cid+""); 
                        i7=st51.executeUpdate("update registered_customer set estimated_cost="+estimated_cost+" where cid="+temp_cid+""); 
                        
                        if(minempid ==0){
                                rs21 = st21.executeQuery("select empid from services_needed where cid='"+temp_cid+"'");
                                if(rs21.next())
                                {
                                    minempid = Integer.parseInt(rs21.getString(1));
                                }
                        }
                            rs11 = st11.executeQuery("select cid,empid from services_needed where cid!='"+temp_cid+"' and empid='"+minempid+"'");
//                            out.println("<br>--- temp_cid= "+estimated_time+"  minempid= "+minempid);
//                        
                        while(rs11.next()){
                            cid_already_working = Integer.parseInt(rs11.getString(1));
                            
//                            out.println("<br> emp already assigned to "+cid_already_working);
                        }
                        rs12 = st12.executeQuery("select estimated_wait from registered_customer where cid='"+cid_already_working+"'");
                        
                        while(rs12.next()){
                            emp_already_working = Integer.parseInt(rs12.getString(1));
                            
                        }
                        //out.println("<br> already assigned "+emp_already_working);
                        //System.out.printf("%d:%02d", hours, minutes);
                        hours = estimated_time / 60; //since both are ints, you get an int
                        minutes = estimated_time % 60;

                        %>
                        <tr>
                           <td><% out.println(index_count); %></td>
                           <td><% out.println(rname_fetched); %></td>
                           <td><% out.println(rtime_fetched); %></td>
                           <td><% out.println(rcost_fetched); %></td>
                           <td><input type="checkbox" name="delete1" value="<% out.print(x); %>"></input>
                        </tr>
                        <%
                           
                           }
                }
                    %>
                    </tbody>
                    <tfoot class="text-white">
                        <tr class="">
                          <td class="bg-danger">Total Repairs</td>
                          <td class="bg-danger"><% out.print(index_count); %></td>
                          <td class="bg-danger"></td>
                          <td></td>
                          <td><button class="btn btn-outline-danger btn-sm" type="submit">Delete selected</button></td>
                        </tr>
                        <tr class="table-info">
                          <td class="text-danger">Employees busy, available in </td>
                          <td class="text-danger"><% out.println(emp_already_working); %> mins</td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                        <tr class="table-info">
                          <td class="text-danger">Total repair wait Time</td>
                          <td class="text-danger"><% out.println(hours+" Hrs : "+minutes+" Mins"); %></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                        
                        <tr class="table-info">
                          <td class="text-danger">Minimum Cost</td>
                          <%  if(hours > 7)
                          { %>
                          <td class="text-danger"><% out.print(estimated_cost); %></td>
                          <% }
                           else
                            { %>
                          <td class="text-danger"><% out.print(estimated_cost); %></td>
                            
                         <% } %>
                          <td></td>
                          <td></td>
                          <td></td>
                          
                        </tr>
                      </tfoot>
                </table>
                     </form>
                </div>
                         
                 <%
                   
                
                 }       
                else{ //first time inserting
//                out.println("<br> ------ inside first insert ---");    
                
                
                
                
                if(a!=null)
                {
                    for(int i1=0;i1<a.length;i1++){
                    %>
                    <div class="container">
                    <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">#ID</th>
                            <th scope="col">Repair Requested</th>
                          </tr>
                        </thead>
                        <tbody>
                        <% 
    //                        while(rs.next()){
    //                    String empid = rs.getString(1);
    //                    String ename = rs.getString(2);
    //                    String eaddress = rs.getString(3);
    //                    String econtact = rs.getString(4);
    //                    String esalary = rs.getString(5);
                        %>
                        <tr>
                           <td><% out.println(i1); %></td>
                           <td><% out.println(a[i1]); %></td>
                           
                        </tr>
                        <%
                    } 
                }
                  
                } //else close
                
                %>
                    </tbody>
                </table>
                </div>

                <%
                   delete1 = request.getParameterValues("delete1");
                    //out.println("<br> delete1 = "+delete1);
                    if (delete1 != null) 
                    {
                       for (int i1 = 0; i1 < delete1.length; i1++) 
                       {
//                          out.println("<b>"+delete1[i1]+"<b>");
                          i4=st3.executeUpdate("delete from services_needed where cid='"+temp_cid+"' and rid='"+delete1[i1]+"' "); 
                          
                          
                       }
                       rs31=st31.executeQuery("select * from services_needed where cid='"+temp_cid+"'  "); 
                          if(rs.next()== false)
                          {
                            i32=st32.executeUpdate("update registered_customer set estimated_wait=0 where cid='"+temp_cid+"'  "); 
                            i33=st33.executeUpdate("update employee set current_job_count=current_job_count-1 where empid='"+minempid+"'  "); 
                          
                          }
                       response.sendRedirect("custlogin.jsp");
                    }  
                    
                    
                
                
                
                
                %>
                
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
