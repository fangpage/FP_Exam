<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.desktop" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.Data" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>后台桌面|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta content=\"IE=edge,chrome=1\" http-equiv=\"X-UA-Compatible\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/desktop.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/desktop.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");

	if (roleid==1)
	{
	ViewBuilder.Append("    <div class=\"main_main\">\r\n");
	ViewBuilder.Append("        <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/websize.gif\" width=\"16\" height=\"16\" style=\"vertical-align:middle\">\r\n");
	ViewBuilder.Append("        <span class=\"main_time\">服务器IP：" + echo(serverip) + "&nbsp;您的IP：" + echo(ip) + "</span>\r\n");
	ViewBuilder.Append("        &nbsp;<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/disk.png\" width=\"16\" height=\"16\" alt=\"系统路径\" style=\"vertical-align:middle\"><span class=\"main_time\">系统路径：" + echo(syspath) + "<span id=\"websize\"></span></span>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"main_line\">\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"main_main\">\r\n");
	ViewBuilder.Append("        <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/database.png\" width=\"16\" height=\"16\" alt=\"数据库类型\" style=\"vertical-align:middle\">\r\n");

	if (dbconfig.dbtype==DbType.Access)
	{
	ViewBuilder.Append("<span class=\"main_time\">数据库类型：Access数据库&nbsp;<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/data.png\" width=\"16\" height=\"16\" style=\"vertical-align:middle\">数据库文件：" + echo(dbconfig.dbpath) + "<span id=\"dbsize\"></span></span>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<span class=\"main_time\">数据库类型：SqlServer数据库&nbsp;<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/database_connect.png\" width=\"16\" height=\"16\" alt=\"数据库服务器\" style=\"vertical-align:middle\">数据库服务器：" + echo(dbconfig.dbpath) + "&nbsp;<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/data.png\" width=\"16\" height=\"16\" style=\"vertical-align:middle\">数据库名称：" + echo(dbconfig.dbname) + "<span id=\"dbsize\"></span></span>\r\n");
	}//end if
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"main_line\"></div>\r\n");
	}//end if
	for (int i = 0; i <= desks; i++){
	ViewBuilder.Append("    <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" height=\"100%\" border=\"0\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td valign=\"top\">\r\n");
	ViewBuilder.Append("                    <div class=\"desktop\" id=\"desk-" + echo(i) + "\">\r\n");
	ViewBuilder.Append("                        <ul class=\"deskIcon\">\r\n");

	loop__id=0;
	foreach(DesktopInfo item in GetDesktopList(i))
	{
	loop__id++;
	ViewBuilder.Append("<li id=\"" + echo(item.app) + "\" title=\"" + echo(item.name) + "\" class=\"desktop_icon\" winwidth=\"" + echo(item.width) + "\" winheight=\"" + echo(item.height) + "\" path=\"" + echo(item.map_url) + "\" target=\"" + echo(item.target) + "\">\r\n");
	ViewBuilder.Append("                                <span class=\"icon\"><img src=\"" + echo(item.map_icon) + "\"></span>\r\n");
	ViewBuilder.Append("                                <div class=\"text\">" + echo(item.name) + "</div>\r\n");
	ViewBuilder.Append("                            </li>\r\n");
	}//end loop
	ViewBuilder.Append("                        </ul>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <div class=\"main_line\"></div>\r\n");
	}//end for
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        function OpenUrl(title,url,widths,heights) {\r\n");
	ViewBuilder.Append("            $.layer({\r\n");
	ViewBuilder.Append("                type: 2,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: title,\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                iframe: { src: url},\r\n");
	ViewBuilder.Append("                area: [widths, heights]\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $.ajax({\r\n");
	ViewBuilder.Append("                type: 'POST',\r\n");
	ViewBuilder.Append("                url: 'global/websize.aspx',\r\n");
	ViewBuilder.Append("                dataType: 'json',\r\n");
	ViewBuilder.Append("                success: function (data) {\r\n");
	ViewBuilder.Append("                    $(\"#dbsize\").html('，数据库大小：' + data.dbsize);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
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
