<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examsign_add" %>
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
	ViewBuilder.Append("      $(\"#btn_save\").click(function () {\r\n");
	ViewBuilder.Append("        $(\"#action\").val(\"save\");\r\n");
	ViewBuilder.Append("        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("      });\r\n");
	ViewBuilder.Append("      $(\"#btn_post\").click(function () {\r\n");
	ViewBuilder.Append("        if (confirm(\"提交后不可再更改，您是否确认提交？\")) {\r\n");
	ViewBuilder.Append("          var ispost = false;\r\n");
	ViewBuilder.Append("          $(\"input\").each(function () {\r\n");
	ViewBuilder.Append("            var data = $(this).attr(\"data\");\r\n");
	ViewBuilder.Append("            if (data != undefined) {\r\n");
	ViewBuilder.Append("              var value = $(this).val();\r\n");
	ViewBuilder.Append("              if (value.length == 0) {\r\n");
	ViewBuilder.Append("                alert(data + \"不能为空。\");\r\n");
	ViewBuilder.Append("                $(this).focus();\r\n");
	ViewBuilder.Append("                ispost = true;\r\n");
	ViewBuilder.Append("              }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("          if (!ispost) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"post\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("          }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("      })\r\n");
	ViewBuilder.Append("      $(\"#btn_back\").click(function () {\r\n");
	ViewBuilder.Append("        window.location.href = \"examsign_list.aspx\";\r\n");
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
	ViewBuilder.Append("        <td bgcolor=\"#993300\" class=\"title\"><strong>考试报名</strong></td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>选择考试</strong></td>\r\n");
	ViewBuilder.Append("        <td colspan=\"9\">\r\n");
	ViewBuilder.Append("            <select id=\"examid\" name=\"examid\" style=\"width:80px;\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">选择考试</option>\r\n");

	loop__id=0;
	foreach(ExamInfo item in examlist)
	{
	loop__id++;
	ViewBuilder.Append("                <option value=\"" + echo(item.id) + "\" "+(item.id==examsigninfo.examid?echo("selected"):echo(""))+">" + echo(item.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>姓名</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <input data=\"姓名\" name=\"signer[uname]\" type=\"text\" class=\"inputx11\" style=\"width:130px;\" id=\"signer[uname]\" value=\"" + echo(examsigninfo.signer["uname"]) + "\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"80\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>性别</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\"><input data=\"性别\" name=\"signer[sex]\" type=\"text\" class=\"inputx11\" style=\"width:80px;\" id=\"signer[sex]\" value=\"" + echo(examsigninfo.signer["sex"]) + "\"></td>\r\n");
	ViewBuilder.Append("        <td width=\"150\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>出生年月</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"100\"><input data=\"出生年月\" name=\"signer[bday]\" type=\"text\" class=\"inputx11\" style=\"width:130px;\" id=\"signer[bday]\" onfocus=\"WdatePicker({el:'signer[bday]',dateFmt:'yyyy-MM-dd'})\" readonly=\"readonly\" value=\"" + echo(examsigninfo.signer["bday"]) + "\"></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>民族</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"80\"><input data=\"民族\" name=\"signer[nation]\" type=\"text\" class=\"inputx11\" style=\"width:80px;\" id=\"signer[nation]\" value=\"" + echo(examsigninfo.signer["nation"]) + "\"></td>\r\n");
	ViewBuilder.Append("        <td width=\"150\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>工作年限</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"100\"><input data=\"工作年限\" name=\"signer[joblimit]\" type=\"text\" class=\"inputx11\" style=\"width:100px;\" id=\"signer[joblimit]\" value=\"" + echo(examsigninfo.signer["joblimit"]) + "\"></td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>身份证号</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <input data=\"身份证号\" name=\"signer[idcard]\" type=\"text\" class=\"inputx11\" style=\"width:98%\" id=\"signer[idcard]\" value=\"" + echo(examsigninfo.signer["idcard"]) + "\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>手机号</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <input data=\"手机号\" name=\"signer[mobile]\" type=\"text\" class=\"inputx11\" style=\"width:98%\" id=\"signer[mobile]\" value=\"" + echo(examsigninfo.signer["mobile"]) + "\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"108\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>电子邮箱</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"153\">\r\n");
	ViewBuilder.Append("            <input data-=\"电子邮箱\" name=\"signer[email]\" type=\"text\" class=\"inputx11\" style=\"width:98%\" id=\"signer[email]\" value=\"" + echo(examsigninfo.signer["email"]) + "\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>毕业院校</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("             <input data=\"毕业院校\" name=\"signer[shcool]\" type=\"text\" class=\"inputx11\" style=\"width:98%\" id=\"signer[shcool]\" value=\"" + echo(examsigninfo.signer["shcool"]) + "\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>所学专业</strong></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("             <input data=\"所学专业\" name=\"signer[profession]\" type=\"text\" class=\"inputx11\" style=\"width:98%\" id=\"signer[profession]\" value=\"" + echo(examsigninfo.signer["profession"]) + "\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"108\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>工作单位</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"153\">\r\n");
	ViewBuilder.Append("            <input data=\"工作单位\" name=\"signer[company]\" type=\"text\" class=\"inputx11\" style=\"width:98%\" id=\"signer[company]\" value=\"" + echo(examsigninfo.signer["company"]) + "\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>上传照片</strong></td>\r\n");
	ViewBuilder.Append("        <td colspan=\"2\" style=\"width:400px;font-size:12px;line-height:20px;\">\r\n");
	ViewBuilder.Append("            <img src=\"" + echo(examsigninfo.img) + "\" width=\"100\" height=\"100\">\r\n");
	ViewBuilder.Append("            <br>\r\n");
	ViewBuilder.Append("           <input id=\"img\" name=\"img\" style=\"width:300px;\" type=\"file\"><br>\r\n");
	ViewBuilder.Append("           <div style=\"font-size:12px;line-height:20px;\">\r\n");
	ViewBuilder.Append("           图片大小为200K至2M之间，格式为JPG/PNG<br>\r\n");
	ViewBuilder.Append("           </div>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");

	if (examsigninfo.status==3&&examsigninfo.reason!="")
	{
	ViewBuilder.Append("<table width=\"1000\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" width=\"147\" style=\"text-align:center\"><strong>审核未通过原因</strong></td>\r\n");
	ViewBuilder.Append("        <td style=\"height:100px;\">\r\n");
	ViewBuilder.Append("            " + echo(examsigninfo.reason) + "\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("  </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	}//end if
	ViewBuilder.Append("  <p align=\"center\">\r\n");
	ViewBuilder.Append("    <input type=\"button\" name=\"btn_save\" id=\"btn_save\" value=\"保存\" style=\"font-size:14px; font-weight:700; color:#555;width:150px; height:33px; line-height:20px; font-weight:bold\">\r\n");
	ViewBuilder.Append("    <input type=\"button\" name=\"btn_post\" id=\"btn_post\" value=\"确认提交\" style=\"font-size:14px; font-weight:700; color:#555;width:220px; height:33px; line-height:20px; font-weight:bold\">\r\n");
	ViewBuilder.Append("    <input type=\"button\" name=\"btn_back\" id=\"btn_back\" value=\"返回\" style=\"font-size:14px; font-weight:700; color:#555;width:220px; height:33px; line-height:20px; font-weight:bold\">\r\n");
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
