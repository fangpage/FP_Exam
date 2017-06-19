<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.msgtemplatemanage" %>
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
	ViewBuilder.Append("<title>{pagenav}</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"" + echo(pagenav) + "," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    function Delete(id) {\r\n");
	ViewBuilder.Append("        if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#chkid\").val(id);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\"> \r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"chkid\" id=\"chkid\" value=\"\"> \r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("    <td>\r\n");

	if (type>0)
	{
	ViewBuilder.Append("      <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul id=\"mytab1\">\r\n");
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"emailconfigmanage.aspx\">邮箱服务器</a> </li>\r\n");

	if (type==1)
	{
	ViewBuilder.Append("              <li class=\"active\"><a href=\"msgtemplatemanage.aspx?type=1\">邮件模板管理</a> </li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"msgtemplatemanage.aspx?type=1\">邮件模板管理</a> </li>\r\n");
	}//end if
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"smsconfigmanage.aspx\">短信服务器</a> </li>\r\n");

	if (type==2)
	{
	ViewBuilder.Append("              <li class=\"active\"><a href=\"msgtemplatemanage.aspx?type=2\">短信模板管理</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"msgtemplatemanage.aspx?type=2\">短信模板管理</a></li>\r\n");
	}//end if
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	}//end if
	ViewBuilder.Append("      <table style=\"background-color:white;width:100%\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("           <div class=\"newslist\">\r\n");
	ViewBuilder.Append("              <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("                <ul>\r\n");
	ViewBuilder.Append("                  <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/add.gif) 2px 6px no-repeat\"><a href=\"msgtemplateadd.aspx?type=" + echo(type) + "\">添加</a></li>\r\n");
	ViewBuilder.Append("                  <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pageurl) + "\">刷新</a> </li>\r\n");
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("           </td>\r\n");
	ViewBuilder.Append("         </tr>\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("            <td class=\"tdbg\">\r\n");
	ViewBuilder.Append("           <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("           <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  模板名称\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  模板标识\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  启用状态\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td width=\"100\">\r\n");
	ViewBuilder.Append("                  操作\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(MsgTempInfo item in msgtemplatelist)
	{
	loop__id++;
	ViewBuilder.Append("             <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    " + echo(item.name) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    " + echo(item.markup) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("                    <span style=\"color:#1317fc\">启用</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <span style=\"color:#ff0000\">禁用</span>\r\n");
	}//end if
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"msgtemplateadd.aspx?id=" + echo(item.id) + "\">编辑</a>\r\n");
	ViewBuilder.Append("                    <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"javascript:Delete(" + echo(item.id) + ")\">删除</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("             </tr>\r\n");
	}//end loop
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("          </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr></table>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
