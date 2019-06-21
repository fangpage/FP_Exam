<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examtopicmanage" %>
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
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>试卷题目设置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/admin/css/exam.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/tab.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(adminpath) + "statics/js/admin.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.sprite').click(function () {   // 获取所谓的父行\r\n");
	ViewBuilder.Append("            $(this).toggleClass(\"sprite-selected\");  // 添加/删除图标\r\n");
	ViewBuilder.Append("            $('.child_' + $(this).attr('id')).toggle();  // 隐藏/显示所谓的子行\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.sprite-selected').click(function () {   // 获取所谓的父行\r\n");
	ViewBuilder.Append("            if ($(this).attr('class') == 'sprite-selected')\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                $(this).attr('class','sprite');\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                $(this).attr('class', 'sprite-selected');\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $('.child_' + $(this).attr('id')).toggle();  // 隐藏/显示所谓的子行\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btndisplay').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"display\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnaddpaper').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"addpaper\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#submitdel').click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除该份试卷吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delpaper\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnsaveas').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"saveas\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $('#outputpaper').click(function () {\r\n");
	ViewBuilder.Append("            index = $.layer({\r\n");
	ViewBuilder.Append("                type: 2,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '导出试卷',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                iframe: { src: 'outputpaper.aspx?examid=" + echo(examid) + "&paper=" + echo(paper) + "'},\r\n");
	ViewBuilder.Append("                area: ['485px', '185px']\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	string navurl = "exammanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,navurl)) + "|" + echo(examinfo.name) + "," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteExamTopic(examtopicid) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要删除该大题吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#examtopicid\").val(examtopicid);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function DeleteTopic(examtopicid,tid) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要从试卷中取消加入该试题吗？\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"deletetopic\");\r\n");
	ViewBuilder.Append("            $(\"#examtopicid\").val(examtopicid);\r\n");
	ViewBuilder.Append("            $(\"#tid\").val(tid);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"examtopicid\" id=\"examtopicid\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"tid\" id=\"tid\" value=\"\">\r\n");
	ViewBuilder.Append("  <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul id=\"mytab1\">\r\n");

	if (examinfo.papers>=1)
	{
	ViewBuilder.Append("              <li class=\""+(paper==1?echo(" "+"active"):echo(" "+"normal"))+"\"><a href=\"?examid=" + echo(examid) + "&paper=1\">A卷</a> </li>\r\n");
	}//end if

	if (examinfo.papers>=2)
	{

	if (paper==2)
	{
	ViewBuilder.Append("              <li class=\"active\"><a href=\"?examid=" + echo(examid) + "&paper=2\">B卷</a> </li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"?examid=" + echo(examid) + "&paper=2\">B卷</a> </li>\r\n");
	}//end if
	}//end if

	if (examinfo.papers>=3)
	{

	if (paper==3)
	{
	ViewBuilder.Append("              <li class=\"active\"><a href=\"?examid=" + echo(examid) + "&paper=3\">C卷</a> </li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"?examid=" + echo(examid) + "&paper=3\">C卷</a> </li>\r\n");
	}//end if
	}//end if

	if (examinfo.papers>=4)
	{

	if (paper==4)
	{
	ViewBuilder.Append("              <li class=\"active\"><a href=\"?examid=" + echo(examid) + "&paper=4\">D卷</a> </li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"?examid=" + echo(examid) + "&paper=4\">D卷</a> </li>\r\n");
	}//end if
	}//end if

	if (examinfo.papers<4)
	{
	ViewBuilder.Append("            <li class=\"normal\"><a id=\"btnaddpaper\" href=\"javascript:void();\">添加试卷</a> </li>\r\n");
	}//end if
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除试卷</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/add.gif) 2px 6px no-repeat\"><a href=\"examtopicadd.aspx?examid=" + echo(examid) + "&paper=" + echo(paper) + "\">添加大题</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/save.gif) 2px 6px no-repeat\"><a id=\"btnsaveas\" href=\"javascript:void();\">另存为</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/display.gif) 2px 6px no-repeat\"><a id=\"btndisplay\" href=\"javascript:void();\">保存排序</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/report.png) 2px 6px no-repeat\"><a href=\"" + echo(webpath) + "exam/exampreview.aspx?examid=" + echo(examid) + "&paper=" + echo(paper) + "\" target=\"_blank\">试卷预览</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/down.gif) 2px 6px no-repeat\"><a id=\"outputpaper\" href=\"#\">导出试卷</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pagename) + "?examid=" + echo(examid) + "&paper=" + echo(paper) + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/return.gif) 2px 6px no-repeat\"><a href=\"exammanage.aspx?sortid=" + echo(sortid) + "\">返回</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\">\r\n");
	ViewBuilder.Append("               <strong>总分：<span id=\"total\" style=\"color:Red\">100</span>分，总题目数：<span style=\"color:Red\">" + echo(examinfo.questions) + "</span>题</strong>\r\n");
	ViewBuilder.Append("              </li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	double total = 0;

	loop__id=0;
	foreach(ExamTopic examtopic in examtopiclist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr style=\"color:#1317fc;\" class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\" align=\"center\"><div id=\"row_" + echo(examtopic.id) + "\" \r\n");

	if (examtopic.id==examtopicid)
	{
	ViewBuilder.Append(" class=\"sprite-selected\" \r\n");
	}
	else
	{
	ViewBuilder.Append(" class=\"sprite\" title=\"点击显示所选固定题\" \r\n");
	}//end if
	ViewBuilder.Append("></div></td>\r\n");
	ViewBuilder.Append("        	  <td align=\"left\" valign=\"middle\">\r\n");
	ViewBuilder.Append("                 " + echo(examtopic.title) + "(总题数<span style=\"color:Red\">" + echo(examtopic.questions) + "</span>题=固定题<span style=\"color:Red\">" + echo(examtopic.curquestions) + "</span>题+随机题<span style=\"color:Red\">" + echo((examtopic.questions-examtopic.curquestions)) + "</span>题，每题<span style=\"color:Red\">" + echo(examtopic.perscore) + "</span>分，共<span style=\"color:Red\">" + echo((examtopic.perscore*examtopic.questions)) + "</span>分)\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\">所在题库</td>\r\n");
	ViewBuilder.Append("              <td width=\"180\">\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"examtopicadd.aspx?id=" + echo(examtopic.id) + "&paper=" + echo(paper) + "\">编辑</a>\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"javascript:DeleteExamTopic(" + echo(examtopic.id) + ")\">删除</a>\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"questionselect.aspx?examtopicid=" + echo(examtopic.id) + "&paper=" + echo(paper) + "\">手工选题</a>\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"examtopicrandom.aspx?examtopicid=" + echo(examtopic.id) + "&paper=" + echo(paper) + "\">随机选题</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	 total = total+examtopic.perscore*examtopic.questions;
	int topicnum = 0;

	loop__id=0;
	foreach(ExamQuestion item in QuestionBll.GetQuestionList(examtopic.questionlist))
	{
	loop__id++;
	 topicnum = topicnum+1;
	ViewBuilder.Append("            <tr class=\"tlist child_row_" + echo(examtopic.id) + "\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\" style=\""+(examtopic.id==examtopicid?echo(""):echo("display:none"))+"\">\r\n");
	ViewBuilder.Append("              <td width=\"40\" align=\"center\">\r\n");
	ViewBuilder.Append("                  <input id=\"display_" + echo(item.id) + "\" name=\"display_" + echo(item.id) + "\" style=\"text-align:center;width:36px;\" value=\"" + echo(topicnum) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">\r\n");
	ViewBuilder.Append("              <strong>\r\n");
	ViewBuilder.Append("                      " + echo(item.typestr) + "：\r\n");
	ViewBuilder.Append("                      " + echo(FmAnswer(item.title)) + "\r\n");
	ViewBuilder.Append("              </strong>\r\n");

	if (item.type=="TYPE_RADIO"||item.type=="TYPE_MULTIPLE")
	{
	ViewBuilder.Append("              <div style=\"height: 2px; overflow: hidden;\"></div>\r\n");
	ViewBuilder.Append("              " + echo(Option(item.option,item.ascount)) + "\r\n");
	}//end if
	ViewBuilder.Append("              <div style=\"height: 5px; overflow: hidden; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 1px; border-bottom-style: dashed;\"></div>\r\n");
	ViewBuilder.Append("              <div class=\"tips\">\r\n");
	ViewBuilder.Append("              <div style=\"color:Red\">\r\n");

	if (item.type=="TYPE_TRUE_FALSE")
	{

	if (item.answer=="Y")
	{
	ViewBuilder.Append("                 参考答案：正确\r\n");
	}
	else if (item.answer=="N")
	{
	ViewBuilder.Append("                 参考答案：错误\r\n");
	}//end if
	}
	else
	{
	ViewBuilder.Append("                 参考答案：" + echo(item.answer) + "\r\n");
	}//end if
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">难易程度：" + echo(item.diffstr) + "，考过次数：" + echo(item.exams) + "，做错次数：" + echo(item.wrongs) + "</span><br>\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">答案解析："+(item.explain!=""?echo(item.explain):echo("暂无解析"))+"</span> \r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.sortname) + "</td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"questionadd.aspx?id=" + echo(item.id) + "&examid=" + echo(examid) + "&examtopicid=" + echo(examtopic.id) + "\">编辑试题</a>&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"javascript:DeleteTopic(" + echo(examtopic.id) + "," + echo(item.id) + ")\">取消加入</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("          <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("              $(\"#total\").html('" + echo(total) + "');\r\n");
	ViewBuilder.Append("          </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
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
