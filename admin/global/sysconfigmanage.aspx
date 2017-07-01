<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.sysconfigmanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>系统基础配置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("    <script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            PageNav(\"系统基础配置,global/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">系统基础配置</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 系统默认访问站点： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\">\r\n");
	ViewBuilder.Append("                        <select id=\"mainsite\" name=\"mainsite\">\r\n");
	ViewBuilder.Append("                            <option value=\"\">空白站点</option>\r\n");

	loop__id=0;
	foreach(SiteConfig sites in sitelist)
	{
	loop__id++;
	ViewBuilder.Append("                            <option value=\"" + echo(sites.sitepath) + "\" \r\n");

	if (sites.sitepath==mainsite)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(sites.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                        </select>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 系统后台标题名称： </td>\r\n");
	ViewBuilder.Append("                    <td><input name=\"admintitle\" type=\"text\" value=\"" + echo(sysconfiginfo.admintitle) + "\" id=\"admintitle\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 登录在线过期时间： </td>\r\n");
	ViewBuilder.Append("                    <td><input name=\"onlinetimeout\" type=\"text\" value=\"" + echo(sysconfiginfo.onlinetimeout) + "\" id=\"onlinetimeout\" style=\"height:21px;width:400px;\">&nbsp;分钟</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 刷新用户在线频率： </td>\r\n");
	ViewBuilder.Append("                    <td><input name=\"delonlinefrequency\" type=\"text\" value=\"" + echo(sysconfiginfo.onlinefrequency) + "\" id=\"onlinefrequency\" style=\"height:21px;width:400px;\">&nbsp;分钟</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 身份验证Cookie域： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"cookiedomain\" type=\"text\" value=\"" + echo(sysconfiginfo.cookiedomain) + "\" id=\"cookiedomain\" style=\"width:400px;\">&nbsp;同一主域名下身份共享Cookie\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 使用验证码的页面： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"verifypage\" type=\"text\" value=\"" + echo(sysconfiginfo.verifypage) + "\" id=\"verifypage\" style=\"width:400px;\">&nbsp;多个页面请用英文的\"|\"号隔开\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 自定义错误的页面： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"customerrors\" type=\"text\" value=\"" + echo(sysconfiginfo.customerrors) + "\" id=\"customerrors\" style=\"width:400px;\">&nbsp;多个页面请用英文的\"|\"号隔开\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 系统不支持IE版本： </td>\r\n");
	ViewBuilder.Append("                    <td><input name=\"disableie\" type=\"checkbox\" value=\"ie6\" id=\"disableie6\" \r\n");

	if (ischecked("ie6",sysconfiginfo.disableie))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">IE6&nbsp;<input name=\"disableie\" type=\"checkbox\" value=\"ie7\" id=\"disableie7\" \r\n");

	if (ischecked("ie7",sysconfiginfo.disableie))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">IE7&nbsp;\r\n");
	ViewBuilder.Append("                        <input name=\"disableie\" type=\"checkbox\" value=\"ie8\" id=\"disableie8\" \r\n");

	if (ischecked("ie8",sysconfiginfo.disableie))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">IE8&nbsp;<input name=\"disableie\" type=\"checkbox\" value=\"ie9\" id=\"disableie9\" \r\n");

	if (ischecked("ie9",sysconfiginfo.disableie))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">IE9&nbsp;\r\n");
	ViewBuilder.Append("                        <input name=\"disableie\" type=\"checkbox\" value=\"ie10\" id=\"disableie10\" \r\n");

	if (ischecked("ie10",sysconfiginfo.disableie))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">IE10&nbsp;<input name=\"disableie\" type=\"checkbox\" value=\"ie11\" id=\"disableie11\" \r\n");

	if (ischecked("ie11",sysconfiginfo.disableie))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">IE11&nbsp;\r\n");
	ViewBuilder.Append("                        <input name=\"disableie\" type=\"checkbox\" value=\"ie12\" id=\"disableie12\" \r\n");

	if (ischecked("ie12",sysconfiginfo.disableie))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(">IE12&nbsp;&nbsp;如果选择不支持的IE版本，系统将提示浏览器下载页面。\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 是否记录操作日志： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input id=\"allowlog1\" name=\"allowlog\" type=\"radio\" \r\n");

	if (sysconfiginfo.allowlog==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">开&nbsp;<input id=\"allowlog0\" name=\"allowlog\" type=\"radio\" \r\n");

	if (sysconfiginfo.allowlog==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">关&nbsp;&nbsp;为了提高系统的安全性，在站点稳定上线之后请开启。\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 浏览自动编译模板： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input id=\"browsecreatesite1\" name=\"browsecreatesite\" type=\"radio\" \r\n");

	if (sysconfiginfo.browsecreatesite==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">开&nbsp;<input id=\"browsecreatesite0\" name=\"browsecreatesite\" type=\"radio\" \r\n");

	if (sysconfiginfo.browsecreatesite==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">关&nbsp;&nbsp;为了提高系统性能，在站点稳定上线之后请关闭。\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 系统详细错误提示： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input id=\"customerror1\" name=\"customerror\" type=\"radio\" \r\n");

	if (customerror==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">开&nbsp;<input id=\"customerror0\" name=\"customerror\" type=\"radio\" \r\n");

	if (customerror==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">关&nbsp;&nbsp;为了提高系统的安全性，在系统调试完之后请关闭详细错误提示。\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 系统登录维一模式： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input id=\"loginonce1\" name=\"loginonce\" type=\"radio\" \r\n");

	if (sysconfiginfo.loginonce==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">开&nbsp;<input id=\"loginonce0\" name=\"loginonce\" type=\"radio\" \r\n");

	if (sysconfiginfo.loginonce==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">关&nbsp;&nbsp;系统登录维一性，如果系统在别的地方登录则进行提示。\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 系统登录验证方式： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input id=\"logincheck0\" name=\"logincheck\" type=\"radio\" \r\n");

	if (sysconfiginfo.logincheck==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">本地登录验证&nbsp;<input id=\"logincheck1\" name=\"logincheck\" type=\"radio\" \r\n");

	if (sysconfiginfo.logincheck==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">单点登录验证&nbsp;&nbsp;如果选择单点登录，请点击这里前往<a style=\"color:#ff0000\" href=\"ssoconfigs.aspx\">[单点登录配置]</a>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 系统跨域请求模式： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input id=\"acctype0\" name=\"acctype\" type=\"radio\" \r\n");

	if (sysconfiginfo.acctype==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">经典模式&nbsp;<input id=\"acctype1\" name=\"acctype\" type=\"radio\" \r\n");

	if (sysconfiginfo.acctype==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">集成模式&nbsp;&nbsp;在AJAX请求时系统提供的跨域请求模式，IIS7下请改为集成模式。\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input type=\"submit\" name=\"btnSave\" value=\"保存\" id=\"btnSave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <br>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

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

	if (backurl!="")
	{
	ViewBuilder.Append("            window.location.href = \"" + echo(backurl) + "\";\r\n");
	}
	else
	{
	ViewBuilder.Append("            window.location.href = \"" + echo(pageurl) + "\";\r\n");
	}//end if
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
