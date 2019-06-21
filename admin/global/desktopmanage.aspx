<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.desktopmanage" %>
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
	ViewBuilder.Append("<title>系统桌面管理</title>\r\n");
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
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"系统桌面管理,global/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function Delete(id) {\r\n");
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
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"id\" id=\"id\" value=\"\"> \r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td><div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/add.gif) 2px 6px no-repeat\"><a href=\"desktopadd.aspx\">添加</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"desktopmanage.aspx\">刷新</a> </li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>系统桌面管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("        <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\">编号</td>\r\n");
	ViewBuilder.Append("        	  <td style=\"text-align:left;\">桌面快捷名称</td>\r\n");
	ViewBuilder.Append("              <td>桌面标识</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">所属分屏</td>\r\n");
	ViewBuilder.Append("              <td>所属应用</td>\r\n");
	ViewBuilder.Append("              <td>所属平台</td>\r\n");
	ViewBuilder.Append("              <td>描述</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">是否隐藏</td>\r\n");
	ViewBuilder.Append("              <td width=\"80\">添加子桌面</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">编辑</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">排序</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">删除</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(DesktopInfo item in desktoplist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td style=\"text-align:center;\">" + echo(item.id) + "</td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;height:36px;\">├\r\n");

	if (item.icon!="")
	{
	ViewBuilder.Append("              <img src=\"" + echo(item.map_icon) + "\" width=\"32\" height=\"32\" alt=\"" + echo(item.name) + "\" style=\"vertical-align:middle;\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "common/images/desktop.png\" width=\"32\" height=\"32\" alt=\"" + echo(item.name) + "\" style=\"vertical-align:middle;\">\r\n");
	}//end if
	ViewBuilder.Append("              " + echo(item.name) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.markup) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.desk) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.SetupInfo.name) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.platform) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.description) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.hidden==1)
	{
	ViewBuilder.Append("              是\r\n");
	}
	else
	{
	ViewBuilder.Append("              否\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td>\r\n");

	if (item.parentid==0)
	{
	ViewBuilder.Append("              <a href=\"desktopadd.aspx?parentid=" + echo(item.id) + "\">添加子桌面</a>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"desktopadd.aspx?id=" + echo(item.id) + "\">编辑</a> </td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"desktopdisplay.aspx?parentid=" + echo(item.parentid) + "&desk=" + echo(item.desk) + "\">排序</a></td>\r\n");
	ViewBuilder.Append("              <td><a onclick=\"Delete(" + echo(item.id) + ")\" href=\"#\">删除</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(DesktopInfo child in GetChildDesktop(item.id))
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;\">" + echo(child.id) + "</td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">│&nbsp;&nbsp;├\r\n");

	if (child.icon!="")
	{
	ViewBuilder.Append("              <img src=\"" + echo(child.map_icon) + "\" width=\"32\" height=\"32\" alt=\"" + echo(child.name) + "\" style=\"vertical-align:middle;\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "common/images/desktop.png\" width=\"32\" height=\"32\" alt=\"" + echo(child.name) + "\" style=\"vertical-align:middle;\">\r\n");
	}//end if
	ViewBuilder.Append("              " + echo(child.name) + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td align=\"center\">" + echo(child.markup) + "</td>\r\n");
	ViewBuilder.Append("            <td align=\"center\">" + echo(child.desk) + "</td>\r\n");
	ViewBuilder.Append("            <td align=\"center\">" + echo(child.SetupInfo.name) + "</td>\r\n");
	ViewBuilder.Append("            <td align=\"center\">" + echo(child.platform) + "</td>\r\n");
	ViewBuilder.Append("            <td align=\"center\">" + echo(child.description) + "</td>\r\n");
	ViewBuilder.Append("            <td align=\"center\">\r\n");

	if (child.hidden==1)
	{
	ViewBuilder.Append("            是\r\n");
	}
	else
	{
	ViewBuilder.Append("            否\r\n");
	}//end if
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td></td>\r\n");
	ViewBuilder.Append("            <td><a style=\"color: #1317fc\" href=\"desktopadd.aspx?id=" + echo(child.id) + "\">编辑</a> </td>\r\n");
	ViewBuilder.Append("            <td><a style=\"color: #1317fc\" href=\"desktopdisplay.aspx?parentid=" + echo(child.parentid) + "&desk=" + echo(child.desk) + "\">排序</a></td>\r\n");
	ViewBuilder.Append("            <td><a onclick=\"Delete(" + echo(child.id) + ")\" href=\"#\">删除</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </td>\r\n");
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
