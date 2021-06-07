package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import controller.SendEmailClass;
import java.sql.*;
import javax.sql.*;

public final class employee_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/employee.css\">\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("       \n");
      out.write("        <nav class=\"navbar navbar-expand-lg  navbar-dark bg-dark\">\n");
      out.write("\t  <div class=\"container\">\n");
      out.write("\t  \t<a class=\"navbar-brand\" href=\"index1.jsp\"><i class=\"fas fa-bug\"></i> RWMS</a>\n");
      out.write("\t  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t  </button>\n");
      out.write("\n");
      out.write("\t  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\t    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("              <li class=\"nav-item active\">\n");
      out.write("\t        <a class=\"nav-link\" href=\"index1.jsp\">Home <span class=\"sr-only\"></span></a>\n");
      out.write("\t      </li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"about.jsp\">About</a></li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"\">Contact</a></li>\n");
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
      out.write("        \n");
      out.write("       \n");
      out.write("    <div class=\"\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("                <div class=\"col-md-5 no-float pink bgimage\"></div>\n");
      out.write("                <div class=\"col-md-7 no-float pink all-center\">\n");
      out.write("                        <div class=\"all-center\">\n");
      out.write("                                <form name=\"myForm\" action=\"employee.jsp\" onsubmit=\"return validateForm()\" method=\"post\">\n");
      out.write("                                        <div class=\"form-group row\">\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                         <label for=\"\">Employee Name<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" id=\"ename\" name=\"ename\"placeholder=\"Jon Doe\" required=\"\">\n");
      out.write("                                                 </div>\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                </div>  \n");
      out.write("\n");
      out.write("                                <div class=\"form-group row\">\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                                <label>Employee Address<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                          <input type=\"text\" class=\"form-control\" id=\"eaddress\" name=\"eaddress\" placeholder=\"Pune, Maharashtra\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group row\">\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                                <label>Employee Contact<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                          <input type=\"text\" class=\"form-control\" id=\"econtact\" name=\"econtact\" placeholder=\"99999-55555\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group row\">\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                                <label>Employee Email<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                          <input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"sample@gmail.com\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"form-group row\">\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                                <label>Employee Salary<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                          <input type=\"text\" class=\"form-control\" id=\"esalary\" name=\"esalary\" placeholder=\"\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group row\">\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                                <label>Employee Password<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                          <input type=\"text\" class=\"form-control\" id=\"epassword\" name=\"epassword\" placeholder=\"\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"row\">\t\t\n");
      out.write("                                        <div class=\"col-md-4\"></div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                                <center><button type=\"submit\" class=\"btn btn-primary\">submit</button>\n");
      out.write("                                                </center>\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");

    int flag =0;
    
    String ename = request.getParameter("ename"); 
    String eaddress = request.getParameter("eaddress"); 
    String esalary = request.getParameter("esalary"); 
    String econtact = request.getParameter("econtact");
    String epassword = request.getParameter("epassword");
    String email = request.getParameter("email");
    
    Connection con;
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
    Statement st= con.createStatement(); 
    ResultSet rs; 
    int i;
    if(esalary !=null && ename !=null && econtact !=null){
       // i=st.executeUpdate("insert into employee (ename,eaddress,esalary,econtact,current_job_count,epassword,eemail)values ('"+ename+"','"+eaddress+"','"+esalary+"','"+econtact+"','"+0+"','"+epassword+"','"+email+"')"); 
        i=st.executeUpdate("select insert_employee('"+ename+"','"+eaddress+"','"+esalary+"','"+econtact+"','"+epassword+"','"+email+"')"); 
         
       String email1 = email;

            SendEmailClass semail= new SendEmailClass();
            String message="Your account has been Registered!!";
            message = message+"\n";
            message = message+"\n------------------------------------\n";
            message = message+"Employee @handle - '"+ename+"'";
            message = message+"\n";
            message = message+"password -'"+epassword+"'";
            message = message+"\n";
            message = message+"Contact - '"+econtact+"'";
            message = message+"\n";
            message = message+"Salary Details - '"+esalary+"'";
            message = message+"\n------------------------------------\n";
            String mailSubject="Repair Workshop Credentials";
            semail.mail(email1, message, mailSubject);
            out.println("Successfully Registered!!!");
        if(i!=-1){
        out.println("Insertion Complete!!");
        response.sendRedirect("employeeshow.jsp");
        }
    }
    
    

      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("    \n");
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
