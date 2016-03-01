package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html> \n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\n");
      out.write("<title>Metropolitan City Complain System</title>\n");
      out.write("\n");
      out.write("<link href=\"../css training/my website/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<script src=\"SpryAssets/SpryMenuBar.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("<link href=\"SpryAssets/SpryMenuBarHorizontal.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <title>css html layout</title>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\t\n");
      out.write("\t</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("<img src=\"C:\\Users\\Moiz ur Rehman\\Desktop\\my website\\pic2.jpg\" height=\"200\" width=\"100%\">\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<marquee scrollamount=\"20\" onmouseover=\"this.stop();\" onmouseout=\"this.start();\">FOR REGISTERATION CLICK ON REGISTERATION OPTION <BR>IF YOU HAVE A COMPLAIN CLICK ON COMPLAIN FORM</marquee>\n");
      out.write("<nav>\n");
      out.write("  <table align=\"center\" border=\"5\" cellspacing=\"3\" cellpadding=\"3\" width=\"80%\">\n");
      out.write("  <tr>\n");
      out.write("\t<ul id=\"MenuBar1\" class=\"MenuBarHorizontal\" align=\"center\">\n");
      out.write("\t<td>\n");
      out.write("    <a href=\"register.jsp\">REGISTRATION</a>\n");
      out.write("\t</td>\n");
      out.write("\t<td>\n");
      out.write("    <a href=\"Home.jsp\" class=\"MenuBarItemSubmenu\">COMPLAIN</a>\n");
      out.write("\t</td>\n");
      out.write("\t<td>\n");
      out.write("    <a href=\"registration.jsp\">INFORMATION</a>\n");
      out.write("\t</td>\n");
      out.write("\t<td>\n");
      out.write("    <a href=\"img.html\" target=\"_blank\">IMAGES</a>\n");
      out.write("\t</td>\n");
      out.write("  \n");
      out.write("  </tr>\n");
      out.write("  </table>\n");
      out.write("  <form method=\"post\" action=\"\">\n");
      out.write("  <table align=\"center\" border=\"5\" cellspacing=\"3\" cellpadding=\"3\" width=\"80%\">\n");
      out.write("\t<tr>\n");
      out.write("\t<td>\n");
      out.write("\t<h2>\n");
      out.write("\tENTER YOUR CNIC NUMBER:<input type=\"text\" name=\"cnic\" SIZE=\"100\">\n");
      out.write("\t</h2>\n");
      out.write("\t</td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td>\n");
      out.write("\t\t<h1>Enter Your Complain</h1>\n");
      out.write("\t\t<textarea name=\"textarea\" cols=\"100\" rows=\"100\">\n");
      out.write("\t\t</textarea>\n");
      out.write("\t\t</td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td ALIGN=\"CENTER\">\n");
      out.write("\t\t<input type=\"submit\" value=\"SEND COMPLAIN\" SIZE=\"200\">\n");
      out.write("\t\t</td>\n");
      out.write("\t</tr>\n");
      out.write("\t\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td ALIGN=\"CENTER\">\n");
      out.write("\t\t<input type=\"reset\" value=\"RESET\" SIZE=\"200\">\n");
      out.write("\t\t</td>\n");
      out.write("\t</tr>\n");
      out.write("  </table>\n");
      out.write("  </form>\n");
      out.write("</nav>\n");
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
