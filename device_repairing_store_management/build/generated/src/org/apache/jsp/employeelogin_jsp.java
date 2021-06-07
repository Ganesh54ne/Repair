package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Collections;
import java.util.Arrays;
import java.sql.*;
import javax.sql.*;

public final class employeelogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!--login process-->\n");
      out.write("        \n");
      out.write("\t\n");
      out.write("\t");

            //for session
            

            //    
            String id=request.getParameter("usr"); //pass this value to session
            //    pass tag name pass
            String pass=request.getParameter("pwd");
            String queryString;
            session.setAttribute("userid",id);
            
           
            //login
            String userid=request.getParameter("usr"); 
            //session.putValue("userid",userid); 
            String pwd1=request.getParameter("pwd"); 
            String usertype=request.getParameter("selectlogin"); 
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
            Statement st= con.createStatement(); 
            
            ResultSet rs=st.executeQuery("select ename,epassword from employee where ename='"+userid+"'"); 
            
            if(rs.next()) 
            { 
                    if(rs.getString(2).equals(pwd1)) 
                { 
                    response.sendRedirect("employee_dashboard.jsp");
                    //out.println("welcome "+userid); 
                     out.println(session.getAttribute("userid"));
                       // response.sendRedirect("reg1.jsp");
  
                } 
                else if(userid==null ){
                //do nothing
                }
                else 
                { 
                    out.println("Invalid password try again"); 
                } 
            } 
            else{ 
                
            }
            
                    
        
      out.write("\n");
      out.write("       \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <!--boot-->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato:400,700\" rel=\"stylesheet\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\" integrity=\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/login1.css\">\n");
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
      out.write("\n");
      out.write("\t  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\t    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("\t      <li class=\"nav-item active\">\n");
      out.write("\t        <a class=\"nav-link\" href=\"index1.jsp\">Home <span class=\"sr-only\"></span></a>\n");
      out.write("\t      </li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"about.jsp\">About</a></li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"\">Contact</a></li>\n");
      out.write("\t      \n");
      out.write("\t    </ul>\n");
      out.write("\t    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t    \t<!-- <li class=\"nav-item nav-right\">\n");
      out.write("\t        \t<a class=\"nav-link\" href=\"#\">Sign Up</a>\n");
      out.write("\t      \t</li> -->\n");
      out.write("\t      \t<li><a class=\"nav-link\" href=\"reg1.jsp\">Sign Up <i class=\"fa fa-user-plus\"></i></a></li>\n");
      out.write("\t    \t<li><a class=\"nav-link\" href=\"login1.jsp\">Login <i class=\"fa fa-user\"></i></a></li>\n");
      out.write("\t    </ul>\n");
      out.write("\t      \n");
      out.write("\t  </div>\n");
      out.write("\t  </div>\n");
      out.write("\t</nav>\n");
      out.write("        \n");
      out.write("<!--        \n");
      out.write("        <br>\n");
      out.write("        <form action=\"login1.jsp\" method=\"post\">\n");
      out.write("            User name :<input type=\"text\" name=\"usr\" i=''/>\n");
      out.write("            password :<input type=\"password\" name=\"pwd\" />\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\">Submit</button\n");
      out.write("        </form>-->\n");
      out.write("    \n");
      out.write("        <div class=\"\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"col-md-5 no-float pink bgimage\"></div>\n");
      out.write("\t\t\t<div class=\"col-md-7 no-float pink\">\n");
      out.write("\t\t\t\t<div class=\"all-center\">\n");
      out.write("                                    <form action=\"employeelogin.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t        <div class=\"form-group row\">\n");
      out.write("\t\t\t\t        \t<div class=\"col-md-4\"></div>\n");
      out.write("\t\t\t\t          \t<div class=\"col-md-4\">\n");
      out.write("                                                    <label>Name</label><i class=\"text-danger\"> *</i>\n");
      out.write("\t\t\t\t\t          <input type=\"text\" class=\"form-control\" placeholder=\"Jon Doe\" name=\"usr\">\n");
      out.write("\t\t\t\t        \t</div>\n");
      out.write("\t\t\t\t        \t<div class=\"col-md-4\"></div>\n");
      out.write("\t\t\t\t        </div>\n");
      out.write("\t\t\t\t        <div class=\"form-group row\">\n");
      out.write("\t\t\t\t\t        <div class=\"col-md-4\"></div>\n");
      out.write("\t\t\t\t\t        <div class=\"col-md-4\">\n");
      out.write("\t\t\t\t\t         <label for=\"exampleInputPassword1\">Password</label><i class=\"text-danger\"> *</i>\n");
      out.write("                                                 <input type=\"password\" class=\"form-control\" id=\"pwd\" placeholder=\"Password\" required=\"\" name=\"pwd\">\n");
      out.write("\t\t\t\t\t\t\t </div>\n");
      out.write("\t\t\t\t        \t<div class=\"col-md-4\"></div>\n");
      out.write("\t\t\t\t        </div>   \n");
      out.write("\t\t\t\t           \n");
      out.write("\t\t\t\t        <div class=\"row\">\t\t\n");
      out.write("\t\t\t\t        \t<div class=\"col-md-4\"></div>\n");
      out.write("\t\t\t\t        \t<div class=\"col-md-4\">\n");
      out.write("\t\t\t\t        \t\t<center><button type=\"submit\" class=\"btn btn-primary\">submit</button>\n");
      out.write("\t\t\t      \t\t\t\t</center>\n");
      out.write("\t\t\t      \t\t\t</div>\n");
      out.write("\t\t\t      \t\t</div>\n");
      out.write("\t\t\t      \t</form>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script>\n");
      out.write("\n");
      out.write("//    window.onbeforeunload = function(event) {\n");
      out.write("//        console.log(typeof(event));\n");
      out.write("//        confirm(\"You will automatically logout!\")\n");
      out.write("//    event.returnValue = \"Write something clever here..\";\n");
      out.write("//    };\n");
      out.write("//        window.onbeforeunload = function(event) {\n");
      out.write("//        var remote = require('remote');\n");
      out.write("//    var dialog = remote.require('dialog');  \n");
      out.write("//        var choice = dialog.showMessageBox(\n");
      out.write("//                \n");
      out.write("//            remote.getCurrentWindow(),\n");
      out.write("//            {\n");
      out.write("//                type: 'question',\n");
      out.write("//                buttons: ['Yes', 'No'],\n");
      out.write("//                title: 'Confirm',\n");
      out.write("//                message: 'Are you sure you want to quit?'\n");
      out.write("//            });\n");
      out.write("//            if(choice){\n");
      out.write("//               console.log(\"hello\");\n");
      out.write("//            }else{\n");
      out.write("//                console.log(\"bye\");\n");
      out.write("//            }\n");
      out.write("//    };\n");
      out.write("    //      window.onbeforeunload = function(event) {\n");
      out.write("    //          console.log(\"yo\");\n");
      out.write("    //       window.location=\"logout.jsp\";\n");
      out.write("    //         console.log(\"yo1\");\n");
      out.write("    //        event.returnValue = \"Write something clever here..\";\n");
      out.write("    //    };\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
