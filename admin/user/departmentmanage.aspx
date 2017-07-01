<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.departmentmanage" %>
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
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>用户部门管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btn_reset\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"当前操作可能要运行一段时间，请在此期间不要进行其他的操作。\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"reset\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"用户部门管理,user/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteDepertment(id) {\r\n");
	ViewBuilder.Append("        if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#id\").val(id);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"id\" id=\"id\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td><div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/add.gif) 2px 6px no-repeat\"><a href=\"departmentadd.aspx\">添加</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/run.png) 2px 6px no-repeat\"><a id=\"btn_reset\" href=\"#\">重置</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"departmentmanage.aspx\">刷新</a> </li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>用户部门管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"60\">编号</td>\r\n");
	ViewBuilder.Append("              <td> 部门名称 </td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("              <td> 部门类型 </td>\r\n");
	}//end if
	ViewBuilder.Append("              <td> 部门标识 </td>\r\n");
	ViewBuilder.Append("              <td> 部门描述 </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\"> 添加子部门 </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\"> 部门排序 </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\"> 用户排序 </td>\r\n");
	ViewBuilder.Append("              <td width=\"60\"> 编辑 </td>\r\n");
	ViewBuilder.Append("              <td width=\"60\"> 删除 </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	string tree = "├";

	loop__id=0;
	foreach(Department department in departmentlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(department.id) + " </td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">├\r\n");

	if (department.subcounts>0)
	{
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/usergroups.gif\" width=\"16\" height=\"16\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/users.gif\" width=\"16\" height=\"16\">\r\n");
	}//end if
	ViewBuilder.Append("              " + echo(department.name) + "\r\n");
	ViewBuilder.Append("              </td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("              <td>" + echo(department.TypeString) + "</td>\r\n");
	}//end if
	ViewBuilder.Append("              <td>" + echo(department.markup) + "</td>\r\n");
	ViewBuilder.Append("              <td>" + echo(department.description) + "</td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"departmentadd.aspx?parentid=" + echo(department.id) + "\">添加子部门</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"departmentdisplay.aspx?parentid=" + echo(department.parentid) + "\">部门排序</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"userdisplay.aspx?departid=" + echo(department.id) + "\">用户排序</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"departmentadd.aspx?id=" + echo(department.id) + "\">编辑</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" onclick=\"DeleteDepertment(" + echo(department.id) + ")\" href=\"#\">删除</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            " + ShowChildDepartment(department.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("       </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (action=="reset")
	{

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('" + echo(msg) + "', 2, 1);\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
