<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Wap.WapController.loadtopicinfo" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<div class=\"progress-wrap\">\r\n");
	ViewBuilder.Append("	<div>\r\n");
	ViewBuilder.Append("		<div id=\"slider\" class=\"ui-slider\"></div>\r\n");
	ViewBuilder.Append("	</div>\r\n");
	ViewBuilder.Append("	<div class=\"num\">\r\n");
	ViewBuilder.Append("		<i class=\"doTopNo\">0</i>/<em class=\"totalTopNo\">0</em>\r\n");
	ViewBuilder.Append("	</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"content-wrap wrapper\">\r\n");
	ViewBuilder.Append(" <div class=\"scroller\">\r\n");
	ViewBuilder.Append("	<div class=\"qust-wrap\">\r\n");
	ViewBuilder.Append("		<div class=\"question\">\r\n");
	ViewBuilder.Append("			<span> \r\n");

	if (questioninfo.type=="TYPE_RADIO")
	{
	ViewBuilder.Append("<i class=\"label\">[单选题]</i>\r\n");
	}//end if

	if (questioninfo.type=="TYPE_MULTIPLE")
	{
	ViewBuilder.Append("<i class=\"label\">[多选题]</i>\r\n");
	}//end if

	if (questioninfo.type=="TYPE_TRUE_FALSE")
	{
	ViewBuilder.Append("<i class=\"label\">[判断题]</i>\r\n");
	}//end if

	if (questioninfo.type=="TYPE_BLANK")
	{
	ViewBuilder.Append("<i class=\"label\">[填空题]</i>\r\n");
	}//end if

	if (questioninfo.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("<i class=\"label\">[问答题]</i>\r\n");
	}//end if

	if (questioninfo.type=="TYPE_BLANK")
	{
	ViewBuilder.Append("        " + echo(FmAnswer(questioninfo.title)) + "\r\n");
	}
	else
	{
	ViewBuilder.Append("        " + echo(questioninfo.title) + "\r\n");
	}//end if
	ViewBuilder.Append("			</span>\r\n");
	ViewBuilder.Append("		</div>\r\n");
	ViewBuilder.Append("		<div class=\"answer\">\r\n");
	ViewBuilder.Append("			<ul>\r\n");

	if (questioninfo.type=="TYPE_RADIO")
	{
	for (int i = 0; i <= 7; i++){

	if (i<questioninfo.ascount)
	{
	ViewBuilder.Append("<li class=\"an-itm queOption\" option=\"" + echo(answerarr[i]) + "\"><span class=\"round\">" + echo(answerarr[i]) + "</span> <em>" + echo(questioninfo.option[i]) + "</em></li>\r\n");
	}//end if
	}//end for
	}
	else if (questioninfo.type=="TYPE_MULTIPLE")
	{
	for (int i = 0; i <= 7; i++){

	if (i<questioninfo.ascount)
	{
	ViewBuilder.Append("<li class=\"an-itm queOptionD\" option=\"" + echo(answerarr[i]) + "\"><span class=\"round\">" + echo(answerarr[i]) + "</span> <em>" + echo(questioninfo.option[i]) + "</em></li>\r\n");
	}//end if
	}//end for
	}
	else if (questioninfo.type=="TYPE_TRUE_FALSE")
	{
	ViewBuilder.Append("          <li class=\"an-itm queOption\" option=\"Y\"><span class=\"round yes\"></span><em>正确</em></li>\r\n");
	ViewBuilder.Append("          <li class=\"an-itm queOption\" option=\"N\"><span class=\"round no\"></span><em>错误</em></li>\r\n");
	}
	else if (questioninfo.type=="TYPE_BLANK")
	{
	for (int i = 1; i <= questioninfo.ascount; i++){
	ViewBuilder.Append("           <li class=\"an-itm\"><span class=\"round active\">" + echo(i) + "</span><div class=\"text-wrap\"><div class=\"text TKAns uTKAnsH" + echo((i-1)) + "\" contenteditable=\"true\"></div><p class=\"uTKAns" + echo((i-1)) + "\">点击这里输入答案</p></div></li>\r\n");
	}//end for
	}
	else if (questioninfo.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("            <textarea class=\"text\" style=\"width:100%;height:200px;\" id=\"textAns\"></textarea>\r\n");
	}//end if
	ViewBuilder.Append("			</ul>\r\n");
	ViewBuilder.Append("		</div>\r\n");
	ViewBuilder.Append("	</div>\r\n");
	ViewBuilder.Append("  <div style=\"display:none;\" class=\"result-wrap\">\r\n");
	ViewBuilder.Append("    <div class=\"result clear\">\r\n");
	ViewBuilder.Append("        <div class=\"res-itm an-right fl\">\r\n");
	ViewBuilder.Append("        <h1>正确答案</h1>\r\n");
	ViewBuilder.Append("        <div>\r\n");

	if (questioninfo.answer=="Y")
	{
	ViewBuilder.Append("<span id=\"my_answer\">正确</span>\r\n");
	}//end if
	else if (questioninfo.answer=="N")
	{
	ViewBuilder.Append("<span id=\"my_answer\">错误</span>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<span id=\"my_answer\">" + echo(questioninfo.answer) + "</span>\r\n");
	}//end if
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"res-itm an-you fl\">\r\n");
	ViewBuilder.Append("        <h1>您的答案</h1>\r\n");
	ViewBuilder.Append("        <div>\r\n");

	if (questioninfo.useranswer=="Y")
	{
	ViewBuilder.Append("<span>正确</span>\r\n");
	}//end if
	else if (questioninfo.useranswer=="N")
	{
	ViewBuilder.Append("<span>错误</span>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<span>" + echo(questioninfo.useranswer) + "</span>\r\n");
	}//end if
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"res-info\">\r\n");
	ViewBuilder.Append("        <h1>解析</h1>\r\n");
	ViewBuilder.Append("        <div class=\"word\" style=\"word-break: break-all;\">\r\n");
	ViewBuilder.Append("            " + echo(questioninfo.explain) + "\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append(" </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<input type=\"hidden\" id=\"useranswer\" value=\"" + echo(questioninfo.useranswer) + "\" class=\"queOptionMe\">\r\n");
	ViewBuilder.Append("<input type=\"hidden\" id=\"userAns\" value=\"" + echo(questioninfo.useranswer) + "\">\r\n");
	ViewBuilder.Append("<input type=\"hidden\" id=\"qid\" value=\"" + echo(qid) + "\">\r\n");
	ViewBuilder.Append("<input type=\"hidden\" id=\"topType\" value=\"" + echo(questioninfo.type) + "\">\r\n");
	ViewBuilder.Append("<input type=\"hidden\" id=\"ismarker\" value=\"" + echo(questioninfo.ismarker) + "\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "wap/statics/flat-ui/flat-ui.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "wap/statics/js/application.js\"></");
	ViewBuilder.Append("script>\r\n");
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
