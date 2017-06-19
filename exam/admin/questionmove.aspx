<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.questionmove" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
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
	ViewBuilder.Append("<title>移动题目</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/masterpage.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	string navurl = "questionmanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,navurl).ToString() + "|移动题目," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("        $(\"#btnok\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnback\").click(function () {\r\n");
	ViewBuilder.Append("            PageBack(\"questionmanage.aspx?channelid=" + echo(channelid) + "&sortid=" + echo(sortid) + "\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("     <input type=\"hidden\" id=\"action\" name=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("     <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("     <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">移动题目，当前所在题库：" + echo(sortinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:150px\"> 移动至目标题库： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	string tree = "├";
	ViewBuilder.Append("              <select id=\"targetid\" name=\"targetid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                  <option value=\"0\">目标题库</option>\r\n");

	loop__id=0;
	foreach(SortInfo item in sortlist)
	{
	loop__id++;
	ViewBuilder.Append("                  <option value=\"" + echo(item.id) + "\">├" + echo(item.name) + "</option>\r\n");
	ViewBuilder.Append("                  " + GetChildSort(item.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnback\" value=\"返回\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    layer.msg('" + echo(msg) + "', 0, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 20) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            window.location.href = \"" + echo(link) + "\";\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
