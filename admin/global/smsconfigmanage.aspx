<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.smsconfigmanage" %>
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
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>短信服务器配置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("    <script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $(\"#btnsave\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"save\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            $(\"#btnsend\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"send\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            PageNav(\"短信服务器配置," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("      <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul id=\"mytab1\">\r\n");
	ViewBuilder.Append("            <li class=\"normal\"><a href=\"emailconfigmanage.aspx\">邮箱服务器</a> </li>\r\n");
	ViewBuilder.Append("            <li class=\"normal\"><a href=\"msgtemplatemanage.aspx?type=1\">邮件模板管理</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"active\"><a href=\"smsconfigmanage.aspx\">短信服务器</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"normal\"><a href=\"msgtemplatemanage.aspx?type=2\">短信模板管理</a> </li>\r\n");
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">短信服务器配置</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("            <td class=\"tdbg\">\r\n");
	ViewBuilder.Append("            <table cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" border=\"0\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 短信服务器： </td>\r\n");
	ViewBuilder.Append("                    <td>\r\n");
	ViewBuilder.Append("                        <input name=\"server\" type=\"text\" value=\"" + echo(smsconfig.server) + "\" id=\"server\" style=\"height:21px;width:300px;\">\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 服务器端口： </td>\r\n");
	ViewBuilder.Append("                    <td>\r\n");

	if (smsconfig.port==0)
	{
	ViewBuilder.Append("                        <input name=\"port\" type=\"text\" value=\"\" id=\"port\" style=\"height:21px;width:300px;\">\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <input name=\"port\" type=\"text\" value=\"" + echo(smsconfig.port) + "\" id=\"port\" style=\"height:21px;width:300px;\">\r\n");
	}//end if
	ViewBuilder.Append("                        如果是Web提交方式，请把端口设置为空\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 短信账号： </td>\r\n");
	ViewBuilder.Append("                    <td>\r\n");
	ViewBuilder.Append("                        <input name=\"account\" type=\"text\" value=\"" + echo(smsconfig.account) + "\" id=\"account\" style=\"height:21px;width:300px;\">\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 账号密码： </td>\r\n");
	ViewBuilder.Append("                    <td><input name=\"password\" type=\"password\" value=\"" + echo(smsconfig.password) + "\" id=\"password\" style=\"height:21px;width:300px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 返回结果： </td>\r\n");
	ViewBuilder.Append("                    <td><input name=\"result\" type=\"text\" value=\"" + echo(smsconfig.result) + "\" id=\"result\" style=\"height:21px;width:300px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 测试发送： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input id=\"phone\" name=\"phone\" type=\"text\" value=\"" + echo(phone) + "\" style=\"height:21px;width:300px;\">&nbsp;输入接收测试短信的手机号码</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\">\r\n");
	ViewBuilder.Append("                    <input type=\"button\" name=\"btnsave\" value=\"保存\" id=\"btnsave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                    <input type=\"button\" name=\"btnsend\" value=\"测试发送\" id=\"btnsend\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("              </table></td>\r\n");
	ViewBuilder.Append("          </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('" + echo(msg) + "', 2, 1);\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
