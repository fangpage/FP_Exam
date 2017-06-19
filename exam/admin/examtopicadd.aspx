<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examtopicadd" %>
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
	ViewBuilder.Append("<title>添加编辑试卷大题</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	string navurl = "exammanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,navurl).ToString() + "|试题设置," + echo(rawpath) + "examtopicmanage.aspx?examid=" + echo(examid) + "&paper=" + echo(paper) + "|添加编辑大题," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("        $(\"#btnback\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"examtopicmanage.aspx?examid=" + echo(examid) + "&paper=" + echo(paper) + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑试卷大题，试卷名称：" + echo(examinfo.name) + "" + GetPaper(paper).ToString() + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 大题题型： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <select id=\"type\" name=\"type\" onchange=\"ShowTopic()\">\r\n");

	if (ischecked(1,examconfig.questiontype))
	{
	ViewBuilder.Append("                <option value=\"1\" \r\n");

	if (examtopic.type==1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">单选题</option>\r\n");
	}//end if

	if (ischecked(2,examconfig.questiontype))
	{
	ViewBuilder.Append("                <option value=\"2\" \r\n");

	if (examtopic.type==2)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">多选题</option>\r\n");
	}//end if

	if (ischecked(3,examconfig.questiontype))
	{
	ViewBuilder.Append("                <option value=\"3\" \r\n");

	if (examtopic.type==3)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">判断题</option>\r\n");
	}//end if

	if (ischecked(4,examconfig.questiontype))
	{
	ViewBuilder.Append("                <option value=\"4\" \r\n");

	if (examtopic.type==4)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">填空题</option>\r\n");
	}//end if

	if (ischecked(5,examconfig.questiontype))
	{
	ViewBuilder.Append("                <option value=\"5\" \r\n");

	if (examtopic.type==5)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">问答题</option>\r\n");
	}//end if

	if (ischecked(6,examconfig.questiontype))
	{
	ViewBuilder.Append("                <option value=\"6\" \r\n");

	if (examtopic.type==6)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">打字题</option>\r\n");
	}//end if
	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 大题标题： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"title\" type=\"text\" value=\"" + echo(examtopic.title) + "\" id=\"title\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 题目总数： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"questions\" type=\"text\" value=\"" + echo(examtopic.questions) + "\" id=\"questions\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 每题分值： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"perscore\" type=\"text\" value=\"" + echo(examtopic.perscore) + "\" id=\"perscore\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 排序顺序： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"display\" type=\"text\" value=\"" + echo(examtopic.display) + "\" id=\"display\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td height=\"25\">\r\n");
	ViewBuilder.Append("            <input type=\"submit\" name=\"btnsave\" value=\"保存\" id=\"btnsave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnback\" value=\"返回\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
