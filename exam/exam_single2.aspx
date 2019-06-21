<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.exam" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html lang=\"zh-cn\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Pragma\" content=\"no-cache\">\r\n");
	ViewBuilder.Append("<title>" + echo(examresult.examname) + "|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/famous-exam.css\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/common.css\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/exam.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery-ui/js/jquery-ui-1.9.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jform/jquery.form.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "popup/popup.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "plugins/webcam/jquery.webcam.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/exam_single.js\"></");
	ViewBuilder.Append("script>\r\n");

	if (examinfo.iscopy==1)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    if (window.Event)\r\n");
	ViewBuilder.Append("        function nocontextmenu(e) {\r\n");
	ViewBuilder.Append("        var ev = e ? e : window.event;\r\n");
	ViewBuilder.Append("        ev.cancelBubble = true\r\n");
	ViewBuilder.Append("        ev.returnValue = false;\r\n");
	ViewBuilder.Append("        if (ev.preventDefault) {\r\n");
	ViewBuilder.Append("            ev.preventDefault();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        if (ev.stopPropagation) {\r\n");
	ViewBuilder.Append("            ev.stopPropagation();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return false;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function nocopy(e) {\r\n");
	ViewBuilder.Append("        var ev = e ? e : window.event;\r\n");
	ViewBuilder.Append("        ev.cancelBubble = true\r\n");
	ViewBuilder.Append("        ev.returnValue = false;\r\n");
	ViewBuilder.Append("        if (ev.preventDefault) {\r\n");
	ViewBuilder.Append("            ev.preventDefault();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        if (ev.stopPropagation) {\r\n");
	ViewBuilder.Append("            ev.stopPropagation();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return false;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function norightclick(e) {\r\n");
	ViewBuilder.Append("        if (window.Event) {\r\n");
	ViewBuilder.Append("            if (e.which == 2 || e.which == 3)\r\n");
	ViewBuilder.Append("                return false;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else\r\n");
	ViewBuilder.Append("            if (event.button == 2 || event.button == 3) {\r\n");
	ViewBuilder.Append("                event.cancelBubble = true;\r\n");
	ViewBuilder.Append("                event.returnvalue = false;\r\n");
	ViewBuilder.Append("                return false;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    document.oncontextmenu = nocontextmenu; // for IE5+ \r\n");
	ViewBuilder.Append("    document.oncopy = nocopy;\r\n");
	ViewBuilder.Append("    document.onkeydown = function (event) //shield F5  //shift+F10 ctrl+R\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        event = event ? event : (window.event ? window.event : null); // ie firefox\r\n");
	ViewBuilder.Append("        if (event.keyCode == 116 || (event.shiftKey && event.keyCode == 121) || (event.ctrlKey && event.keyCode == 82)) {\r\n");
	ViewBuilder.Append("            event.keyCode = 0;\r\n");
	ViewBuilder.Append("            event.cancelBubble = true;\r\n");
	ViewBuilder.Append("            event.returnValue = false;\r\n");
	ViewBuilder.Append("            if (event && event.preventDefault)\r\n");
	ViewBuilder.Append("                event.preventDefault();\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("                window.event.returnValue = false;\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var selectId = null;\r\n");
	ViewBuilder.Append("    function toSubject(id) {\r\n");
	ViewBuilder.Append("        if (null != selectId) {\r\n");
	ViewBuilder.Append("            $(\"#question_\" + selectId).hide();\r\n");
	ViewBuilder.Append("            $(\"#q_\" + selectId).removeClass(\"border_bg\");\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        selectId = id;\r\n");
	ViewBuilder.Append("        $(\"#question_\" + selectId).show();\r\n");
	ViewBuilder.Append("        $(\"#q_\" + selectId).addClass(\"border_bg\");\r\n");
	ViewBuilder.Append("        if ($(\"#q_\" + selectId).hasClass(\"red_bg\")) {\r\n");
	ViewBuilder.Append("            $(\"#standingby\").removeClass(\"Undetermined\");\r\n");
	ViewBuilder.Append("            $(\"#standingby\").addClass(\"Undetermined-gray\");\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            $(\"#standingby\").addClass(\"Undetermined\");\r\n");
	ViewBuilder.Append("            $(\"#standingby\").removeClass(\"Undetermined-gray\");\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function subject_menu_hide(o, sbid) {\r\n");
	ViewBuilder.Append("        if ($('#' + sbid).css(\"display\") == \"block\") {\r\n");
	ViewBuilder.Append("            $('#' + sbid).css(\"display\", \"none\");\r\n");
	ViewBuilder.Append("            $(o).addClass(\"showorhidelist\");\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            $('#' + sbid).css(\"display\", \"block\");\r\n");
	ViewBuilder.Append("            $(o).removeClass(\"showorhidelist\");\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function pre_click() {\r\n");
	ViewBuilder.Append("        var num = $(\"#examTopicWrapId\").find(\"li\").index($(\"#q_\" + selectId));\r\n");
	ViewBuilder.Append("        if (num > 0) {\r\n");
	ViewBuilder.Append("            $(\"#examTopicWrapId\").find(\"li:eq(\" + (parseInt(num) - 1) + \")\").trigger(\"click\");\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function next_click() {\r\n");
	ViewBuilder.Append("        var num = $(\"#examTopicWrapId\").find(\"li\").index($(\"#q_\" + selectId));\r\n");
	ViewBuilder.Append("        $(\"#examTopicWrapId\").find(\"li:eq(\" + (parseInt(num) + 1) + \")\").trigger(\"click\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function pause_click() {\r\n");
	ViewBuilder.Append("        if ($(\"#q_\" + selectId).hasClass(\"red_bg\")) {\r\n");
	ViewBuilder.Append("            $(\"#q_\" + selectId).removeClass(\"red_bg\");\r\n");
	ViewBuilder.Append("            $(\"#standingby\").addClass(\"Undetermined\");\r\n");
	ViewBuilder.Append("            $(\"#standingby\").removeClass(\"Undetermined-gray\");\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            $(\"#q_\" + selectId).addClass(\"red_bg\");\r\n");
	ViewBuilder.Append("            $(\"#standingby\").removeClass(\"Undetermined\");\r\n");
	ViewBuilder.Append("            $(\"#standingby\").addClass(\"Undetermined-gray\");\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");

	if (examinfo.iswitch==1)
	{

	if (browser=="ie6"||browser=="ie7"||browser=="ie8")
	{
	ViewBuilder.Append("var isWindowFocus = true;\r\n");
	ViewBuilder.Append("function checkTable() {\r\n");
	ViewBuilder.Append("    if (!isWindowFocus && isNeedSkip == false) {\r\n");
	ViewBuilder.Append("        examOut();\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    setTimeout(\"checkTable()\", 1000);\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("checkTable();\r\n");
	}
	else
	{
	ViewBuilder.Append("window.onblur = function () {\r\n");
	ViewBuilder.Append("    examOut();\r\n");
	ViewBuilder.Append("};\r\n");
	}//end if
	}//end if

	if (examinfo.iscopy==1)
	{
	ViewBuilder.Append("document.oncontextmenu = new Function('event.returnValue=false;');\r\n");
	ViewBuilder.Append("document.onselectstart = new Function('event.returnValue=false;');\r\n");
	}//end if
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<noscript>\r\n");
	ViewBuilder.Append("   <iframe src=\"*\"></iframe>\r\n");
	ViewBuilder.Append("</noscript>\r\n");
	ViewBuilder.Append("<form id=\"testProcessForm\" name=\"testProcessForm\" action=\"exampost.aspx\" method=\"post\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" id=\"resultid\" name=\"resultid\" value=\"" + echo(resultid) + "\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" id=\"starttime\" value=\"" + echo(examresult.starttime) + "\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" id=\"utime\" name=\"utime\" value=\"0\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" id=\"autotime\" value=\"" + echo(examconfig.autotime) + "\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" id=\"examtime\" value=\"" + echo(examresult.examtime) + "\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" id=\"isexam\" value=\"1\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" id=\"isvideo\" value=\"" + echo(examinfo.isvideo) + "\">\r\n");
	ViewBuilder.Append("  <div class=\"pure-g exam clf\">\r\n");
	ViewBuilder.Append("    <div class=\"pure-u-1-5\" id=\"examleftbar\" style=\"min-height:553px;\">\r\n");

	if (examinfo.isvideo==1)
	{
	ViewBuilder.Append("<div class=\"topic_choose\" id=\"topic_video\">\r\n");
	ViewBuilder.Append("         <div id=\"webcam\"></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	}//end if
	ViewBuilder.Append("      <div class=\"topic_choose\" id=\"topic_choose\">\r\n");
	ViewBuilder.Append("        <div class=\"ChooseStyle\">答题卡，试卷总分：<span class=\"examtime\">" + echo(examresult.total) + "分</span></div>\r\n");
	ViewBuilder.Append("        <div class=\"topic\" id=\"examTopicWrapId\">\r\n");
	int topic_num = 0;

	loop__id=0;
	foreach(ExamResultTopic examtopic in examtopiclist)
	{
	loop__id++;
	ViewBuilder.Append("          <div class=\"TopicType\">\r\n");
	ViewBuilder.Append("            <h3 title=\"" + echo(examtopic.title) + "，(共" + echo(examtopic.questions) + "题，每题" + echo(examtopic.perscore) + "分，共" + echo((examtopic.questions*examtopic.perscore)) + "分)\">" + echo(examtopic.title) + "<span class=\"fr bg_img\" onclick=\"subject_menu_hide(this,'subject_menu_" + loop__id.ToString() + "')\">&nbsp;</span></h3>\r\n");
	ViewBuilder.Append("            <ul id=\"subject_menu_" + loop__id.ToString() + "\">\r\n");
	for (int i = 1; i <= examtopic.questions; i++){
	 topic_num = topic_num+1;
	ViewBuilder.Append("              <li id=\"q_" + echo(examtopic.id) + "_" + echo(topic_num) + "\" onclick=\"toSubject('" + echo(examtopic.id) + "_" + echo(topic_num) + "')\">" + echo(topic_num) + "</li>\r\n");
	}//end for
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	}//end loop
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"ChooseStyle\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/tis.png\" style=\"width:146px;height:11px;\"></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"pure-u-4-5\" id=\"examContent\" style=\"min-height:553px;\">\r\n");
	ViewBuilder.Append("      <div class=\"pure-u-1\" style=\"height:90px;\">\r\n");
	ViewBuilder.Append("      <div class=\"exam-top clf\">\r\n");
	ViewBuilder.Append("        <div class=\"user-info-b ta-l\">\r\n");
	ViewBuilder.Append("          <div class=\"examinee_photo bg_img\"><img src=\"" + echo(user.avatar) + "\" id=\"userAvatar\" class=\"userAvatar\"></div>\r\n");
	ViewBuilder.Append("          <div class=\"exam_message\" id=\"exam_message\">\r\n");
	ViewBuilder.Append("            <div><b>考试名称：</b>" + echo(examresult.examname) + "</div>\r\n");
	ViewBuilder.Append("            <div><b>考生姓名：</b>" + echo(user.realname) + "(" + echo(username) + ")</div>\r\n");
	ViewBuilder.Append("            <div><b>身份证号：</b>" + echo(user.idcard) + "</div>\r\n");
	ViewBuilder.Append("            <div><b>所在部门：</b>" + echo(user.departlist) + "</div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"exam_timer\">剩余时间：<span id=\"thetime\">" + echo(thetime) + "</span></div>\r\n");
	ViewBuilder.Append("        <div class=\"menu\">\r\n");
	ViewBuilder.Append("          <div class=\"menutop clf\">\r\n");
	ViewBuilder.Append("            <div class=\"fl\" id=\"submitexam\"> <a class=\"bg_img round_btn upload_btn\" onclick=\"submitExam();return false;\"></a>\r\n");
	ViewBuilder.Append("              <p>我要交卷</p>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"fl\" id=\"submitsave\"> <a class=\"bg_img round_btn upload_btn\" onclick=\"extemporeSave()\"></a>\r\n");
	ViewBuilder.Append("              <p>保存答案</p>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"work_area\" id=\"mainQuestionsId\" style=\"min-height:553px;\">\r\n");
	ViewBuilder.Append("        <div class=\"topic_show\" id=\"examTopicShow\" style=\"min-height: 500px;\">\r\n");
	int topicnum = 0;

	loop__id=0;
	foreach(ExamResultTopic examtopic in examtopiclist)
	{
	loop__id++;
	ViewBuilder.Append("          <input type=\"hidden\" id=\"qidlist_" + echo(examtopic.id) + "\" name=\"qidlist_" + echo(examtopic.id) + "\" value=\"" + echo(examtopic.questionlist) + "\">\r\n");
	ViewBuilder.Append("          <div id=\"topic_" + echo(examtopic.id) + "\" class=\"tit1 pd1\" style=\"display:none;\">" + echo(examtopic.title) + "<span class=\"ft3\">(共" + echo(examtopic.questions) + "题，每题" + echo(examtopic.perscore) + "分，共" + echo((examtopic.questions*examtopic.perscore)) + "分)</span></div>\r\n");

	loop__id=0;
	foreach(ExamQuestion item in GetQuestionList(examtopic))
	{
	loop__id++;
	 topicnum = topicnum+1;

	if (item.type=="TYPE_RADIO")
	{
	ViewBuilder.Append("<dl id=\"question_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" class=\"st\" style=\"display:none;\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                 " + echo(Option(item.option,item.ascount,item.optionlist)) + "    \r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 5; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label><input type=\"radio\" id=\"answer_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" "+(answerarr[i]==item.useranswer?echo("checked"):echo(""))+" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("           </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_MULTIPLE")
	{
	ViewBuilder.Append("<dl id=\"question_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" class=\"st\" style=\"display:none;\">\r\n");
	ViewBuilder.Append("                <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("                </dt>\r\n");
	ViewBuilder.Append("                <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount,item.optionlist)) + "\r\n");
	ViewBuilder.Append("                </dd>\r\n");
	ViewBuilder.Append("                <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                    <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 5; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label><input type=\"checkbox\" id=\"answer_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" "+(FPArray.Contain(item.useranswer,answerarr[i])?echo("checked"):echo(""))+" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                    </span>\r\n");
	ViewBuilder.Append("                </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_TRUE_FALSE")
	{
	ViewBuilder.Append("<dl id=\"question_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" class=\"st\" style=\"display:none;\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	ViewBuilder.Append("                 <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" "+(item.useranswer=="Y"?echo("checked"):echo(""))+" value=\"Y\">正确</label>\r\n");
	ViewBuilder.Append("                 <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" "+(item.useranswer=="N"?echo("checked"):echo(""))+" value=\"N\">错误</label>\r\n");
	ViewBuilder.Append("                 </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_BLANK")
	{
	ViewBuilder.Append("<dl id=\"question_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" class=\"st\" style=\"display:none;\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(FmAnswer(item.title,item.id,item.useranswer,topicnum)) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("<dl id=\"question_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" class=\"st\" style=\"display:none;\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">请在下面填写答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt\" rows=\"5\" id=\"answer_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\">" + echo(item.useranswer) + "</textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	}//end loop
	}//end loop
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div id=\"fixDivBtm\">\r\n");
	ViewBuilder.Append("          <div id=\"dragBar\"><span></span><em></em></div>\r\n");
	ViewBuilder.Append("          <div class=\"show_choose clf tal-c\">\r\n");
	ViewBuilder.Append("              <span class=\"show_btn bg_img fl LastTopic\" id=\"prevQuestion\" onclick=\"pre_click();\"></span>\r\n");
	ViewBuilder.Append("              <span class=\"show_btn bg_img fl NextTopic\" id=\"nextQuestion\" onclick=\"next_click();\"></span>\r\n");
	ViewBuilder.Append("              <span class=\"show_btn bg_img fl Undetermined\" id=\"standingby\" onclick=\"pause_click();\"></span>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(document).ready(function () {\r\n");
	ViewBuilder.Append("            var ipt = $(\"label input\");\r\n");
	ViewBuilder.Append("            ipt.parent().removeClass(\"sd\");\r\n");
	ViewBuilder.Append("            ipt.filter(\":checked\").parent().addClass(\"sd\");\r\n");
	ViewBuilder.Append("            ipt.each(function () {\r\n");
	ViewBuilder.Append("                var fkid = $(this).attr(\"id\").replace(\"answer_\", \"\");\r\n");
	ViewBuilder.Append("                var ids = new Array();\r\n");
	ViewBuilder.Append("                $(\"input[id='answer_\" + fkid + \"']\").each(function () {\r\n");
	ViewBuilder.Append("                    if ($(this).attr('checked'))\r\n");
	ViewBuilder.Append("                        ids.push($(this).val());\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("                if (ids.length > 0) {\r\n");
	ViewBuilder.Append("                    if ($(\"#q_\" + fkid).hasClass(\"green_bg \") == false) {\r\n");
	ViewBuilder.Append("                        $(\"#q_\" + fkid).addClass(\"green_bg \");\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    $(\"#q_\" + fkid).removeClass(\"green_bg \");\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#examTopicWrapId\").find(\"li:first\").trigger(\"click\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");

	if (examinfo.channelid==4)
	{

	if (browser=="ie6"||browser=="ie7"||browser=="ie8")
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("	document.body.onfocusin = function() {isWindowFocus = true;};\r\n");
	ViewBuilder.Append("	document.body.onfocusout = function() {isWindowFocus = false;};\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	}//end if
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
