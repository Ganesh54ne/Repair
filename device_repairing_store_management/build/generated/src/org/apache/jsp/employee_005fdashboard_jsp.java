package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import controller.SendEmailClass;

public final class employee_005fdashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("      \n");
      out.write("\t\n");
      out.write("        \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <!--boot-->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato:400,700\" rel=\"stylesheet\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\" integrity=\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/employee_dashboard.css\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write(" \n");
      out.write("    <body class=\"\">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg  navbar-dark bg-dark\">\n");
      out.write("\t  <div class=\"container\">\n");
      out.write("\t  \t<a class=\"navbar-brand\" href=\"index1.jsp\"><i class=\"fas fa-bug\"></i> RWMS</a>\n");
      out.write("\t  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t  </button>\n");
      out.write("          <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\t    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("\t      <li class=\"nav-item active\">\n");
      out.write("\t        <a class=\"nav-link\" href=\"index1.jsp\">Home <span class=\"sr-only\"></span></a>\n");
      out.write("\t      </li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"about.jsp\">About</a></li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"\">Contact</a></li>\n");
      out.write("\t      \n");
      out.write("\t    </ul>\n");
      out.write("\t    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t      \t");

                    String valid = (String)session.getAttribute("userid");
                    if(valid==null){  
                
      out.write("\n");
      out.write("\t      \t<li><a class=\"nav-link\" href=\"reg1.jsp\">Sign Up <i class=\"fa fa-user-plus\"></i></a></li>\n");
      out.write("\t    \t<li><a class=\"nav-link\" href=\"login1.jsp\">Login <i class=\"fa fa-user\"></i></a></li>\n");
      out.write("                ");
 }
                    else{ 
      out.write("\n");
      out.write("                        <li><a class=\"nav-link\" href=\"reg1.jsp\">");
 out.println(valid); 
      out.write(" <i class=\"fa fa-user\"></i></a></li>\n");
      out.write("                        <li><a class=\"nav-link\" href=\"logout.jsp\">Logout <i class=\"fas fa-sign-out-alt\"></i></a></li>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\t    </ul>\n");
      out.write("\t      \n");
      out.write("\t  </div>\n");
      out.write("\t  </div>\n");
      out.write("\t</nav>\n");
      out.write("       \n");
      out.write("        ");

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
                            
            
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                    <table class=\"table table-striped table-light\">\n");
      out.write("                        <thead class=\"\">\n");
      out.write("                          <tr class=\"\">\n");
      out.write("                            <th scope=\"col\">Emp ID</th>\n");
      out.write("                            <th scope=\"col\">Employee Name</th>\n");
      out.write("                            <th scope=\"col\">Current Assigned Jobs</th>\n");
      out.write("                          </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("            ");

            rs=st.executeQuery("select empid,ename,current_job_count from employee where ename='"+ses_user+"' ");
            while(rs.next()){
                emp_id = Integer.parseInt(rs.getString(1));            
                String emp_name = rs.getString(2);
                current_jobs = Integer.parseInt(rs.getString(3));
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                           <td>");
 out.println(emp_id); 
      out.write("</td>\n");
      out.write("                           <td>");
 out.println(emp_name); 
      out.write("</td>\n");
      out.write("                           <td>");
 out.println(current_jobs); 
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");

            }
        
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                 </table>\n");
      out.write("            </div>\n");
      out.write("                        <br>\n");
      out.write("                        \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <hr class=\"style18\">\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h2>\n");
      out.write("                Customer Requests\n");
      out.write("            </h2>\n");
      out.write("        </div>\n");
      out.write("                        \n");
      out.write("             <div class=\"container\">\n");
      out.write("                 <form name=\"myForm\" action=\"employee_dashboard.jsp\" onsubmit=\"\" method=\"POST\">\n");
      out.write("                    <table class=\"table table-striped table-light\">\n");
      out.write("                        <thead class=\"\">\n");
      out.write("                          <tr class=\"\">\n");
      out.write("                            <th scope=\"col\">Customer ID</th>\n");
      out.write("                            <th scope=\"col\">Repair ID</th>\n");
      out.write("                            <th scope=\"col\">Repair Name</th>\n");
      out.write("                            <th scope=\"col\">Select Completed</th>\n");
      out.write("                          </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("            ");
                
            rs1=st1.executeQuery("select distinct cid,rid from services_needed where empid='"+emp_id+"' ");
            while(rs1.next()){
                cid_assigned = Integer.parseInt(rs1.getString(1));
                rid_assigned = Integer.parseInt(rs1.getString(2));
                
                rs2=st2.executeQuery("select rname from repair_docs where rid='"+rid_assigned+"' ");
                while(rs2.next()){
                    rname_assigned = rs2.getString(1);
               
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                           <td>");
 out.println(cid_assigned); 
      out.write("</td>\n");
      out.write("                           <td>");
 out.println(rid_assigned); 
      out.write("</td>\n");
      out.write("                           <td>");
 out.println(rname_assigned); 
      out.write("</td>\n");
      out.write("                           <td><input type=\"checkbox\" name=\"delete1\" value=\"");
 out.print(rid_assigned); 
      out.write("\"></input></td>\n");
      out.write("                        </tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                ");
    
                    
                }
            }
            
      out.write("\n");
      out.write("               </tbody>\n");
      out.write("                <tfoot class=\"\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td class=\"\"><button class=\"btn btn-danger\" type=\"submit\">Confirm Completed</button></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tfoot> \n");
      out.write("                </table>\n");
      out.write("            \n");
      out.write("            </form>\n");
      out.write("            </div>   \n");
      out.write("             \n");
      out.write("            \n");
      out.write("            \n");
      out.write("                  ");

            
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
                            String message="";
                            message = message+"\n";
                            message = message+"\n------------------------------------\n";
                            message = message+"Date - "+date;
                            message = message+"\n";
                            message = message+"Hello "+name1+"!! ";
                            message = message+"\n";
                            message = message+"Receipt ID - "+(cid_assigned+deviceid1)+" ";
                            message = message+"\n";
                            message = message+"Total cost - "+estimated_cost1+" Rs";
                            message = message+"\n";
                            message = message+"";
                            message = message+"\n------------------------------------\n";
                            message = message+"Thanks You!!";
                            
                            String mailSubject="Repair Workshop Credentials";
                            semail.mail(email1, message, mailSubject);
                            String now_date="";
                            rs41=st41.executeQuery("select date(now())"); 
                            while(rs41.next()){
                                now_date = rs41.getString(1);
                            }
                            i40=st40.executeUpdate("insert into sales (cid,date1,total_sales) values ('"+cid_assigned+"','"+now_date+"','"+estimated_cost1+")"); 
                        
                            
                            
                            
                           }
                        i36=st36.executeUpdate("update registered_customer set estimated_cost=0 where cid='"+cid_assigned+"'  "); 
                                
//                        response.sendRedirect("employee_dashboard.jsp");
                    }
                          response.sendRedirect("employee_dashboard.jsp");
                    }
                    
                   
                    
         
      out.write("   \n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script>\n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
