<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.MVC.FPController" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>方配网站管理系统(WMS)</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta content=\"IE=edge,chrome=1\" http-equiv=\"X-UA-Compatible\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        function switchSysBar() {\r\n");
	ViewBuilder.Append("            if (parent.document.getElementById('attachucp').cols == \"198,9,*\") {\r\n");
	ViewBuilder.Append("                document.getElementById('leftbar').style.display = \"none\";\r\n");
	ViewBuilder.Append("                document.getElementById('rightbar').style.display = \"block\"\r\n");
	ViewBuilder.Append("                parent.document.getElementById('attachucp').cols = \"0,9,*\";\r\n");
	ViewBuilder.Append("                $(\"#topleft\", window.parent.frames[\"topframe\"].document).hide();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else {\r\n");
	ViewBuilder.Append("                parent.document.getElementById('attachucp').cols = \"198,9,*\";\r\n");
	ViewBuilder.Append("                document.getElementById('leftbar').style.display = \"block\";\r\n");
	ViewBuilder.Append("                document.getElementById('rightbar').style.display = \"none\"\r\n");
	ViewBuilder.Append("                $(\"#topleft\", window.parent.frames[\"topframe\"].document).show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body oncontextmenu=\"return false\" ondragstart=\"return false\" marginwidth=\"0\" marginheight=\"0\" topmargin=\"0\" leftmargin=\"0\">\r\n");
	ViewBuilder.Append("    <center>\r\n");
	ViewBuilder.Append("        <table height=\"100%\" style=\"width:9px; background:url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/left_yy.gif) repeat-y;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                    <td id=\"leftbar\" style=\"height:100%\">\r\n");
	ViewBuilder.Append("                        <a onclick=\"switchSysBar()\" href=\"javascript:void(0);\">\r\n");
	ViewBuilder.Append("                            <img height=\"41\" border=\"0\" width=\"9\" alt=\"隐藏左侧菜单\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/bar_left.gif\" style=\"vertical-align:middle;\">\r\n");
	ViewBuilder.Append("                        </a>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                    <td id=\"rightbar\" style=\"height:100%;display:none;\">\r\n");
	ViewBuilder.Append("                        <a onclick=\"switchSysBar()\" href=\"javascript:void(0);\">\r\n");
	ViewBuilder.Append("                            <img height=\"41\" border=\"0\" width=\"9\" alt=\"展开左侧菜单\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/bar_right.gif\" style=\"vertical-align:middle;\">\r\n");
	ViewBuilder.Append("                        </a>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("    </center>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
