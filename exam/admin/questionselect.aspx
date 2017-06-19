<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.questionselect" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>手工选题设置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.core-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var setting = {\r\n");
	ViewBuilder.Append("        view: {\r\n");
	ViewBuilder.Append("            dblClickExpand: true,\r\n");
	ViewBuilder.Append("            showLine: true,\r\n");
	ViewBuilder.Append("            selectedMulti: false\r\n");
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
	ViewBuilder.Append("    " + echo(zNodes) + "\r\n");
	ViewBuilder.Append("    ];\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	string navurl = "exammanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,navurl).ToString() + "|试题设置," + echo(rawpath) + "examtopicmanage.aspx?examid=" + echo(examinfo.id) + "&paper=" + echo(paper) + "|手工选题," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("        var h = $(window).height()-15;\r\n");
	ViewBuilder.Append("        $(\"#table\").height(h);\r\n");
	ViewBuilder.Append("        $(\"#tree\").height(h - $(\"#divbutton\").height());\r\n");
	ViewBuilder.Append("        $(\"#frmmaindetail\").height(h - 3);\r\n");
	ViewBuilder.Append("        $.fn.zTree.init($(\"#tree\"), setting, zNodes);\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form method=\"post\" action=\"\" name=\"frmpost\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("        <table id=\"table\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 100%; margin: 0px;\">\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"width: 200px; border: solid 1px #93C7D4; vertical-align: top;\">\r\n");
	ViewBuilder.Append("                   <div class=\"newslist\" id=\"divbutton\">\r\n");
	ViewBuilder.Append("                    <div class=\"newsicon\" style=\"width: 200px;\">\r\n");
	ViewBuilder.Append("                        <ul>\r\n");
	ViewBuilder.Append("                            <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pagename) + "?examtopicid=" + echo(examtopicid) + "&paper=" + echo(paper) + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("                            <li style=\"background: url(" + echo(adminpath) + "statics/images/return.gif) 2px 6px no-repeat\"><a href=\"examtopicmanage.aspx?examid=" + echo(examinfo.id) + "&paper=" + echo(paper) + "\">返回</a></li>\r\n");
	ViewBuilder.Append("                        </ul>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    <ul id=\"tree\" class=\"ztree\" style=\"width: 180px; overflow: auto;\"></ul>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td style=\"width: 2px;\"></td>\r\n");
	ViewBuilder.Append("                <td id=\"tdcontent\" style=\"border: solid 1px #93C7D4; vertical-align: top;\">\r\n");
	ViewBuilder.Append("                    <div style=\"padding: 2px;\">\r\n");
	ViewBuilder.Append("                        <iframe id=\"frmmaindetail\" name=\"frmmaindetail\" src=\"examtopicselect.aspx?examtopicid=" + echo(examtopicid) + "&paper=" + echo(paper) + "\" frameborder=\"0\" scrolling=\"auto\" style=\"width: 100%;\"></iframe>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
