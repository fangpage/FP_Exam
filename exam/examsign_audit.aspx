<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examsign_audit" %>
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
	ViewBuilder.Append("<title>考试报名审核</title>\r\n");
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
	ViewBuilder.Append("      $(\"#btn_pass\").click(function () {\r\n");
	ViewBuilder.Append("        $(\"#action\").val(\"pass\");\r\n");
	ViewBuilder.Append("        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("      });\r\n");
	ViewBuilder.Append("      $(\"#btn_unpass\").click(function () {\r\n");
	ViewBuilder.Append("        $(\"#action\").val(\"unpass\");\r\n");
	ViewBuilder.Append("        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("      });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"\">\r\n");
	ViewBuilder.Append("<form method=\"post\" action=\"\" name=\"frmpost\" id=\"frmpost\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("  <input id=\"action\" name=\"action\" type=\"hidden\" value=\"\">\r\n");
	ViewBuilder.Append("  <input id=\"attachid\" name=\"attachid\" type=\"hidden\" value=\"" + echo(examsigninfo.attachid) + "\">\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#993300\" class=\"title\"><strong>考试报名审核</strong></td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>考试名称</strong></td>\r\n");
	ViewBuilder.Append("        <td colspan=\"4\">\r\n");
	ViewBuilder.Append("           " + echo(examinfo.title) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" style=\"text-align:center\" colspan=\"2\">\r\n");
	ViewBuilder.Append("           <strong>准考证号</strong>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td colspan=\"3\">\r\n");
	ViewBuilder.Append("           " + echo(examsigninfo.ikey) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>考试时间</strong></td>\r\n");
	ViewBuilder.Append("        <td colspan=\"4\">\r\n");
	ViewBuilder.Append("           " + echo(examinfo.opentime) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" style=\"text-align:center\" colspan=\"2\">\r\n");
	ViewBuilder.Append("           <strong>考试地点</strong>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td colspan=\"3\">\r\n");
	ViewBuilder.Append("           " + echo(examinfo.address) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>姓名</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"100\">\r\n");
	ViewBuilder.Append("            " + echo(examsigninfo.signer["uname"]) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"80\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>性别</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\">" + echo(examsigninfo.signer["sex"]) + "</td>\r\n");
	ViewBuilder.Append("        <td width=\"150\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>出生年月</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"100\">" + echo(examsigninfo.signer["bday"]) + "</td>\r\n");
	ViewBuilder.Append("        <td width=\"80\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>民族</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\">" + echo(examsigninfo.signer["nation"]) + "</td>\r\n");
	ViewBuilder.Append("        <td width=\"150\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>工作年限</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"100\">" + echo(examsigninfo.signer["joblimit"]) + "</td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>身份证号</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            " + echo(examsigninfo.signer["idcard"]) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>手机号</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            " + echo(examsigninfo.signer["mobile"]) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"108\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>电子邮箱</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"153\">\r\n");
	ViewBuilder.Append("            " + echo(examsigninfo.signer["email"]) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>毕业院校</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("             " + echo(examsigninfo.signer["shcool"]) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>所学专业</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("             " + echo(examsigninfo.signer["profession"]) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"108\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>工作单位</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"153\">\r\n");
	ViewBuilder.Append("            " + echo(examsigninfo.signer["company"]) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>考生照片</strong></td>\r\n");
	ViewBuilder.Append("        <td colspan=\"2\" style=\"width:400px;font-size:12px;line-height:20px;\">\r\n");

	if (examsigninfo.img!="")
	{
	ViewBuilder.Append("<a href=\"" + echo(examsigninfo.img) + "\" target=\"_blank\"><img src=\"" + echo(examsigninfo.img) + "\" width=\"100\" height=\"100\"></a>\r\n");
	}//end if
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>付款凭证</strong></td>\r\n");
	ViewBuilder.Append("        <td style=\"font-size:12px;line-height:20px;\">\r\n");

	if (examsigninfo.payimg!="")
	{
	ViewBuilder.Append("<a href=\"" + echo(examsigninfo.payimg) + "\" target=\"_blank\"><img src=\"" + echo(examsigninfo.payimg) + "\" width=\"150\" height=\"150\"></a>\r\n");
	}//end if
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:right\"><strong>审核状态</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	if (examsigninfo.status==2)
	{
	ViewBuilder.Append("            <span style=\"color:#2c0ef8;font-weight:bold;\">审核通过</span>\r\n");
	}
	else if (examsigninfo.status==3)
	{
	ViewBuilder.Append("            <span style=\"color:#ff0000;font-weight:bold;\">审核未通过</span>\r\n");
	}
	else if (examsigninfo.status==1)
	{
	ViewBuilder.Append("            <span style=\"color:#ff0000;font-weight:bold;\">未审核</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <span style=\"color:#ff0000;font-weight:bold;\">未提交</span>\r\n");
	}//end if
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("  </tbody>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>未通过原因</strong></td>\r\n");
	ViewBuilder.Append("        <td style=\"height:100px;\">\r\n");
	ViewBuilder.Append("            <textarea id=\"reason\" name=\"reason\" style=\"width:98%;height:90px;\">" + echo(examsigninfo.reason) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("  </tbody>\r\n");
	ViewBuilder.Append("</table>\r\n");
	ViewBuilder.Append(" <p align=\"center\">\r\n");
	ViewBuilder.Append("    <input type=\"button\" name=\"btn_pass\" id=\"btn_pass\" value=\"审核通过\" style=\"font-size:14px; font-weight:700; color:#555;width:150px; height:33px; line-height:20px; font-weight:bold\">\r\n");
	ViewBuilder.Append("    <input type=\"button\" name=\"btn_unpass\" id=\"btn_unpass\" value=\"审核未通过\" style=\"font-size:14px; font-weight:700; color:#555;width:150px; height:33px; line-height:20px; font-weight:bold\">\r\n");
	ViewBuilder.Append("  </p>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</table></body>\r\n");
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
