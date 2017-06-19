<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Web.Controller.userprofile" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Web" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html lang=\"zh-CN\" class=\"default-layout\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>个人信息|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/login.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#sumitreg\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".gradient {\r\n");
	ViewBuilder.Append("    filter: none;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <div class=\"wrap\">\r\n");
	ViewBuilder.Append("<div class=\"repeat-x default-t\">\r\n");
	ViewBuilder.Append("    <div class=\"header-left layout default-lt\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"header-right layout default-rt\"></div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"default-left repeat-y default-l\"></div>\r\n");
	ViewBuilder.Append("<div class=\"default-right repeat-y default-r\"></div>\r\n");
	ViewBuilder.Append("<div class=\"header\">\r\n");
	ViewBuilder.Append("    <div class=\"navbar-hd clearfix\">\r\n");
	ViewBuilder.Append("        <div class=\"pull-left nav-bar-links\" style=\"width:600px;\">\r\n");
	ViewBuilder.Append("            <a href=\"index.aspx\" class=\"course-link course-menu-trigger\" style=\"color:#ffffff;width:600px;\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/logo_top.png\" style=\"width:32px;height:32px;\"><strong>" + echo(sitetitle) + "，版本：V" + echo(version) + "</strong></a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"pull-right navbar-links\">\r\n");
	ViewBuilder.Append("            <a href=\"profile.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-profile i-20\"></span>" + echo(user.realname) + "</a>\r\n");
	ViewBuilder.Append("            <a href=\"userpwd.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-password i-20\"></span>修改密码</a>\r\n");

	if (isadmin)
	{
	ViewBuilder.Append("            <a href=\"" + echo(adminpath) + "index.aspx\" target=\"_blank\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-admin i-20\"></span>系统后台</a>\r\n");
	}//end if
	ViewBuilder.Append("            <a href=\"logout.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-logout i-20\"></span>退出系统</a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"navbar-bd\">\r\n");
	ViewBuilder.Append("        <div class=\"container\">\r\n");
	ViewBuilder.Append("            <div class=\"logo\" style=\"width:220px;\">\r\n");
	ViewBuilder.Append("               <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/logo.png\" height=\"32\" width=\"220\" alt=\"" + echo(siteinfo.name) + "\">\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <ul class=\"nav main-nav\">\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="index.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"index.aspx\">首页</a></li>\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="examreport.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"examreport.aspx\">能力评估报告</a></li>\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="examhistory.aspx"||pagename=="incorrect.aspx"||pagename=="examnote.aspx"||pagename=="favorite.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"examhistory.aspx\">考试历史</a></li>\r\n");

	if (pagename=="newslist.aspx"||pagename=="newsinfo.aspx")
	{
	ViewBuilder.Append("                <li class=\"active\"><a href=\"newslist.aspx?channelid=3\">在线课程</a></li>\r\n");
	}
	else if (pagename=="examlist-2.aspx")
	{
	ViewBuilder.Append("                <li class=\"active\"><a href=\"newslist.aspx?channelid=3\">模拟考试</a></li>\r\n");
	}
	else if (pagename=="examlist-4.aspx")
	{
	ViewBuilder.Append("                <li class=\"active\"><a href=\"newslist.aspx?channelid=3\">正式考试</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-l\"></span>\r\n");
	ViewBuilder.Append("    <div class=\"header-shadow\"></div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-r\"></span>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("        <div class=\"container body-wrap main\">\r\n");
	ViewBuilder.Append("            <div class=\"box-wrap history-wrap\">\r\n");
	ViewBuilder.Append("                <h1 class=\"page-header first\"><span class=\"text\"><span class=\"sprite sprite-key\"></span>个人信息</span>\r\n");
	ViewBuilder.Append("                <hr>\r\n");
	ViewBuilder.Append("            </h1>\r\n");
	ViewBuilder.Append("            <div class=\"row\">\r\n");
	ViewBuilder.Append("                <div class=\"span8 offset4 signup-form-wrap form-wrap\">\r\n");
	ViewBuilder.Append("                    <form id=\"frmpost\" name=\"frmpost\" method=\"post\" action=\"\" class=\"form\">\r\n");
	ViewBuilder.Append("                        <div class=\"form-content\">\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"password\">登录帐号：</label>\r\n");
	ViewBuilder.Append("                                <span>\r\n");
	ViewBuilder.Append("                                    " + echo(fulluserinfo.username) + "\r\n");
	ViewBuilder.Append("                                </span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"repeat\">真实姓名：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"realname\" name=\"realname\" type=\"text\" value=\"" + echo(fulluserinfo.realname) + "\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"repeat\">性别：</label>\r\n");
	ViewBuilder.Append("                                <span>\r\n");
	ViewBuilder.Append("                                  <select id=\"sex\" class=\"span2\" name=\"sex\">\r\n");
	ViewBuilder.Append("                                    <option \r\n");

	if (fulluserinfo.sex==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">女</option>\r\n");
	ViewBuilder.Append("                                    <option \r\n");

	if (fulluserinfo.sex==1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">男</option>\r\n");
	ViewBuilder.Append("                                    <option \r\n");

	if (fulluserinfo.sex==-1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"-1\">保密</option>\r\n");
	ViewBuilder.Append("                                  </select>\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"repeat\">手机号码：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"mobile\" name=\"mobile\" maxlength=\"50\" value=\"" + echo(fulluserinfo.mobile) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"repeat\">邮箱地址：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"email\" class=\"span5\" name=\"email\" maxlength=\"50\" value=\"" + echo(fulluserinfo.email) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"button-row\">\r\n");
	ViewBuilder.Append("                            <button type=\"submit\" class=\"visible-hidden\"></button>\r\n");
	ViewBuilder.Append("                            <span id=\"sumitreg\" class=\"btn btn-primary fir-wrap submit-button\"><span class=\"btn-inner\"><span class=\"fir fir-btn-normal-submit\"><span class=\"fir-text\">确定</span></span></span></span>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </form>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("<div class=\"footer repeat-x default-b\">\r\n");
	ViewBuilder.Append("    <div class=\"footer-left layout default-lb\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"footer-right layout default-rb\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"container\">\r\n");
	ViewBuilder.Append("        <div class=\"links\">\r\n");
	ViewBuilder.Append("            <p class=\"text-center\">\r\n");
	ViewBuilder.Append("               Copyright &copy; " + echo(verdate) + " <a target=\"_blank\" href=\"" + echo(siteinfo.homepage) + "\">" + echo(siteinfo.copyright) + "</a>&nbsp;&nbsp;版权所有，版本：V" + echo(version) + "\r\n");
	ViewBuilder.Append("            </p>\r\n");

	if (siteinfo.notes!="")
	{
	ViewBuilder.Append("            <p class=\"text-center\">" + echo(siteinfo.notes) + "</p>\r\n");
	}//end if
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("    </div>\r\n");

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
	ViewBuilder.Append("            window.location.href = \"" + echo(pagename) + "\";\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
