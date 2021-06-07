package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato:400,700\" rel=\"stylesheet\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\" integrity=\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/admin.css\">\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("   /*\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("*/\n");
      out.write("/* \n");
      out.write("    Created on : 19 Sep, 2018, 9:45:23 PM\n");
      out.write("    Author     : Mandar\n");
      out.write("*/\n");
      out.write("\n");
      out.write("html,body,.container {\n");
      out.write("    height:100%;\n");
      out.write("    overflow-y: hidden;\n");
      out.write("    overflow-x: hidden;\n");
      out.write(" \n");
      out.write("}\n");
      out.write(".col-md-5 {\n");
      out.write("    padding-bottom: 100%;\n");
      out.write("    margin-bottom: -100%;\n");
      out.write("}\n");
      out.write(".container {\n");
      out.write("    height: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".row {\n");
      out.write("    height: 100vh;\n");
      out.write("}\n");
      out.write(".row .no-float {\n");
      out.write("  display: table-cell;\n");
      out.write("  float: none;\n");
      out.write("}\n");
      out.write(".bgimage{\n");
      out.write("    background-size: cover;\n");
      out.write("    background-position: center;\n");
      out.write("    background: url(https://images.unsplash.com/photo-1517754461499-9930e2b54957?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2e5cd00f78bb6a4c5f13a23ef1f0d257&auto=format&fit=crop&w=634&q=80);\n");
      out.write("    width: 90%;\n");
      out.write("    height: 90%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".all-center{\n");
      out.write("\n");
      out.write("    padding-top: 25%;\n");
      out.write("}\n");
      out.write(".split1 {\n");
      out.write("    height: 100%;\n");
      out.write("    width: 50%;\n");
      out.write("    position: fixed;\n");
      out.write("    z-index: 1;\n");
      out.write("    top: 0;\n");
      out.write("    overflow-x: hidden;\n");
      out.write("    padding-top: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("h3 {\n");
      out.write("     font-family: 'Charmonman', cursive;\n");
      out.write("}\n");
      out.write(".left1 {\n");
      out.write("    left: 0;\n");
      out.write("    background-color: #111;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".right1 {\n");
      out.write("    right: 0;\n");
      out.write("    background-color: red;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".centered1 {\n");
      out.write("    position: absolute;\n");
      out.write("    top: 50%;\n");
      out.write("    left: 50%;\n");
      out.write("    transform: translate(-50%, -50%);\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("hei1 {\n");
      out.write("    height: 100vh;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* .centered img {\n");
      out.write("    width: 150px;\n");
      out.write("    border-radius: 50%;\n");
      out.write("}*/\n");
      out.write("\n");
      out.write("hr.style18 { \n");
      out.write("    height: 30px; \n");
      out.write("    border-style: solid; \n");
      out.write("    border-color: #8c8b8b; \n");
      out.write("    border-width: 1px 0 0 0; \n");
      out.write("    border-radius: 20px; \n");
      out.write("  } \n");
      out.write("hr.style18:before { \n");
      out.write("    display: block; \n");
      out.write("    content: \"\"; \n");
      out.write("    height: 30px; \n");
      out.write("    margin-top: -31px; \n");
      out.write("    border-style: solid; \n");
      out.write("    border-color: #8c8b8b; \n");
      out.write("    border-width: 0 0 1px 0; \n");
      out.write("    border-radius: 20px; \n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  \n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

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
            
            
            
            
        
      out.write("\n");
      out.write("          <nav class=\"navbar navbar-expand-lg  navbar-dark bg-dark\">\n");
      out.write("\t  <div class=\"container\">\n");
      out.write("\t  \t<a class=\"navbar-brand\" href=\"index1.jsp\"><i class=\"fas fa-bug\"></i> RWMS</a>\n");
      out.write("\t  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t  </button>\n");
      out.write("\n");
      out.write("\t  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\t    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("\t      <li class=\"nav-item active\">\n");
      out.write("\t        <a class=\"nav-link\" href=\"index1.jsp\">Home <span class=\"sr-only\"></span></a>\n");
      out.write("\t      </li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"about.jsp\">About</a></li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"adminemployee.jsp\">Control</a></li>\n");
      out.write("\t      \n");
      out.write("\t    </ul>\n");
      out.write("\t    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t    \t");

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
      out.write("        <div class=\"container\">\n");
      out.write("            <h2 class=\"text-primary\">Progress Status</h2>\n");
      out.write("                <div class=\"\">\n");
      out.write("                <table class=\"table table-striped\">\n");
      out.write("                    <thead>\n");
      out.write("                      <tr>\n");
      out.write("                        <th scope=\"col\">Customer_id</th>\n");
      out.write("                        <th scope=\"col\">Customer_name</th>\n");
      out.write("                        <th scope=\"col\">Employee_Assigned_ID</th>\n");
      out.write("                        <th scope=\"col\">Employee_Assigned_Name</th>\n");
      out.write("                        <th scope=\"col\">Status</th>\n");
      out.write("                      </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                    ");
 while(rs.next()){
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
                            
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                       <td>");
 out.println(cid); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.println(cname); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.println(empid); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.println(empname); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.println(status); 
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                    </tr>\n");
      out.write("                    ");
        
                                } //rs_empname
                                }//rs_emp
                            } //rs_name
                        } //rs 
                    
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            \n");
      out.write("                    <br>\n");
      out.write("                    <div class=\"container\">    \n");
      out.write("                         <hr class=\"style18\">\n");
      out.write("                    </div>\n");
      out.write("                    <center>\n");
      out.write("                        <a href=\"repair.jsp\"><button class=\"btn btn-primary\">Repair Docs Insert</button></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; \n");
      out.write("                        <a href=\"repairshow.jsp\"><button class=\"btn btn-primary\">Repair Docs Show</button></a><br><br><br> \n");
      out.write("                        <a href=\"employee.jsp\"><button class=\"btn btn-primary\">Employee Registration</button></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;\n");
      out.write("                        <a href=\"employeeshow.jsp\"><button class=\"btn btn-primary\">Employee Records</button></a><br><br><br> \n");
      out.write("                        <a href=\"sales.jsp\"><button class=\"btn btn-primary\">Sales</button></a><br><br><br> \n");
      out.write("                    \n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
      out.write("                    <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <h5 class=\"card-title\">Admin</h5>\n");
      out.write("                  <p class=\"card-text\"> Add/Remove Employee and Repair Records.</p>\n");
      out.write("                  <a href=\"adminlogin.jsp\" class=\"btn btn-primary\">Admin Login</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("                    \n");
      out.write("             </div>\n");
      out.write("                    <br>\n");
      out.write("            <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <h5 class=\"card-title\">Admin</h5>\n");
      out.write("                  <p class=\"card-text\"> Add/Remove Employee and Repair Records.</p>\n");
      out.write("                  <a href=\"adminlogin.jsp\" class=\"btn btn-primary\">Admin Login</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
