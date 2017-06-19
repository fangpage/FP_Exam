<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.departmentadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>添加编辑部门</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"departmentmanage.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"用户部门管理,user/departmentmanage.aspx|添加编辑部门,user/" + echo(pagename) + "?id=" + echo(id) + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"aspnetform\" method=\"post\" name=\"aspnetform\" action=\"\">\r\n");
	ViewBuilder.Append("  <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑部门</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("       <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">上级部门： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	string tree = "├";
	ViewBuilder.Append("              <select id=\"parentid\" name=\"parentid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                  <option value=\"0\">根部门</option>\r\n");

	loop__id=0;
	foreach(Department item in departmentlist)
	{
	loop__id++;
	ViewBuilder.Append("                  <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==parentid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">├" + echo(item.name) + "</option>\r\n");
	ViewBuilder.Append("                  " + GetChildDepartment(item.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">部门名称： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"name\" name=\"name\" value=\"" + echo(department.name) + "\">\r\n");
	ViewBuilder.Append("            <span style=\"color: red\">*</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\">部门类型： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("            <select id=\"types\" name=\"types\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("            <option value=\"\">--选择" + echo(types.name) + "--</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("            <option value=\"" + echo(types2.id) + "\" \r\n");

	if (ischecked(types2.id,department.types))
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(types2.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("            </select>\r\n");
	}//end loop
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end if
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">部门标识： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"markup\" name=\"markup\" value=\"" + echo(department.markup) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">部门描述： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"description\" name=\"description\" value=\"" + echo(department.description) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td height=\"25\"><input name=\"submit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
