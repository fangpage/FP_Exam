<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.usersearch" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>查询用户</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btnok\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("        <input id=\"keyword\" name=\"keyword\" value=\"" + echo(keyword) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnok\" value=\"搜索\" id=\"btnok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("     </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"30\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	  <td>登录名</td>\r\n");
	ViewBuilder.Append("        	  <td>姓名</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(UserInfo item in userlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td>\r\n");
	ViewBuilder.Append("                   <input id=\"chkid\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td>" + echo(item.username) + "</td>\r\n");
	ViewBuilder.Append("               <td>" + echo(item.realname) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("       </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
