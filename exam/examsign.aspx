<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examsign" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>考试报名</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "calendar/WdatePicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append("<!--\r\n");
	ViewBuilder.Append(".xxx {\r\n");
	ViewBuilder.Append("	border-collapse:collapse;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".xxx td {\r\n");
	ViewBuilder.Append("	border:1px solid #000;\r\n");
	ViewBuilder.Append("	padding:5px 5px 5px 5px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".xxx {\r\n");
	ViewBuilder.Append("	border-collapse:collapse;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".title {\r\n");
	ViewBuilder.Append("	line-height:35px;\r\n");
	ViewBuilder.Append("	font-size:22px;\r\n");
	ViewBuilder.Append("	color:#fff;\r\n");
	ViewBuilder.Append("	font-family:\"黑体\";\r\n");
	ViewBuilder.Append("	text-align:center;\r\n");
	ViewBuilder.Append("	font-weight:600;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("-->\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btn_save\").click(function () {\r\n");
	ViewBuilder.Append("          $(\"#action\").val(\"save\");\r\n");
	ViewBuilder.Append("          $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"\">\r\n");
	ViewBuilder.Append("<form method=\"post\" action=\"\" name=\"frmpost\" id=\"frmpost\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("  <input id=\"action\" name=\"action\" type=\"hidden\" value=\"\">\r\n");
	ViewBuilder.Append("  <input id=\"attachid\" name=\"attachid\" type=\"hidden\" value=\"\">\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#993300\" class=\"title\"><strong>报名考试</strong></td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>姓名</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <input name=\"name\" type=\"text\" class=\"inputx11\" style=\"width:130px;\" id=\"name\" value=\"\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"80\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>性别</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\"><input name=\"sex\" type=\"text\" class=\"inputx11\" style=\"width:80px;\" id=\"sex\" value=\"\"></td>\r\n");
	ViewBuilder.Append("        <td width=\"150\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>出生年月</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"100\"><input name=\"bday\" type=\"text\" class=\"inputx11\" style=\"width:130px;\" id=\"bday\" onfocus=\"WdatePicker({el:'bday',dateFmt:'yyyy-MM-dd'})\" readonly=\"readonly\" value=\"\"></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>民族</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\"><input name=\"nation\" type=\"text\" class=\"inputx11\" style=\"width:80px;\" id=\"nation\" value=\"\"></td>\r\n");
	ViewBuilder.Append("        <td width=\"150\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>政治面貌</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"100\"><input name=\"politics\" type=\"text\" class=\"inputx11\" style=\"width:100px;\" id=\"politics\" value=\"\"></td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <p align=\"center\">\r\n");
	ViewBuilder.Append("    <input type=\"button\" name=\"btn_save\" id=\"btn_save\" value=\"保存\" style=\"font-size:14px; font-weight:700; color:#555;width:150px; height:33px; line-height:20px; font-weight:bold\">\r\n");
	ViewBuilder.Append("    <input type=\"button\" name=\"Next\" id=\"Next2\" value=\"确认提交\" style=\"font-size:14px; font-weight:700; color:#555;width:220px; height:33px; line-height:20px; font-weight:bold\">\r\n");
	ViewBuilder.Append("  </p>\r\n");
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
