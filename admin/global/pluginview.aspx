<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.pluginview" %>
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
	ViewBuilder.Append("<title>插件信息</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/ecmascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btn_desktop\").click(function () {\r\n");
	ViewBuilder.Append("            index = $.layer({\r\n");
	ViewBuilder.Append("                type: 1,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '创建桌面快捷',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                page: { dom: '#createdesktop' },\r\n");
	ViewBuilder.Append("                area: ['300px', '180px']\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("            var parentid = $(\"#parentid\").val();\r\n");
	ViewBuilder.Append("            if (parentid == 0) {\r\n");
	ViewBuilder.Append("                alert(\"请选择所属桌面。\")\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $.post(\"desktopajax.aspx\", { type: 'plugins', path: '" + echo(plugininfo.installpath) + "', parentid: parentid }, function (data) {\r\n");
	ViewBuilder.Append("                if (data.msg == 'OK') {\r\n");
	ViewBuilder.Append("                    alert(\"创建桌面快捷图标成功。\");\r\n");
	ViewBuilder.Append("                    layer.close(index);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                else {\r\n");
	ViewBuilder.Append("                    alert(\"创建桌面快捷图标失败。\");\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }, \"json\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
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
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("        <td style=\"text-align:center;padding-left:50px;\">\r\n");

	if (plugininfo.indexurl!="")
	{
	ViewBuilder.Append("            <a class=\"adminsubmit_long\" style=\"display:block;text-align:center;padding-top:10px;float:left\" href=\"" + echo(plugininfo.indexurl) + "\" target=\"_blank\">打开插件</a>\r\n");
	ViewBuilder.Append("            <a class=\"adminsubmit_long\" style=\"display:block;text-align:center;padding-top:10px;float:left\" href=\"#\" id=\"btn_desktop\">创建桌面快捷</a>\r\n");
	}//end if
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("  <div id=\"createdesktop\" style=\"display:none\">\r\n");
	ViewBuilder.Append("  <form id=\"frmcreate\" method=\"get\" name=\"frmcreate\" action=\"\">\r\n");
	ViewBuilder.Append("  <table style=\"width:300px;height:100px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:80px;\">所属桌面： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">\r\n");
	ViewBuilder.Append("                <select id=\"parentid\" style=\"width:150px;\" name=\"parentid\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">选择桌面</option>\r\n");

	loop__id=0;
	foreach(DesktopInfo item in desktoplist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(item.id) + "\">" + echo(item.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("               </select>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td height=\"50\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("                <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("                <input type=\"button\" name=\"btnback\" value=\"取消\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("   </table>\r\n");
	ViewBuilder.Append("   </form>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
