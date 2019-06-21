<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Wap.WapController.examhistory" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	base.View();

	if (examresultlist.Count>0)
	{
	ViewBuilder.Append("<ul class=\"dd\">\r\n");

	loop__id=0;
	foreach(ExamResult item in examresultlist)
	{
	loop__id++;
	ViewBuilder.Append("<li class=\"mixclass\">\r\n");
	ViewBuilder.Append("		<div class=\"recom-box\">\r\n");
	ViewBuilder.Append("			<div class=\"recomright\" style=\"width: 280px;\">\r\n");
	ViewBuilder.Append("			    <div class=\"cont-top\">\r\n");
	ViewBuilder.Append("		            " + echo(item.examname) + "\r\n");
	ViewBuilder.Append("			    </div>\r\n");
	ViewBuilder.Append("				<div class=\"cont-thd\"></div>\r\n");
	ViewBuilder.Append("			    <div class=\"cont-sec\">考试日期：" + echo(item.starttime,"yyyy年MM月dd日") + "，得分：" + echo(item.score) + "</div>\r\n");
	ViewBuilder.Append("				<div class=\"cont-last\">\r\n");

	if (item.status==0)
	{
	ViewBuilder.Append("<span class=\"join-exam\" style=\"color:#ff0000;\" resultid=\"" + echo(item.id) + "\">继续考试</span>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<span class=\"result-exam\" resultid=\"" + echo(item.id) + "\">查看结果</span>\r\n");
	}//end if
	ViewBuilder.Append("				</div>\r\n");
	ViewBuilder.Append("			</div>\r\n");
	ViewBuilder.Append("		</div>\r\n");
	ViewBuilder.Append("		<div class=\"clear\"></div>\r\n");
	ViewBuilder.Append("	</li>\r\n");
	}//end loop
	ViewBuilder.Append("</ul>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<div style=\"margin-top:25%; text-align:center;\">\r\n");
	ViewBuilder.Append("	<img src=\"" + echo(webpath) + "wap/statics/images/noclass.png\" width=\"150\" height=\"150\">\r\n");
	ViewBuilder.Append("    <p style=\"color: #888888;font-size: 14px;\">暂时还没有任何考试</p>\r\n");
	ViewBuilder.Append("</div>\r\n");
	}//end if
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
