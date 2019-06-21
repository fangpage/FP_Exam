<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examconfig" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>考试系统配置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btnsave\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"save\")\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnreset\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"重置题库统计数需要几分钟的时间，在此期间不要做任何操作。\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"reset\")\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnclear\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"您确定要清除题库吗?\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"clear\")\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">考试系统配置</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 自动保存答案时间： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"autotime\" type=\"text\" value=\"" + echo(examconfiginfo.autotime) + "\" id=\"autotime\" style=\"height:21px;width:200px;\">&nbsp;分钟，0为不自动保存。</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 练习最大题数： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"testcount\" type=\"text\" value=\"" + echo(examconfiginfo.testcount) + "\" id=\"testcount\" style=\"height:21px;width:200px;\">&nbsp;道，必须大于0。</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考前显示考生信息： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"showresult\" name=\"showresult\" value=\"1\" "+(examconfiginfo.showresult==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否在考前在成绩管理显示全部考生信息\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 允许查看考试答案： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"showanswer\" name=\"showanswer\" value=\"1\" "+(examconfiginfo.showanswer==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否允许用户查看考试历史答案\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 开启关闭用户练习： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"teststatus\" name=\"teststatus\" value=\"1\" "+(examconfiginfo.teststatus==1?echo("checked"):echo(""))+" type=\"radio\">开启\r\n");
	ViewBuilder.Append("                <input id=\"teststatus\" name=\"teststatus\" value=\"0\" "+(examconfiginfo.teststatus==0?echo("checked"):echo(""))+" type=\"radio\">关闭\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 开启关闭用户考试： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"examstatus\" name=\"examstatus\" value=\"0\" "+(examconfiginfo.examstatus==0?echo("checked"):echo(""))+" type=\"radio\">关闭\r\n");
	ViewBuilder.Append("                <input id=\"examstatus\" name=\"examstatus\" value=\"1\" "+(examconfiginfo.examstatus==1?echo("checked"):echo(""))+" type=\"radio\">开启全部\r\n");
	ViewBuilder.Append("                <input id=\"examstatus\" name=\"examstatus\" value=\"2\" "+(examconfiginfo.examstatus==2?echo("checked"):echo(""))+" type=\"radio\">只开模拟考试\r\n");
	ViewBuilder.Append("                <input id=\"examstatus\" name=\"examstatus\" value=\"3\" "+(examconfiginfo.examstatus==3?echo("checked"):echo(""))+" type=\"radio\">只开正工考试\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 使用题目类型： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"questiontype1\" name=\"questiontype\" value=\"TYPE_RADIO\" "+(FPArray.Contain(examconfiginfo.questiontype,"TYPE_RADIO")?echo("checked"):echo(""))+" type=\"checkbox\">单选题\r\n");
	ViewBuilder.Append("                <input id=\"questiontype2\" name=\"questiontype\" value=\"TYPE_MULTIPLE\" "+(FPArray.Contain(examconfiginfo.questiontype,"TYPE_MULTIPLE")?echo("checked"):echo(""))+" type=\"checkbox\">多选题\r\n");
	ViewBuilder.Append("                <input id=\"questiontype3\" name=\"questiontype\" value=\"TYPE_TRUE_FALSE\" "+(FPArray.Contain(examconfiginfo.questiontype,"TYPE_TRUE_FALSE")?echo("checked"):echo(""))+" type=\"checkbox\">判断题\r\n");
	ViewBuilder.Append("                <input id=\"questiontype4\" name=\"questiontype\" value=\"TYPE_BLANK\" "+(FPArray.Contain(examconfiginfo.questiontype,"TYPE_BLANK")?echo("checked"):echo(""))+" type=\"checkbox\">填空题\r\n");
	ViewBuilder.Append("                <input id=\"questiontype5\" name=\"questiontype\" value=\"TYPE_ANSWER\" "+(FPArray.Contain(examconfiginfo.questiontype,"TYPE_ANSWER")?echo("checked"):echo(""))+" type=\"checkbox\">问答题\r\n");
	ViewBuilder.Append("                <input id=\"questiontype5\" name=\"questiontype\" value=\"TYPE_OPERATION\" "+(FPArray.Contain(examconfiginfo.questiontype,"TYPE_OPERATION")?echo("checked"):echo(""))+" type=\"checkbox\">操作题\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试报名功能： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"signers\" name=\"signers\" value=\"1\" "+(examconfiginfo.signers==1?echo("checked"):echo(""))+" type=\"radio\">开启\r\n");
	ViewBuilder.Append("                <input id=\"signers\" name=\"signers\" value=\"0\" "+(examconfiginfo.signers==0?echo("checked"):echo(""))+" type=\"radio\">关闭\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 导出试卷类型： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"exporttype\" name=\"exporttype\" value=\"0\" "+(examconfiginfo.exporttype==0?echo("checked"):echo(""))+" type=\"radio\">PDF\r\n");
	ViewBuilder.Append("                <input id=\"exporttype\" name=\"exporttype\" value=\"1\" "+(examconfiginfo.exporttype==1?echo("checked"):echo(""))+" type=\"radio\">Word\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("        <td height=\"25\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnsave\" value=\"保存配置\" id=\"btnsave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnreset\" value=\"重置题库统计\" id=\"btnreset\" class=\"adminsubmit_long\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnclear\" value=\"清空题库\" id=\"btnclear\" class=\"adminsubmit_long\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('" + echo(msg) + "', 2, 1);\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	}//end if
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
