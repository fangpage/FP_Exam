<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.pluginview" %>
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
	ViewBuilder.Append("<title>插件信息</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/ecmascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   插件名称：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">\r\n");

	if (plugininfo.icon!="")
	{
	ViewBuilder.Append("                   <img src=\"" + echo(plupath) + "" + echo(plugininfo.installpath) + "/" + echo(plugininfo.icon) + "\" width=\"32\" height=\"32\" style=\"vertical-align:middle;\">\r\n");
	}
	else
	{
	ViewBuilder.Append("                   <img src=\"" + echo(webpath) + "common/images/app.png\" width=\"32\" height=\"32\" style=\"vertical-align:middle;\">\r\n");
	}//end if
	ViewBuilder.Append("                   " + echo(plugininfo.name) + "\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   安装路径：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + echo(plupath) + "" + echo(plugininfo.installpath) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   插件版本：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">V" + echo(plugininfo.version) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   插件大小：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + echo(plugininfo.size) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	if (plugininfo.markup!="")
	{
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   插件标识：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + echo(plugininfo.markup) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end if
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   创建日期：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + echo(plugininfo.createdate) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   更新日期：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + echo(plugininfo.updatedate) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   插件作者：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + echo(plugininfo.author) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	if (plugininfo.homepage!="")
	{
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   官方主页：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">\r\n");
	ViewBuilder.Append("                   <a href=\"" + echo(plugininfo.homepage) + "\" target=\"_blank\">" + echo(plugininfo.homepage) + "</a>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end if
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   插件说明：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + echo(plugininfo.notes) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("       </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
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
