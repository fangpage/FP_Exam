<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examtopicadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>添加编辑试卷大题</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(adminpath) + "statics/js/admin.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btnback\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"examtopicmanage.aspx?examid=" + echo(examid) + "&paper=" + echo(paper) + "\";\r\n");
	ViewBuilder.Append("        });\r\n");
	string navurl = "exammanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,navurl)) + "|试题设置," + echo(rawpath) + "examtopicmanage.aspx?examid=" + echo(examid) + "&paper=" + echo(paper) + "|添加编辑大题," + echo(rawurl) + "\");\r\n");
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
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑试卷大题，试卷名称：" + echo(examinfo.name) + "" + echo(GetPaper(paper)) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 大题题型： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <select id=\"type\" name=\"type\">\r\n");

	if (FPArray.Contain(examconfig.questiontype,"TYPE_RADIO"))
	{
	ViewBuilder.Append("                <option value=\"TYPE_RADIO\" "+(examtopic.type=="TYPE_RADIO"?echo("selected"):echo(""))+">单选题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_MULTIPLE"))
	{
	ViewBuilder.Append("                <option value=\"TYPE_MULTIPLE\" "+(examtopic.type=="TYPE_MULTIPLE"?echo("selected"):echo(""))+">多选题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_TRUE_FALSE"))
	{
	ViewBuilder.Append("                <option value=\"TYPE_TRUE_FALSE\" "+(examtopic.type=="TYPE_TRUE_FALSE"?echo("selected"):echo(""))+">判断题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_BLANK"))
	{
	ViewBuilder.Append("                <option value=\"TYPE_BLANK\" "+(examtopic.type=="TYPE_BLANK"?echo("selected"):echo(""))+">填空题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_ANSWER"))
	{
	ViewBuilder.Append("                <option value=\"TYPE_ANSWER\" "+(examtopic.type=="TYPE_ANSWER"?echo("selected"):echo(""))+">问答题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_OPERATION"))
	{
	ViewBuilder.Append("                <option value=\"TYPE_OPERATION\" "+(examtopic.type=="TYPE_OPERATION"?echo("selected"):echo(""))+">操作题</option>\r\n");
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
