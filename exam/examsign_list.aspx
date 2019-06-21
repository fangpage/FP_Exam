<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examsign_list" %>
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
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
	ViewBuilder.Append("        $(\"#btn_add\").click(function () {\r\n");
	ViewBuilder.Append("          window.location.href = \"examsign_add.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $('.delete').click(function () {\r\n");
	ViewBuilder.Append("            var cid = $(this).attr(\"data\");\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#signid\").val(cid);\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.download').click(function () {\r\n");
	ViewBuilder.Append("          var cid = $(this).attr(\"data\");\r\n");
	ViewBuilder.Append("          $(\"#signid\").val(cid);\r\n");
	ViewBuilder.Append("          $(\"#action\").val(\"download\");\r\n");
	ViewBuilder.Append("          $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"\">\r\n");
	ViewBuilder.Append("<form method=\"post\" action=\"\" name=\"frmpost\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"signid\" id=\"signid\" value=\"\">\r\n");
	ViewBuilder.Append("  <p align=\"center\">\r\n");
	ViewBuilder.Append("   <input type=\"button\" name=\"btn_add\" id=\"btn_add\" value=\"添加考试报名\" style=\"font-size:14px; font-weight:700; color:#555;width:220px; height:33px; line-height:20px; font-weight:bold\">\r\n");
	ViewBuilder.Append("  </p>\r\n");
	ViewBuilder.Append("  <table width=\"900\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"0\" class=\"xxx\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td width=\"60\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>序号</strong></td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>考试名称</strong></td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>准考证号</strong></td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>报名时间</strong></td>\r\n");
	ViewBuilder.Append("        <td bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>审核状态</strong></td>\r\n");
	ViewBuilder.Append("        <td width=\"200\" bgcolor=\"#F0F0F0\" style=\"text-align:center\"><strong>操作</strong></td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");

	loop__id=0;
	foreach(ExamSignInfo item in examsignlist)
	{
	loop__id++;
	ViewBuilder.Append("<tr>\r\n");
	ViewBuilder.Append("        <td align=\"center\">" + loop__id.ToString() + "</td>\r\n");
	ViewBuilder.Append("        <td style=\"text-align:left\">" + echo(item.examname) + "</td>\r\n");
	ViewBuilder.Append("        <td style=\"text-align:center\">" + echo(item.ikey) + "</td>\r\n");
	ViewBuilder.Append("        <td style=\"text-align:center;\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm:ss") + "</td>\r\n");
	ViewBuilder.Append("        <td style=\"text-align:center;\">\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("          <span style=\"color:#808080\">未审核</span>\r\n");
	}
	else if (item.status==2)
	{
	ViewBuilder.Append("          <span style=\"color:#1317fc\">已通过</span>\r\n");
	}
	else if (item.status==3)
	{
	ViewBuilder.Append("          <span style=\"color:#ff0000\">未通过</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("          未提交\r\n");
	}//end if
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td width=\"200\" style=\"text-align:center\">\r\n");

	if (item.status==0||item.status==3)
	{
	ViewBuilder.Append("             <a href=\"examsign_add.aspx?id=" + echo(item.id) + "\"><strong>修改</strong></a>\r\n");
	ViewBuilder.Append("             <a data=\"" + echo(item.id) + "\" class=\"delete\" data=\"" + echo(item.id) + "\" href=\"javascript:void();\"><strong>删除</strong></a>\r\n");
	}
	else if (item.status==2)
	{
	ViewBuilder.Append("             <a href=\"examsign_view.aspx?id=" + echo(item.id) + "\" target=\"_blank\"><strong>查看</strong></a>\r\n");
	ViewBuilder.Append("             <a href=\"javascript:void();\" data=\"" + echo(item.id) + "\" class=\"download\"><strong>下载准考证</strong></a>\r\n");
	}
	else
	{
	ViewBuilder.Append("             <a href=\"examsign_view.aspx?id=" + echo(item.id) + "\" target=\"_blank\"><strong>查看</strong></a>\r\n");
	}//end if
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	}//end loop
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
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
