package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<title>Book A Book </title>\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Lato:400,700\" rel=\"stylesheet\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/index.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\" integrity=\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\" crossorigin=\"anonymous\">\n");
      out.write("</head>\n");
      out.write("<body class=\"content\">\n");
      out.write("\n");
      out.write("\t<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("\t  <div class=\"container\">\n");
      out.write("\t  \t<a class=\"navbar-brand\" href=\"#\"><i class=\"fas fa-book-open\"></i> Book A Book</a>\n");
      out.write("\t  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t  </button>\n");
      out.write("\n");
      out.write("\t  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\t    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("\t      <li class=\"nav-item active\">\n");
      out.write("\t        <a class=\"nav-link\" href=\"index.php\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("\t      </li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"about.php\">About</a></li>\n");
      out.write("\t      <li class=\"nav-item\"><a class=\"nav-link\" href=\"contact.php\">Contact</a></li>\n");
      out.write("\t      \n");
      out.write("\t    </ul>\n");
      out.write("\t    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t    \t<!-- <li class=\"nav-item nav-right\">\n");
      out.write("\t        \t<a class=\"nav-link\" href=\"#\">Sign Up</a>\n");
      out.write("\t      \t</li> -->\n");
      out.write("\t  \n");
      out.write("        \n");
      out.write("\t    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t      \t<li><a class=\"nav-link\" href=\"signup.php\">Sign Up <i class=\"fa fa-user-plus\"></i></a></li>\n");
      out.write("\t    \t<li><a class=\"nav-link\" href=\"login2.php\">Login <i class=\"fa fa-user\"></i></a></li>\n");
      out.write("\t    </ul>\n");
      out.write("\t      <?php\n");
      out.write("\t  }\n");
      out.write("\t  ?>\n");
      out.write("\t  </div>\n");
      out.write("\t  </div>\n");
      out.write("\t</nav>\n");
      out.write("<div class=\"\" style=\"padding-top: 5%;\">\n");
      out.write("<div class=\"card-group container\" style=\"color: black;\">\n");
      out.write("  <div class=\"card\">\n");
      out.write("    <img class=\"card-img-top\" src=\"images/developer.png\" height=\"370\" alt=\"Card image cap\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title\">Mandar Bhosale</h5>\n");
      out.write("      <p class=\"card-text\">Mail: mandarbhosale02@gmail.com<br>Phone: 8787878787</p>\n");
      out.write("      <p class=\"card-text\"><small class=\"text-muted\">Developer</small></p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"card\">\n");
      out.write("    <img class=\"card-img-top\" src=\"images/developer.jpg\" height=\"370\" alt=\"Card image cap\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title\">Jay Thombre </h5>\n");
      out.write("      <p class=\"card-text\">Mail: jay.thombre1997@gmail.com<br>Phone: 9999999999</p>\n");
      out.write("      <p class=\"card-text\"><small class=\"text-muted\">Developer</small></p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"card\">\n");
      out.write("    <img class=\"card-img-top\" src=\"images/vaibhav.jpg\" height=\"370\" alt=\"Card image cap\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title\">Vaibhav Mulaje</h5>\n");
      out.write("      <p class=\"card-text\">Mail: vaibhavmulaje@gmail.com<br>Phone: 787656767</p>\n");
      out.write("      <p class=\"card-text\"><small class=\"text-muted\">Developer</small></p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"card\">\n");
      out.write("    <img class=\"card-img-top\" src=\"images/vaibhav.jpg\" height=\"370\" alt=\"Card image cap\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title\">Mihir Nevpurkar</h5>\n");
      out.write("      <p class=\"card-text\">Mail: mihirnevpurkarmn@gmail.com<br>Phone: 8765454112</p>\n");
      out.write("      <p class=\"card-text\"><small class=\"text-muted\">Developer</small></p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
