/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.16
 * Generated at: 2019-06-13 07:27:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.common;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import hippe.member.dto.MemberDto;

public final class hippe_005fheader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1560410472923L));
    _jspx_dependants.put("jar:file:/C:/workspace_project2/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Hippe/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("hippe.member.dto.MemberDto");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fchoose;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fotherwise;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fchoose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fotherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fchoose.release();
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fotherwise.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title></title>\n");
      out.write("</head>\n");
      out.write("<!--booststrap-->\n");
      out.write("  <link href=\"../resources/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("  <!--//booststrap end-->\n");
      out.write("  <!-- font-awesome icons -->\n");
      out.write("  <link href=\"../resources/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("  <!-- //font-awesome icons -->\n");
      out.write("  <!--stylesheets-->\n");
      out.write("  <link href=\"/Hippe/resources/css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("  <!--//stylesheets-->\n");
      out.write("  <link href=\"//fonts.googleapis.com/css?family=Josefin+Sans:400,600,700\" rel=\"stylesheet\">\n");
      out.write("  <link href=\"//fonts.googleapis.com/css?family=Libre+Franklin:400,500\" rel=\"stylesheet\">\n");
      out.write("  <style>\n");
      out.write("  .btnHead{\n");
      out.write("\tdisplay: block;\n");
      out.write("    padding: 6px 17px;\n");
      out.write("    font-size: 14px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    border: 1px solid white;\n");
      out.write("    float: right;\n");
      out.write("    margin: 0px 0px;\n");
      out.write("    background-color: #59CAB7;\n");
      out.write("    color: #fff;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    cursor: pointer;\n");
      out.write("  }\n");
      out.write("</style>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("addEventListener(\"load\", function () {\n");
      out.write("  setTimeout(hideURLbar, 0);\n");
      out.write("}, false);\n");
      out.write("\n");
      out.write("function hideURLbar() {\n");
      out.write("  window.scrollTo(0, 1);\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<body>\n");
      out.write("<div id=\"home\">\n");
      out.write("<!-- header -->\n");
      out.write("    <div class=\"headder-top d-md-flex\">\n");
      out.write("      <div id=\"logo\">\n");
      out.write("        <h1>\n");
      out.write("          <a href=\"http://localhost:8787/Hippe/hippe_main/hippe_main.jsp\">Hippe</a>\n");
      out.write("        </h1>\n");
      out.write("      </div>\n");
      out.write("      <!-- nav -->\n");
      out.write("      <nav class=\"mx-md-auto\">\n");
      out.write("\n");
      out.write("        <label for=\"drop\" class=\"toggle\">Menu</label>\n");
      out.write("        <input type=\"checkbox\" id=\"drop\">\n");
      out.write("        <ul class=\"menu mt-2\">\n");
      out.write("          <li>\n");
      out.write("            <a href=\"/Hippe/festivalController.do?command=list\">Fesitval</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("          \t<a href=\"/Hippe/festivalController.do?command=ticketbox\">Ticket</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"/Hippe/freeController.do?command=review\">Review</a>\n");
      out.write("          </li>\n");
      out.write("            <!-- 게시판 관련 -->\n");
      out.write("           <li>\n");
      out.write("            <label for=\"drop-2\" class=\"toggle toogle-2\">Board\n");
      out.write("              <span class=\"fa fa-angle-down\" aria-hidden=\"true\"></span>\n");
      out.write("            </label>\n");
      out.write("            <a href=\"/Hippe//freeController.do?command=list\">Board\n");
      out.write("              <span class=\"fa fa-angle-down\" aria-hidden=\"true\"></span>\n");
      out.write("            </a>\n");
      out.write("            <input type=\"checkbox\" id=\"drop-2\">\n");
      out.write("            <ul>\n");
      out.write("              <li>\n");
      out.write("                <a href=\"/Hippe//freeController.do?command=list\" class=\"drop-text\">자유게시판</a>\n");
      out.write("              </li>\n");
      out.write("              <li>\n");
      out.write("                <a href=\"/Hippe/eventController.do?command=eventlist\" class=\"drop-text\">이벤트</a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("            <!-- Mypage -->\n");
      out.write("           <li>\n");
      out.write("            <label for=\"drop-2\" class=\"toggle toogle-2\">MyPage\n");
      out.write("              <span class=\"fa fa-angle-down\" aria-hidden=\"true\"></span>\n");
      out.write("            </label>\n");
      out.write("            <a href=\"/Hippe/memberController.do?command=mypage\">MyPage\n");
      out.write("              <span class=\"fa fa-angle-down\" aria-hidden=\"true\"></span>\n");
      out.write("            </a>\n");
      out.write("            <input type=\"checkbox\" id=\"drop-2\">\n");
      out.write("            <ul>\n");
      out.write("              <li>\n");
      out.write("                <a href=\"#gallery\" class=\"drop-text\">회원정보수정</a>\n");
      out.write("              </li>\n");
      out.write("              <li>\n");
      out.write("                <a href=\"#blog\" class=\"drop-text\">예약확인/취소</a>\n");
      out.write("              </li>\n");
      out.write("              <li>\n");
      out.write("                <a href=\"#gallery\" class=\"drop-text\">관심상품</a>\n");
      out.write("              </li>\n");
      out.write("              <li>\n");
      out.write("                <a href=\"#contact\" class=\"drop-text\">고객센터</a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("      <div class=\"social-icons\">\n");
      out.write("        <ul>\n");
      out.write("        ");
      if (_jspx_meth_c_005fchoose_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("      <!-- //nav -->\n");
      out.write("    </div>\n");
      out.write("    <!-- //header -->\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("<script type=\"text/javascript\" src=\"http://code.jquery.com/jquery-3.4.0.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("    function gotoLogin(){\n");
      out.write("    \tlocation.href=\"/Hippe/memberController.do?command=loginBtn\";\n");
      out.write("    }\n");
      out.write("    function gotoSignup(){\n");
      out.write("    \tlocation.href=\"/Hippe/memberController.do?command=signupBtn\";\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    function gotoLogout(){\n");
      out.write("    \tvar conf = confirm('로그아웃하시겠습니까?');\n");
      out.write("    \tif(conf){\n");
      out.write("\t    ");
	session.removeAttribute("id");  
      out.write("\n");
      out.write("\t\t\tlocation.href = '/Hippe/memberController.do?command=main';\n");
      out.write("    \t}\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fchoose_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_005fchoose_005f0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _005fjspx_005ftagPool_005fc_005fchoose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    boolean _jspx_th_c_005fchoose_005f0_reused = false;
    try {
      _jspx_th_c_005fchoose_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fchoose_005f0.setParent(null);
      int _jspx_eval_c_005fchoose_005f0 = _jspx_th_c_005fchoose_005f0.doStartTag();
      if (_jspx_eval_c_005fchoose_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        ");
          if (_jspx_meth_c_005fwhen_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
            return true;
          out.write("\n");
          out.write("          ");
          if (_jspx_meth_c_005fotherwise_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
            return true;
          out.write("\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_005fchoose_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fchoose_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
      _jspx_th_c_005fchoose_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fchoose_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fchoose_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fwhen_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_005fwhen_005f0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    boolean _jspx_th_c_005fwhen_005f0_reused = false;
    try {
      _jspx_th_c_005fwhen_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fwhen_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      // /common/hippe_header.jsp(117,8) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fwhen_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty id}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fwhen_005f0 = _jspx_th_c_005fwhen_005f0.doStartTag();
      if (_jspx_eval_c_005fwhen_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("          <li>\n");
          out.write("          \t  <label class=\"btnHead\" id=\"login\" onclick=\"gotoLogin()\">Login</label>\n");
          out.write("          </li>\n");
          out.write("          <li>\n");
          out.write("          \t  <label class=\"btnHead\" id=\"signup\" onclick=\"gotoSignup()\">Signup</label>\n");
          out.write("          </li>\n");
          out.write("          ");
          int evalDoAfterBody = _jspx_th_c_005fwhen_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fwhen_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
      _jspx_th_c_005fwhen_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fwhen_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fwhen_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fotherwise_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_005fotherwise_005f0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _005fjspx_005ftagPool_005fc_005fotherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    boolean _jspx_th_c_005fotherwise_005f0_reused = false;
    try {
      _jspx_th_c_005fotherwise_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fotherwise_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      int _jspx_eval_c_005fotherwise_005f0 = _jspx_th_c_005fotherwise_005f0.doStartTag();
      if (_jspx_eval_c_005fotherwise_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("          <li>\n");
          out.write("          \t  <label class=\"btnHead\" id=\"logout\" onclick=\"gotoLogout()\">Logout</label>\n");
          out.write("          </li>\n");
          out.write("          ");
          int evalDoAfterBody = _jspx_th_c_005fotherwise_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fotherwise_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
      _jspx_th_c_005fotherwise_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fotherwise_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fotherwise_005f0_reused);
    }
    return false;
  }
}