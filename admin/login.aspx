<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Web.Controller.login" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Web" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta content=\"IE=edge,chrome=1\" http-equiv=\"X-UA-Compatible\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");

	if (isfree>=0)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var _hmt = _hmt || [];\r\n");
	ViewBuilder.Append("    (function () {\r\n");
	ViewBuilder.Append("        var hm = document.createElement(\"script\");\r\n");
	ViewBuilder.Append("        hm.src = \"//hm.baidu.com/hm.js?35483845f92e384129fb5d03f9d7c3cf\";\r\n");
	ViewBuilder.Append("        var s = document.getElementsByTagName(\"script\")[0];\r\n");
	ViewBuilder.Append("        s.parentNode.insertBefore(hm, s);\r\n");
	ViewBuilder.Append("    })();\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append("html {\r\n");
	ViewBuilder.Append("	height:100%;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("body {\r\n");
	ViewBuilder.Append("	height:100%;\r\n");
	ViewBuilder.Append("	font-family:Arial, Helvetica, sans-serif;\r\n");
	ViewBuilder.Append("	font-size:14px;\r\n");
	ViewBuilder.Append("	color:#434343;\r\n");
	ViewBuilder.Append("	margin:0;\r\n");
	ViewBuilder.Append("	padding:0;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("div, form, img, ul, ol, li, dl, dt, dd {\r\n");
	ViewBuilder.Append("	margin:0;\r\n");
	ViewBuilder.Append("	padding:0;\r\n");
	ViewBuilder.Append("	border:0;\r\n");
	ViewBuilder.Append("	list-style:none;\r\n");
	ViewBuilder.Append("	overflow:hidden;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("a {\r\n");
	ViewBuilder.Append("	text-decoration:none;\r\n");
	ViewBuilder.Append("    color:#ffffff;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".login_te {\r\n");
	ViewBuilder.Append("	width:150px;\r\n");
	ViewBuilder.Append("	border:0px solid #000000;\r\n");
	ViewBuilder.Append("	background:#0e296a;\r\n");
	ViewBuilder.Append("	color:#ffffff;\r\n");
	ViewBuilder.Append("	font-size:16px;\r\n");
	ViewBuilder.Append("	font-weight:bold;\r\n");
	ViewBuilder.Append("	margin:3px 0 0 35px;\r\n");
	ViewBuilder.Append("    +margin:3px 0 0 25px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    layer.msg('" + echo(msg) + "', 0, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 80) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            window.location.href = \"index.aspx\";\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}
	else
	{
	ViewBuilder.Append("<table width=\"100%\" height=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	ViewBuilder.Append("  <tr>\r\n");
	ViewBuilder.Append("    <td align=\"center\" valign=\"bottom\" style=\"+height: 38%; _height: 32%; background: #014397 url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_head.jpg) repeat-x bottom;\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/login_logo.jpg\" width=\"900\" height=\"120\"></td>\r\n");
	ViewBuilder.Append("  </tr>\r\n");
	ViewBuilder.Append("  <tr>\r\n");
	ViewBuilder.Append("    <td height=\"230\" align=\"center\" valign=\"top\">\r\n");
	ViewBuilder.Append("    <form name=\"loginpost\" id=\"loginpost\" action=\"login.aspx\" method=\"post\">\r\n");
	ViewBuilder.Append("        <table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("            <td width=\"370\" valign=\"top\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_pic.jpg\" width=\"370\" height=\"230\"></td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td width=\"60\" style=\"font-size: 16px; font-weight: bold; color: #0e296a;text-align:center;\"> 用户: </td>\r\n");
	ViewBuilder.Append("                  <td width=\"220\" align=\"left\" height=\"32\" valign=\"top\" style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_textfiled01.gif) no-repeat;\"><input type=\"text\" name=\"username\" id=\"username\" value=\"\" class=\"login_te\"></td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td height=\"10\"></td>\r\n");
	ViewBuilder.Append("                  <td></td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td style=\"font-size: 16px; font-weight: bold; color: #0e296a;text-align:center;\"> 密码: </td>\r\n");
	ViewBuilder.Append("                  <td height=\"32\" align=\"left\" valign=\"top\" style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_textfiled02.gif) no-repeat;\"><input type=\"password\" name=\"password\" id=\"password\" value=\"\" class=\"login_te\"></td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td height=\"60\">&nbsp;</td>\r\n");
	ViewBuilder.Append("                  <td align=\"left\">\r\n");
	ViewBuilder.Append("                      <input type=\"image\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_bu01.gif\" width=\"78\" height=\"29\"> \r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("              </table>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("          </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </form>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("  </tr>\r\n");
	ViewBuilder.Append("  <tr>\r\n");
	ViewBuilder.Append("    <td align=\"center\" valign=\"top\" style=\"+height: 38%; _height: 32%; background: #0d296a url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_foot.jpg) repeat-x top; color: #ffffff;\">\r\n");
	ViewBuilder.Append("        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td height=\"120\" align=\"center\" valign=\"top\" style=\"padding: 30px 0 0 0;\">\r\n");
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_line01.gif\">\r\n");
	ViewBuilder.Append("              &nbsp;&nbsp;Copyright © 2014-" + echo(verdate) + " <a href=\"" + echo(siteinfo.homepage) + "\" target=\"_blank\">" + echo(siteinfo.copyright) + "</a>&nbsp;版权所有，后台版本:V" + echo(version) + "\r\n");
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/login_line02.gif\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("  </tr>\r\n");
	ViewBuilder.Append("</table>\r\n");
	}//end if
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
