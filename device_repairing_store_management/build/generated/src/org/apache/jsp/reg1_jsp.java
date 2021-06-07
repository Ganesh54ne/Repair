package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import controller.SendEmailClass;

public final class reg1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>regjsp</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato:400,700\" rel=\"stylesheet\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\" integrity=\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/reg1.css\">\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
      out.write("<div class=\"\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("            <div class=\"col-md-5 no-float pink bgimage\"></div>\n");
      out.write("            <div class=\"col-md-7 no-float pink\">\n");
      out.write("                    <div class=\"all-center\">\n");
      out.write("                            <form name=\"myForm\" action=\"reg1.jsp\" onsubmit=\"return validateForm()\" method=\"post\">\n");
      out.write("                                    <div class=\"form-group row\">\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                     <label for=\"\">Name<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"name\" name=\"userid\"placeholder=\"Jon Doe\" required=\"\">\n");
      out.write("                                             </div>\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                            </div>  \n");
      out.write("\n");
      out.write("                            <div class=\"form-group row\">\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                            <label>Email<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                      <input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"sample@gmail.com\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group row\">\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                            <label>Contact<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                      <input type=\"text\" class=\"form-control\" id=\"contact\" name=\"contact\" placeholder=\"9999955555\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group row\">\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                            <label>Address<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                      <input type=\"text\" class=\"form-control\" id=\"address\" name=\"address\" placeholder=\"Pune, Maharashtra\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group row\">\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                     <label for=\"exampleInputPassword1\">Password<i class=\"text-danger\"> *</i></label>\n");
      out.write("                                                <input type=\"password\" class=\"form-control\" id=\"pwd\" name=\"pwd\" placeholder=\"Password\" required=\"\">\n");
      out.write("                                             </div>\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                            </div>   \n");
      out.write("                            <div class=\"row\">\t\t\n");
      out.write("                                    <div class=\"col-md-4\"></div>\n");
      out.write("                                    <div class=\"col-md-4\">\n");
      out.write("                                            <center><button type=\"submit\" class=\"btn btn-primary\">submit</button>\n");
      out.write("                                            </center>\n");
      out.write("                                    </div>\n");
      out.write("                            </div>\n");
      out.write("                    </form>\n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");

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


      out.write("\n");
      out.write("<script>\n");
      out.write("\t\n");
      out.write("var password = document.getElementById(\"pwd\");\n");
      out.write("  var passStatus=null;\n");
      out.write("\n");
      out.write("var name = document.getElementById(\"name\");\n");
      out.write("var contact = document.getElementById(\"contact\");\n");
      out.write("\n");
      out.write("password.onchange = validatePassword;\n");
      out.write("confirm_password.onkeyup = validatePassword;\n");
      out.write("\n");
      out.write("\n");
      out.write("function contactValidate(){\n");
      out.write("    var contact = document.getElementById(\"contact\").value;\n");
      out.write("    if(contact.length !==10){\n");
      out.write("        alert(\"contact should  be of 10 length\");\n");
      out.write("        console.log(\"con \",contact);\n");
      out.write("        \n");
      out.write("        console.log(\"len \",contact.length);\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("function validateForm() {\n");
      out.write("    var name = nameValidate();\n");
      out.write("    var contact = contactValidate();\n");
      out.write("    var email = emailValidate();\n");
      out.write("\tconsole.log(name);\n");
      out.write("\tconsole.log(email);\n");
      out.write("\tif(name === false ){\n");
      out.write("\t\tdocument.forms[\"myForm\"][\"name\"].value = null;\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\tif(email === false){\n");
      out.write("\t\t//document.forms[\"myForm\"][\"email\"].value = null;\n");
      out.write("\t return false;\n");
      out.write("\t}\n");
      out.write("\tif(passStatus === false){\n");
      out.write("\t\t\n");
      out.write("\t return false;\n");
      out.write("\t}\n");
      out.write("\tif(contact === false ){\n");
      out.write("\t\tdocument.forms[\"myForm\"][\"contact\"].value = null;\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\treturn true;\n");
      out.write("}\n");
      out.write("\n");
      out.write("function nameValidate(){\n");
      out.write("\tvar x = document.forms[\"myForm\"][\"name\"].value;\n");
      out.write("    if (x == \"\" || x == null) {\n");
      out.write("        alert(\"Name must be filled out\");\n");
      out.write("    \treturn false;\n");
      out.write("\t}\n");
      out.write("\telse{\n");
      out.write("\t\treturn true;\n");
      out.write("\t}\n");
      out.write("}\n");
      out.write("\n");
      out.write("function emailValidate(){\n");
      out.write("\tvar email = document.forms[\"myForm\"][\"email\"].value;\n");
      out.write("\tvar emailhelp = document.getElementById(\"emailHelp\");\n");
      out.write("\tat = email.indexOf(\"@\");\n");
      out.write("    dot = email.lastIndexOf(\".\");\n");
      out.write("    if(at < 0){\n");
      out.write("    \talert(\"Email should contain @\");\n");
      out.write("    \t//email.setCustomValidity(\"Email should contain @\");\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\tif(dot < 0){\n");
      out.write("\t\talert(\"Email should contain dot (.) \");\n");
      out.write("\t\t//email.setCustomValidity(\"Email should contain (.)\");\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\tconsole.log(\" @ \",at);\n");
      out.write("\tconsole.log(\" . \",dot);\n");
      out.write("    if(at < 1 || (dot - at < 3)){\n");
      out.write("    \talert(\"Invalid email!! Email should have more than two letters after '@'\");\n");
      out.write("\t\treturn false;\n");
      out.write("\n");
      out.write("\t}\n");
      out.write("\treturn true;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("    \n");
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
