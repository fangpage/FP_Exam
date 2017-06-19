<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.userimport" %>
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
	ViewBuilder.Append("<title>导入用户</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jform/jquery.form.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var h = $(window).height()-90;\r\n");
	ViewBuilder.Append("        $(\"#table\").height(h);\r\n");
	ViewBuilder.Append("        var index = parent.layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnclose\").click(function () {\r\n");
	ViewBuilder.Append("            parent.layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnuserok\").click(function () {\r\n");
	ViewBuilder.Append("            var options = {\r\n");
	ViewBuilder.Append("                url: 'userimportajax.aspx', \r\n");
	ViewBuilder.Append("                type: 'POST',\r\n");
	ViewBuilder.Append("                dataType: \"json\",\r\n");
	ViewBuilder.Append("                success: function (data) {\r\n");
	ViewBuilder.Append("                    parent.$(\"#examusername\").html(data.uname);\r\n");
	ViewBuilder.Append("                    parent.$('#examuser').val(data.examuser);\r\n");
	ViewBuilder.Append("                    parent.layer.close(index);\r\n");
	ViewBuilder.Append("                } \r\n");
	ViewBuilder.Append("            };\r\n");
	ViewBuilder.Append("            $('#frmpost').ajaxSubmit(options);\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form method=\"post\" action=\"\" name=\"frmpost\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <input id=\"examuser\" name=\"examuser\" value=\"" + echo(examuser) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div id=\"table\" class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 397px;height:140px; margin: 0px;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td colspan=\"3\" style=\"border: solid 1px #93C7D4; vertical-align:middle;height:100px;padding-left:10px;\">\r\n");
	ViewBuilder.Append("                <input id=\"uploadfile\" name=\"uploadfile\" type=\"file\">&nbsp<a href=\"template/examuser.xls\">导入模板下载</a>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td colspan=\"3\" height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btnuserok\" value=\"确定\" id=\"btnuserok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btnclose\" value=\"关闭\" id=\"btnclose\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
