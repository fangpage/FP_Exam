<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.usergradeadd" %>
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
	ViewBuilder.Append("<title>添加编辑用户级别</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"usergrademanage.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"用户级别管理,user/usergrademanage.aspx|添加编辑用户等级,user/" + echo(pagename) + "?id=" + echo(id) + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"form1\" name=\"form1\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("    <div>\r\n");
	ViewBuilder.Append("     <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑用户级别</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">等级名称： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"name\" name=\"name\" value=\"" + echo(grade.name) + "\">\r\n");
	ViewBuilder.Append("            <span style=\"color: red\">*</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("         <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">星星个数： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"stars\" name=\"stars\" value=\"" + echo(grade.stars) + "\">\r\n");
	ViewBuilder.Append("            <span style=\"color: red\">*</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">经验下限： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"explower\" name=\"explower\" value=\"" + echo(grade.explower) + "\">\r\n");
	ViewBuilder.Append("            <span style=\"color: red\">*</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">经验上限： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"expupper\" name=\"expupper\" value=\"" + echo(grade.expupper) + "\">\r\n");
	ViewBuilder.Append("            <span style=\"color: red\">*</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">等级描述： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"description\" name=\"description\" value=\"" + echo(grade.description) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td height=\"25\">\r\n");
	ViewBuilder.Append("            <input name=\"btnsubmit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
