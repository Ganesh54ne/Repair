package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class tempadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       \n");
      out.write("                <h2>Status</h2>\n");
      out.write("                <div class=\"container\">\n");
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
      out.write("                    <br>\n");
      out.write("                    <div class=\"container\">    \n");
      out.write("                         <hr class=\"style18\">\n");
      out.write("                    </div>\n");
      out.write("                    <center>\n");
      out.write("                        <a href=\"repair.jsp\"><button class=\"btn btn-primary\">Repair Docs Insert</button></a><br><br><br>    \n");
      out.write("                        <a href=\"repairshow.jsp\"><button class=\"btn btn-primary\">Repair Docs Show</button></a><br><br><br> \n");
      out.write("                        <a href=\"employee.jsp\"><button class=\"btn btn-primary\">Employee Registration</button></a><br><br><br> \n");
      out.write("                        <a href=\"employeeshow.jsp\"><button class=\"btn btn-primary\">Employee Records</button></a><br><br><br> \n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
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
