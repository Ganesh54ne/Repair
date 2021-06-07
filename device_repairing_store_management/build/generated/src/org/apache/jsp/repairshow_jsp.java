package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class repairshow_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"\">\n");
      out.write("        <style>\n");
      out.write("            .hr-danger{\n");
      out.write("                     background-image: -webkit-linear-gradient(left, rgba(244,67,54,.8), rgba(244,67,54,.6), rgba(0,0,0,0));\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    \n");
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
      out.write("\t      <li class=\"nav-item active\">\n");
      out.write("\t        <a class=\"nav-link\" href=\"index1.jsp\">Home <span class=\"sr-only\"></span></a>\n");
      out.write("\t      </li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"\">About</a></li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"\">Contact</a></li>\n");
      out.write("\t      \n");
      out.write("\t    </ul>\n");
      out.write("\t    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t    \t<!-- <li class=\"nav-item nav-right\">\n");
      out.write("\t        \t<a class=\"nav-link\" href=\"#\">Sign Up</a>\n");
      out.write("\t    s  \t</li> -->\n");
      out.write("\t      \t<li><a class=\"nav-link\" href=\"reg1.jsp\">Sign Up <i class=\"fa fa-user-plus\"></i></a></li>\n");
      out.write("\t    \t<li><a class=\"nav-link\" href=\"login1.jsp\">Login <i class=\"fa fa-user\"></i></a></li>\n");
      out.write("\t    </ul>\n");
      out.write("\t  </div>\n");
      out.write("\t  </div>\n");
      out.write("\t</nav>\n");
      out.write("        \n");
      out.write("    ");

        Connection con;
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/temp?autoReconnect=true&useSSL=false","root","root"); 
        Statement st= con.createStatement(); 
        ResultSet rs; 
        rs=st.executeQuery("select count(rid) from repair_docs");
        int count_repair=0;
        while(rs.next()){
            count_repair = Integer.parseInt(rs.getString(1));
//            out.println(count_repair);
        }
        rs=st.executeQuery("select * from repair_docs");
        
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <table class=\"table table-striped\">\n");
      out.write("            <thead>\n");
      out.write("              <tr>\n");
      out.write("                <th scope=\"col\">Rid</th>\n");
      out.write("                <th scope=\"col\">Rname</th>\n");
      out.write("                <th scope=\"col\">Restimate</th>\n");
      out.write("                <th scope=\"col\">Rcost</th>\n");
      out.write("              </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("            ");
 while(rs.next()){
            String rid = rs.getString(1);
            String rname = rs.getString(2);
            String restimate = rs.getString(3);
            String rcost = rs.getString(4);
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("               <td>");
 out.println(rid); 
      out.write("</td>\n");
      out.write("                <td>");
 out.println(rname); 
      out.write("</td>\n");
      out.write("                <td>");
 out.println(restimate); 
      out.write("</td>\n");
      out.write("                <td>");
 out.println(rcost); 
      out.write("</td>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("            ");

                } 
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("    <center>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <a href=\"repair.jsp\"><button type=\"submit\" class=\"btn btn-success\">Add Repair Docs</button></a>\n");
      out.write("            <hr class=\"hr-danger\">\n");
      out.write("            <form action=\"repairshow.jsp\" method=\"post\">    \n");
      out.write("            <div class=\"form-group col\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"\"></div>\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                    <!--<label>Add More Docs</label><i class=\"\"> </i>-->\n");
      out.write("                    <!--<a href=\"repair.jsp\"><button type=\"submit\" class=\"btn btn-success\">Add Repair Docs</button></a>-->\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group col\">\n");
      out.write("                <div class=\"\">\n");
      out.write("                    <div class=\"col-xs-2\"></div>\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                    <label>Delete Repair Doc</label><i class=\"\"> </i>\n");
      out.write("                    \n");
      out.write("                    <input type=\"text\" class=\"form-control\" placeholder=\"Rid 1\" name=\"rid_del\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group col\">    \n");
      out.write("                <div class=\"\">\n");
      out.write("                    <center><button type=\"submit\" class=\"btn btn-danger\">Delete</button>\n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            </form>\n");
      out.write("            </div>\n");
      out.write("    </center>    \n");
      out.write("        ");

            String rid_del=request.getParameter("rid_del");
            if(rid_del!=null){
             int i=st.executeUpdate("delete from repair_docs where rid='"+rid_del+"'"); 
            response.sendRedirect("repairshow.jsp");
            }
         
      out.write("\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("  \n");
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
