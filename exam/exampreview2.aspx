<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.exampreview" %>
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
	ViewBuilder.Append("<title>试卷预览|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
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
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "editor/themes/default/default.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "editor/kindeditor.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "editor/lang/zh_CN.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer_v3.11/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/exam.js\"></");
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
	ViewBuilder.Append("    function nice() {\r\n");
	ViewBuilder.Append("        window.niceObj = $(\".rnlt2\").niceScroll({ cursorcolor: \"#6E737B\", cursoropacitymin: 1, cursorwidth: \"6px\", cursorborder: \"none\", cursorborderradius: \"4px\" });\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function niceback(b) {\r\n");
	ViewBuilder.Append("        if (!window.ascrail2000) return;\r\n");
	ViewBuilder.Append("        if (b) {\r\n");
	ViewBuilder.Append("            window.ascrail2000.css({\r\n");
	ViewBuilder.Append("                \"position\": \"fixed\",\r\n");
	ViewBuilder.Append("                \"z-index\": '9999',\r\n");
	ViewBuilder.Append("                'top': '100px'\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            window.ascrail2000.css({\r\n");
	ViewBuilder.Append("                \"position\": \"absolute\",\r\n");
	ViewBuilder.Append("                \"z-index\": '9999',\r\n");
	ViewBuilder.Append("                'top': '170px'\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return true;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        nice();\r\n");
	ViewBuilder.Append("        window.ascrail2000 = $('#ascrail2000');\r\n");
	ViewBuilder.Append("        $('.rnav').mouseover(function () {\r\n");
	ViewBuilder.Append("            niceback($('.hbx1').hasClass(\"fixed\"));\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnclose\").click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnuserok\").click(function () {\r\n");
	ViewBuilder.Append("          $(\"#testProcessForm\").submit();\r\n");
	ViewBuilder.Append("          layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(document).ready(function () {\r\n");
	ViewBuilder.Append("          KindEditor.create('.richanswer', {\r\n");
	ViewBuilder.Append("            resizeType: 0,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx?sortid=" + echo(sortid) + "&attachid=sdfsafsaf&app=" + echo(setupinfo.markup) + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            filterMode: false,\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            pasteType: 1,\r\n");
	ViewBuilder.Append("            items: ['image', 'insertfile'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("    function OutputPaper()\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("      index = $.layer({\r\n");
	ViewBuilder.Append("            type: 1,\r\n");
	ViewBuilder.Append("            shade: [0],\r\n");
	ViewBuilder.Append("            fix: false,\r\n");
	ViewBuilder.Append("            title: '导出试卷',\r\n");
	ViewBuilder.Append("            maxmin: false,\r\n");
	ViewBuilder.Append("            page: { dom: '#importpage' },\r\n");
	ViewBuilder.Append("            area: ['485px', '185px']\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"testProcessForm\" name=\"testProcessForm\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("<div class=\"hbx1\">\r\n");
	ViewBuilder.Append("  <div class=\"hbx2\">\r\n");
	ViewBuilder.Append("    <div class=\"hbx3\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/top.jpg\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"hbx4\">\r\n");
	ViewBuilder.Append("      <div class=\"fr\"><a href=\"javascript:void();\" onclick=\"OutputPaper();return false;\" class=\"btnq2\">导出试卷</a></div>\r\n");
	ViewBuilder.Append("      <span class=\"theTime\" id=\"thetime\">00:00:00</span><span class=\"line1\"></span><span class=\"write\">答题时间：" + echo(examinfo.examtime) + "分钟</span>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"hbx2\">\r\n");
	ViewBuilder.Append("<div class=\"rnav\">\r\n");
	ViewBuilder.Append("    <div class=\"rnavhd\">答题卡</div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavct\">\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt1 fc\">\r\n");
	ViewBuilder.Append("        <li><span class=\"bg1\"></span>已答题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg3\"></span>未答题</li>\r\n");
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt2 fc\" tabindex=\"5000\" style=\"overflow-y: hidden; outline: none;height:385px;\">\r\n");
	int en = 0;

	loop__id=0;
	foreach(int examtopic in questionlist)
	{
	loop__id++;
	 en = en+1;
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg3\">" + echo(en) + "</a></li>\r\n");
	}//end loop
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("          $(function () {\r\n");
	ViewBuilder.Append("              $('.rnlt2 a').click(function () {\r\n");
	ViewBuilder.Append("                  var top = $($(this).attr('href')).offset().top + 120;\r\n");
	ViewBuilder.Append("                  $(window).scrollTop(top);\r\n");
	ViewBuilder.Append("                  return false;\r\n");
	ViewBuilder.Append("              });\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("	  </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavft\"></div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("<div class=\"wp wpa\">\r\n");
	ViewBuilder.Append("  <div class=\"wp2\">\r\n");
	ViewBuilder.Append("    <div class=\"wp3\">\r\n");
	ViewBuilder.Append("      <div class=\"wp4\">\r\n");
	ViewBuilder.Append("        <h1 class=\"qtTitle\">" + echo(examinfo.name) + "\r\n");

	if (examinfo.papers>1)
	{
	ViewBuilder.Append("            " + echo(GetPaper(paper)) + "\r\n");
	}//end if
	ViewBuilder.Append("        </h1>\r\n");
	ViewBuilder.Append("        <div class=\"bx1 pd1m mb20\">\r\n");
	ViewBuilder.Append("          <div>\r\n");
	ViewBuilder.Append("            <table class=\"tab1\">\r\n");
	ViewBuilder.Append("              <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td>考生姓名：\r\n");

	if (user.realname!="")
	{
	ViewBuilder.Append("" + echo(user.realname) + "\r\n");
	}
	else
	{
	ViewBuilder.Append("" + echo(user.username) + "\r\n");
	}//end if
	ViewBuilder.Append("</td>\r\n");
	ViewBuilder.Append("                  <td>试卷总分：" + echo(examinfo.total) + "分</td>\r\n");
	ViewBuilder.Append("                  <td>及格分数：" + echo(examinfo.passmark) + "分</td>\r\n");
	ViewBuilder.Append("                  <td>答题时间：" + echo(examinfo.examtime) + "分钟</td>\r\n");
	ViewBuilder.Append("                  <td>试题总数：" + echo(examinfo.questions) + "题</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("              </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"examid\" name=\"examid\" value=\"" + echo(examid) + "\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"starttime\" name=\"starttime\" value=\"" + echo(starttime) + "\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"utime\" name=\"utime\" value=\"0\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"autotime\" value=\"0\">\r\n");
	ViewBuilder.Append("          <input type=\"hidden\" id=\"examtime\" value=\"0\">\r\n");
	int topicnum = 0;

	loop__id=0;
	foreach(ExamTopic examtopic in examtopiclist)
	{
	loop__id++;
	string qidlist = "";

	if (examtopic.questions>0)
	{
	ViewBuilder.Append("            <div id=\"1\" class=\"tit1 pd1\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"tit1 pd1\">" + echo(examtopic.title) + "<span class=\"ft3\">(共" + echo(examtopic.questions) + "题，每题" + echo(examtopic.perscore) + "分，共" + echo((examtopic.questions*examtopic.perscore)) + "分)</span></div>\r\n");

	loop__id=0;
	foreach(ExamQuestion item in GetQuestionList(examtopic.questionlist))
	{
	loop__id++;
	 topicnum = topicnum+1;

	if (qidlist!="")
	{
	 qidlist = qidlist+",";
	}//end if
	 qidlist = qidlist+item.id;

	if (item.type=="TYPE_RADIO")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount,item.optionlist)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");

	loop__id=0;
	foreach(string str in answerarr)
	{
	loop__id++;

	if (loop__id<=item.ascount)
	{
	ViewBuilder.Append("                  <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(str) + "\">" + echo(str) + "</label>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_MULTIPLE")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount,item.optionlist)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");

	loop__id=0;
	foreach(string str in answerarr)
	{
	loop__id++;

	if (loop__id<=item.ascount)
	{
	ViewBuilder.Append("                  <label><input type=\"checkbox\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(str) + "\">" + echo(str) + "</label>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_TRUE_FALSE")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	ViewBuilder.Append("                  <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"Y\">正确</label>\r\n");
	ViewBuilder.Append("                  <label><input type=\"radio\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"N\">错误</label>\r\n");
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_BLANK")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(FmAnswer(item.title,item.id,topicnum)) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">填写答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt richanswer\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\"></textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_OPERATION")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">上传答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt richanswer\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\"></textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	}//end if
	}//end loop
	ViewBuilder.Append("        <input id=\"qidlist_" + echo(examtopic.id) + "\" name=\"qidlist_" + echo(examtopic.id) + "\" value=\"" + echo(qidlist) + "\" type=\"hidden\">\r\n");
	}//end loop
	ViewBuilder.Append("        <br>\r\n");
	ViewBuilder.Append("        <div class=\"ta_c mb10\"><a href=\"javascript:void();\" class=\"btnq3\" onclick=\"OutputPaper();return false;\">导出试卷</a></div>\r\n");
	ViewBuilder.Append("        <div style=\"clear:both;\"></div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"importpage\" style=\"display:none;\">\r\n");
	ViewBuilder.Append("    <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 483px;height:150px; margin: 0px;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"border: solid 1px #93C7D4; vertical-align:middle;height:100px;padding-left:10px;\">\r\n");
	ViewBuilder.Append("               <table style=\"height:40px;\">\r\n");
	ViewBuilder.Append("                   <tr>\r\n");
	ViewBuilder.Append("                    <td style=\"width:70px;height:50px;\">试卷纸张：</td>\r\n");
	ViewBuilder.Append("                    <td>\r\n");
	ViewBuilder.Append("                       <input id=\"papersize4\" name=\"papersize\" value=\"a4\" checked=\"checked\" type=\"radio\">A4&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("                       <input id=\"papersize3\" name=\"papersize\" value=\"a3\" type=\"radio\">A3\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                    <td style=\"width:70px;\">试卷类型：</td>\r\n");
	ViewBuilder.Append("                    <td>\r\n");
	ViewBuilder.Append("                       <input id=\"papertype0\" name=\"papertype\" type=\"radio\" checked=\"checked\" value=\"0\">学生用卷（答案集中在卷尾）&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("                       <input id=\"papertype1\" name=\"papertype\" value=\"1\" type=\"radio\">教师用卷（每题后面跟答案）<br>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("               </table>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("               <a href=\"javascript:void()\" id=\"btnuserok\" class=\"btnq2\">导出</a>\r\n");
	ViewBuilder.Append("               <a href=\"javascript:void()\" id=\"btnclose\" class=\"btnq2\">关闭</a>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("</div>\r\n");
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
