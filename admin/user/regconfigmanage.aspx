<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.regconfigmanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>用户注册配置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkdel]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btnsave\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"save\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"用户注册配置,user/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">用户注册配置</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 用户注册： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"regstatus\" name=\"regstatus\" value=\"1\" \r\n");

	if (regconfig.regstatus==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">&nbsp;是否允许站点用户注册\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 电子邮箱： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"email\" name=\"email\" value=\"1\" \r\n");

	if (regconfig.email==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">&nbsp;电子邮箱是否是必填项</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 手机号码： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"mobile\" name=\"mobile\" value=\"1\" \r\n");

	if (regconfig.mobile==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">&nbsp;手机号码是否是必填项</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 真实姓名： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"realname\" name=\"realname\" value=\"1\" \r\n");

	if (regconfig.realname==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">&nbsp;真实姓名是否是必填项</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 用户部门： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"depart\" name=\"depart\" value=\"1\" \r\n");

	if (regconfig.depart==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">&nbsp;用户部门是否是必填项</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册条款： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"rules\" name=\"rules\" value=\"1\" \r\n");

	if (regconfig.rules==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">&nbsp;注册条款是否是必选项</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 验证方式： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"regverify\" name=\"regverify\" value=\"0\" \r\n");

	if (regconfig.regverify==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">无\r\n");
	ViewBuilder.Append("                <input id=\"regverify\" name=\"regverify\" value=\"1\" \r\n");

	if (regconfig.regverify==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">人工\r\n");
	ViewBuilder.Append("                <input id=\"regverify\" name=\"regverify\" value=\"2\" \r\n");

	if (regconfig.regverify==2)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">邮件\r\n");
	ViewBuilder.Append("                <input id=\"regverify\" name=\"regverify\" value=\"3\" \r\n");

	if (regconfig.regverify==3)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">短信\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册积分： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"credit\" name=\"credit\" type=\"text\" value=\"" + echo(regconfig.credit) + "\" style=\"height:21px;width:303px;\">&nbsp;&nbsp;用户注册成功后默认得多少个积分\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册间隔时间： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"regctrl\" name=\"regctrl\" type=\"text\" value=\"" + echo(regconfig.regctrl) + "\" style=\"height:21px;width:303px;\">&nbsp;&nbsp;小时</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 屏蔽注册关键字： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <textarea name=\"restrict\" rows=\"5\" cols=\"30\" id=\"restrict\" style=\"height:80px;width:300px;\">" + echo(regconfig.restrict) + "</textarea>\r\n");
	ViewBuilder.Append("            &nbsp;多个关键字请用英文的\"|\"号隔开\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 屏蔽IP注册： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <textarea name=\"ipregctrl\" rows=\"5\" cols=\"30\" id=\"ipregctrl\" style=\"height:80px;width:300px;\">" + echo(regconfig.ipregctrl) + "</textarea>\r\n");
	ViewBuilder.Append("            &nbsp;多个IP请用英文的\"|\"号隔开，支持IP段通配符\"*\"\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> Email允许地址： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <textarea name=\"accessemail\" rows=\"5\" cols=\"30\" id=\"accessemail\" style=\"height:80px;width:300px;\">" + echo(regconfig.accessemail) + "</textarea>\r\n");
	ViewBuilder.Append("            &nbsp;多个Email请用英文的\"|\"号隔开\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> Email禁止地址： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <textarea name=\"censoremail\" rows=\"5\" cols=\"30\" id=\"censoremail\" style=\"height:80px;width:300px;\">" + echo(regconfig.censoremail) + "</textarea>\r\n");
	ViewBuilder.Append("            &nbsp;多个Email请用英文的\"|\"号隔开\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnsave\" value=\"保存\" id=\"btnsave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <br>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('更新成功!', 2, 1);\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
