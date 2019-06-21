<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.typemanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>系统分类管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"系统分类管理," + echo(rawpath) + "typemanage.aspx\");\r\n");
	ViewBuilder.Append("        $(\"#btnsave\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"order\");\r\n");
	ViewBuilder.Append("            $(\"#formpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"typemanage.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteType(id) {\r\n");
	ViewBuilder.Append("        if (confirm(\"你确定要删除吗？删除后将无法进行恢复。\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#id\").val(id);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"id\" id=\"id\" value=\"\"> \r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr><td>\r\n");
	ViewBuilder.Append("    <div class=\"newslist\">\r\n");
	ViewBuilder.Append("      <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");
	ViewBuilder.Append("            <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/add.gif) 2px 6px no-repeat\"><a href=\"typeadd.aspx\">添加</a></li>\r\n");
	ViewBuilder.Append("            <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"typemanage.aspx\">刷新</a></li>\r\n");
	ViewBuilder.Append("            <li style=\"float:right; width:auto\"><strong>系统分类管理</strong></li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr><td>\r\n");
	ViewBuilder.Append("   <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("        <tr class=\"thead\">\r\n");
	ViewBuilder.Append("            <td width=\"60\">分类ID</td>\r\n");
	ViewBuilder.Append("            <td>分类名称</td>\r\n");
	ViewBuilder.Append("            <td>分类标识</td>\r\n");
	ViewBuilder.Append("            <td>选项类型</td>\r\n");
	ViewBuilder.Append("            <td>分类描述</td>\r\n");
	ViewBuilder.Append("            <td width=\"80\">添加子分类</td>\r\n");
	ViewBuilder.Append("            <td width=\"40\">编辑</td>\r\n");
	ViewBuilder.Append("            <td width=\"40\">排序</td>\r\n");
	ViewBuilder.Append("            <td width=\"40\">删除</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("        <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("            <td>" + echo(types.id) + "</td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">├\r\n");

	if (types.parentid==0)
	{
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/types.gif\" width=\"16\" height=\"16\" style=\"vertical-align:middle;\">\r\n");
	}
	else
	{
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/type.gif\" width=\"16\" height=\"16\" style=\"vertical-align:middle;\">\r\n");
	}//end if
	ViewBuilder.Append("                " + echo(types.name) + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>" + echo(types.markup) + "</td>\r\n");
	ViewBuilder.Append("            <td>\r\n");

	if (types.type==1)
	{
	ViewBuilder.Append("                单项选择\r\n");
	}
	else if (types.type==2)
	{
	ViewBuilder.Append("                多项选择\r\n");
	}
	else
	{
	ViewBuilder.Append("                下拉选择\r\n");
	}//end if
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>" + echo(types.description) + "</td>\r\n");
	ViewBuilder.Append("            <td>\r\n");

	if (types.parentid==0)
	{
	ViewBuilder.Append("            <a href=\"typeadd.aspx?parentid=" + echo(types.id) + "\">添加子分类</a>\r\n");
	}//end if
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td><a style=\"color: #1317fc\" href=\"typeadd.aspx?id=" + echo(types.id) + "\">编辑</a> </td>\r\n");
	ViewBuilder.Append("            <td><a style=\"color: #1317fc\" href=\"typedisplay.aspx?parentid=" + echo(types.parentid) + "\">排序</a></td>\r\n");
	ViewBuilder.Append("            <td><a onclick=\"DeleteType(" + echo(types.id) + ")\" href=\"#\">删除</a></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	loop__id=0;
	foreach(TypeInfo childtype in GetChildType(types.id))
	{
	loop__id++;
	ViewBuilder.Append("        <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("        <td>" + echo(childtype.id) + "</td>\r\n");
	ViewBuilder.Append("        <td align=\"left\">│&nbsp;&nbsp;├\r\n");
	ViewBuilder.Append("            <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/type.gif\" width=\"16\" height=\"16\">" + echo(childtype.name) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td>" + echo(childtype.markup) + "</td>\r\n");
	ViewBuilder.Append("        <td></td>\r\n");
	ViewBuilder.Append("        <td>" + echo(childtype.description) + "</td>\r\n");
	ViewBuilder.Append("        <td></td>\r\n");
	ViewBuilder.Append("        <td><a style=\"color: #1317fc\" href=\"typeadd.aspx?id=" + echo(childtype.id) + "\">编辑</a> </td>\r\n");
	ViewBuilder.Append("        <td><a style=\"color: #1317fc\" href=\"typedisplay.aspx?parentid=" + echo(childtype.parentid) + "\">排序</a></td>\r\n");
	ViewBuilder.Append("        <td><a onclick=\"DeleteType(" + echo(childtype.id) + ")\" href=\"#\">删除</a></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end loop
	}//end loop
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	if(iswrite==0)
	{
	Response.Write(ViewBuilder.ToString());
	}
	else if(iswrite==1)
	{
	Hashtable hash = new Hashtable();
	hash["errcode"] = 0;
	hash["errmsg"] ="";
	hash["html"]=ViewBuilder.ToString();
	FPResponse.WriteJson(hash);
	}
}
</script>
