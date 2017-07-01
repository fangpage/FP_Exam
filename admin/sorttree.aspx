<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.sorttree" %>
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
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>系统栏目菜单</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta content=\"IE=edge,chrome=1\" http-equiv=\"X-UA-Compatible\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.core-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");

	if (channelid>0)
	{
	ViewBuilder.Append("    LeftNav(\"" + echo(channelinfo.description) + ",sort/sortmanage.aspx?channelid=" + echo(channelid) + "\");\r\n");
	}
	else
	{
	ViewBuilder.Append("    LeftNav(\"后台桌面,desktop.aspx\");\r\n");
	}//end if
	ViewBuilder.Append("    var zTree;\r\n");
	ViewBuilder.Append("    var setting = {\r\n");
	ViewBuilder.Append("        view: {\r\n");
	ViewBuilder.Append("            dblClickExpand: true,\r\n");
	ViewBuilder.Append("            showLine: true,\r\n");
	ViewBuilder.Append("            selectedMulti: false,\r\n");
	ViewBuilder.Append("            fontCss: getFont\r\n");
	ViewBuilder.Append("        },\r\n");
	ViewBuilder.Append("        data: {\r\n");
	ViewBuilder.Append("            simpleData: {\r\n");
	ViewBuilder.Append("                enable: true,\r\n");
	ViewBuilder.Append("                idKey: \"id\",\r\n");
	ViewBuilder.Append("                pIdKey: \"pId\",\r\n");
	ViewBuilder.Append("                rootPId: \"\"\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    };\r\n");
	ViewBuilder.Append("    var zNodes = [\r\n");
	ViewBuilder.Append("        " + echo(zNodes) + "\r\n");
	ViewBuilder.Append("	];\r\n");
	ViewBuilder.Append("    function getFont(treeId, node) {\r\n");
	ViewBuilder.Append("        return node.font ? node.font : {};\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("	$(document).ready(function(){\r\n");
	ViewBuilder.Append("		$.fn.zTree.init($(\"#tree\"), setting, zNodes);\r\n");
	ViewBuilder.Append("	});\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append("    #foldmenu2\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        width:198px;\r\n");
	ViewBuilder.Append("        float:left;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("  <div class=\"left_main_top\"> </div>\r\n");
	ViewBuilder.Append("  <div class=\"left_main\">\r\n");
	ViewBuilder.Append("    <div id=\"foldmenu2\">\r\n");
	ViewBuilder.Append("       <ul id=\"tree\" class=\"ztree\"></ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("      $(function () {\r\n");
	ViewBuilder.Append("          $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("          $(\"body\").niceScroll({ cursorcolor: \"#ccc\", cursorwidth: 5 });\r\n");
	ViewBuilder.Append("      })\r\n");
	ViewBuilder.Append("  </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
