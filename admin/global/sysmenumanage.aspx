<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.sysmenumanage" %>
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
	ViewBuilder.Append("<title>系统菜单管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkdel]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#formpost\").submit(); \r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"系统菜单管理,global/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"formpost\" method=\"post\" name=\"formpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td><div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/add.gif) 2px 6px no-repeat\"><a href=\"sysmenuadd.aspx\">添加</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"sysmenumanage.aspx\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>系统菜单管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td><table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td>菜单名称</td>\r\n");
	ViewBuilder.Append("              <td width=\"150\">添加子菜单</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">是否隐藏</td>\r\n");
	ViewBuilder.Append("              <td width=\"100\">编辑</td>\r\n");
	ViewBuilder.Append("              <td width=\"100\">排序</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(MenuInfo menu in menulist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkdel\" name=\"chkdel\" value=\"" + echo(menu.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">├<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/sysmenu1.gif\" width=\"16\" height=\"16\">" + echo(menu.name) + " </td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"sysmenuadd.aspx?parentid=" + echo(menu.id) + "\">添加子菜单</a></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (menu.hidden==1)
	{
	ViewBuilder.Append("              是\r\n");
	}
	else
	{
	ViewBuilder.Append("              否\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"sysmenuadd.aspx?id=" + echo(menu.id) + "\">编辑</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"sysmenudisplay.aspx?parentid=" + echo(menu.parentid) + "\">排序</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(MenuInfo childmenu in GetChildMenu(menu.id))
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td><input id=\"chkdel\" name=\"chkdel\" value=\"" + echo(childmenu.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">│&nbsp;&nbsp;├<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/sysmenu2.gif\" width=\"16\" height=\"16\">" + echo(childmenu.name) + " </td>\r\n");
	ViewBuilder.Append("               <td><a style=\"color: #1317fc\" href=\"sysmenuadd.aspx?parentid=" + echo(childmenu.id) + "\">添加子菜单</a></td>\r\n");
	ViewBuilder.Append("               <td align=\"center\">\r\n");

	if (childmenu.hidden==1)
	{
	ViewBuilder.Append("                是\r\n");
	}
	else
	{
	ViewBuilder.Append("                否\r\n");
	}//end if
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td><a style=\"color: #1317fc\" href=\"sysmenuadd.aspx?id=" + echo(childmenu.id) + "\">编辑</a></td>\r\n");
	ViewBuilder.Append("               <td><a style=\"color: #1317fc\" href=\"sysmenudisplay.aspx?parentid=" + echo(childmenu.parentid) + "\">排序</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(MenuInfo childmenu2 in GetChildMenu(childmenu.id))
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td><input id=\"chkdel\" name=\"chkdel\" value=\"" + echo(childmenu2.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">│&nbsp;&nbsp;│&nbsp;&nbsp;├<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/sysmenu3.gif\" width=\"16\" height=\"16\">" + echo(childmenu2.name) + " </td>\r\n");
	ViewBuilder.Append("               <td></td>\r\n");
	ViewBuilder.Append("               <td align=\"center\">\r\n");

	if (childmenu2.hidden==1)
	{
	ViewBuilder.Append("                是\r\n");
	}
	else
	{
	ViewBuilder.Append("                否\r\n");
	}//end if
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td><a style=\"color: #1317fc\" href=\"sysmenuadd.aspx?id=" + echo(childmenu2.id) + "\">编辑</a></td>\r\n");
	ViewBuilder.Append("               <td><a style=\"color: #1317fc\" href=\"sysmenudisplay.aspx?parentid=" + echo(childmenu2.parentid) + "\">排序</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	}//end loop
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("</form>\r\n");
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
