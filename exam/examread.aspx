<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examread" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"zh-CN\" lang=\"zh-CN\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>考试阅卷|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
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
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/exam.js\"></");
	ViewBuilder.Append("script>\r\n");
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
	ViewBuilder.Append("</head>\r\n");
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
	ViewBuilder.Append("                'top': '235px'\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            window.ascrail2000.css({\r\n");
	ViewBuilder.Append("                \"position\": \"absolute\",\r\n");
	ViewBuilder.Append("                \"z-index\": '9999',\r\n");
	ViewBuilder.Append("                'top': '305px'\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return true;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var ipt = $(\"label input\");\r\n");
	ViewBuilder.Append("        ipt.parent().removeClass(\"sd\");\r\n");
	ViewBuilder.Append("        ipt.filter(\":checked\").parent().addClass(\"sd\");\r\n");
	ViewBuilder.Append("        layer.use('extend/layer.ext.js');\r\n");
	ViewBuilder.Append("        nice();\r\n");
	ViewBuilder.Append("        window.ascrail2000 = $('#ascrail2000');\r\n");
	ViewBuilder.Append("        $('.rnav').mouseover(function () {\r\n");
	ViewBuilder.Append("            niceback($('.hbx1').hasClass(\"fixed\"));\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<div class=\"hbx1\">\r\n");
	ViewBuilder.Append("  <div class=\"hbx2\">\r\n");
	ViewBuilder.Append("    <div class=\"hbx3\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/top.jpg\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"hbx4\">\r\n");
	ViewBuilder.Append("      <div class=\"fr\">\r\n");
	ViewBuilder.Append("         <a href=\"javascript:;\" class=\"btnq1\" onclick=\"window.print()\">打印</a>\r\n");
	ViewBuilder.Append("        <a href=\"#\" class=\"btnq2\" onclick=\"ExamReadSave();return false;\">提交阅卷</a>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <span class=\"tab3 tab3a\">考试阅卷</span> </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"hbx2\">\r\n");
	ViewBuilder.Append("  <div class=\"rnav\">\r\n");
	ViewBuilder.Append("    <div class=\"rnavhd\">答题卡</div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavct\">\r\n");
	ViewBuilder.Append("      <div class=\"mb10\"> 试题数：" + echo(examresult.questions) + "题<br>\r\n");
	ViewBuilder.Append("        错题数：" + echo(examresult.wrongs) + "题<br>\r\n");
	ViewBuilder.Append("        未答数：" + echo(examresult.unanswer) + "题<br>\r\n");
	ViewBuilder.Append("        总得分：" + echo(examresult.score) + "分 </div>\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt1 fc\">\r\n");
	ViewBuilder.Append("        <li><span class=\"bg1\"></span>正确题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg2\"></span>错误题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg3\"></span>未答题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg4\"></span>问答题</li>\r\n");
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt2 fc\" tabindex=\"5000\" style=\"overflow-y: hidden; outline: none;height:385px;\">\r\n");
	int en = 0;

	loop__id=0;
	foreach(ExamResultTopic examtopic in examtopicresultlist)
	{
	loop__id++;

	loop__id=0;
	foreach(ExamQuestion item in GetQuestionList(examtopic))
	{
	loop__id++;
	 en = en+1;

	if (item.type==5)
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg4\">" + echo(en) + "</a></li>\r\n");
	}
	else if (item.useranswer=="")
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg3\">" + echo(en) + "</a></li>\r\n");
	}
	else if (item.userscore>0)
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg1\">" + echo(en) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg2\">" + echo(en) + "</a></li>\r\n");
	}//end if
	}//end loop
	}//end loop
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("     <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("         $(function () {\r\n");
	ViewBuilder.Append("             $('.rnlt2 a').click(function () {\r\n");
	ViewBuilder.Append("                 var top = $($(this).attr('href')).offset().top + 120;\r\n");
	ViewBuilder.Append("                 $(window).scrollTop(top);\r\n");
	ViewBuilder.Append("                 return false;\r\n");
	ViewBuilder.Append("             });\r\n");
	ViewBuilder.Append("         });\r\n");
	ViewBuilder.Append("	</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavft\"></div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <div class=\"wp wpa\">\r\n");
	ViewBuilder.Append("    <div class=\"wp2\">\r\n");
	ViewBuilder.Append("      <div class=\"wp3\">\r\n");
	ViewBuilder.Append("        <div class=\"wp4 wp4_none\">\r\n");
	ViewBuilder.Append("          <h1 class=\"t\" style=\"text-align:center;\">" + echo(examresult.examname) + "</h1>\r\n");
	ViewBuilder.Append("          <div class=\"fc box\">\r\n");
	ViewBuilder.Append("            <div class=\"fl\">\r\n");
	ViewBuilder.Append("              <div class=\"img-sprite icon_count\">\r\n");
	ViewBuilder.Append("                <p class=\"count1\">考试得分</p>\r\n");
	ViewBuilder.Append("                <p class=\"count2\">" + echo(examresult.score) + "</p>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"fr\">\r\n");
	ViewBuilder.Append("              <p class=\"m\">\r\n");
	ViewBuilder.Append("                  考生姓名：" + echo(examresult.realname) + "(" + echo(examresult.username) + ")，考试时间：" + echo(examresult.endtime,"yyyy-MM-dd HH:mm:ss") + "\r\n");

	if (examresult.status==0)
	{
	ViewBuilder.Append("                  ，尚未完成答卷。\r\n");
	}
	else if (examresult.status==1)
	{
	ViewBuilder.Append("                  ，尚未阅卷。\r\n");
	}
	else if (examresult.status==2)
	{
	ViewBuilder.Append("                  ，已阅卷。\r\n");
	}//end if
	ViewBuilder.Append("              </p>\r\n");
	ViewBuilder.Append("              <table>\r\n");
	ViewBuilder.Append("                <tr class=\"t\">\r\n");
	ViewBuilder.Append("                  <td>分数组成</td>\r\n");
	ViewBuilder.Append("                  <td>全体排名</td>\r\n");
	ViewBuilder.Append("                  <td>答卷耗时</td>\r\n");
	ViewBuilder.Append("                  <td>错题数量</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                    <td>客观题" + echo(examresult.score1) + "分 + 主观题" + echo(examresult.score2) + "分</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo(display) + "</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo((examresult.utime/60+1)) + "分钟</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo(examresult.wrongs) + "题</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr class=\"t\">\r\n");
	ViewBuilder.Append("                    <td>试卷满分</td>\r\n");
	ViewBuilder.Append("                    <td>及格分数</td>\r\n");
	ViewBuilder.Append("                    <td>最高分数</td>\r\n");
	ViewBuilder.Append("                    <td>平均分数</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td>" + echo(examresult.total) + "分</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo(examresult.passmark) + "分</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo(maxscore) + "分</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo(avgscore) + "分</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td colspan=\"4\" style=\"text-align:left;width:100%\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n");

	if (examresult.exnote!="")
	{
	ViewBuilder.Append(" 评语：" + echo(examresult.exnote) + "，\r\n");
	}//end if

	if (examresult.exp>0)
	{
	ViewBuilder.Append("                             获得经验值为" + echo(examresult.exp) + "。\r\n");
	}//end if
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("              </table>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          <!--head end -->\r\n");
	ViewBuilder.Append("          <form id=\"testProcessForm\" name=\"testProcessForm\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" name=\"resultid\" value=\"" + echo(resultid) + "\">\r\n");

	if (examresult.isvideo==1)
	{
	ViewBuilder.Append("            <div class=\"tit1 pd1\">考试视频图片：</div>\r\n");
	ViewBuilder.Append("            <div class=\"bx1 pd1m mb20\">\r\n");
	ViewBuilder.Append("                <div>\r\n");

	loop__id=0;
	foreach(string item in videoimg)
	{
	loop__id++;
	ViewBuilder.Append("                   <img src=\"" + echo(item) + "\" width=\"200\" height=\"160\" style=\"border:solid 1px #000000\">\r\n");
	}//end if
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	}//end if
	ViewBuilder.Append("            <a id=\"1\"></a>\r\n");
	int topicnum = 0;

	loop__id=0;
	foreach(ExamResultTopic examtopic in examtopicresultlist)
	{
	loop__id++;

	if (examtopic.questions>0)
	{
	ViewBuilder.Append("            <div class=\"tit1 pd1\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"tit1 pd1\">" + echo(examtopic.title) + "<span class=\"ft3\">(共" + echo(examtopic.questions) + "题，每题" + echo(examtopic.perscore) + "分，共" + echo((examtopic.questions*examtopic.perscore)) + "分)</span></div>\r\n");

	loop__id=0;
	foreach(ExamQuestion item in GetQuestionList(examtopic))
	{
	loop__id++;
	 topicnum = topicnum+1;

	if (item.type==1)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "\r\n");

	if (examtopic.type==6)
	{
	ViewBuilder.Append("（单选）\r\n");
	}//end if
	ViewBuilder.Append("</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + Option(item.option,item.ascount,item.optionlist).ToString() + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("               <span class=\"ft4 fl\">考生答案：</span> \r\n");
	ViewBuilder.Append("               <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 6; i++){

	if (i<=item.ascount-1)
	{
	ViewBuilder.Append("                <label><input type=\"radio\" name=\"answer_" + echo(item.id) + "\" \r\n");

	if (answerarr[i]==item.useranswer)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"" + echo(answerarr[i]) + "\" disabled=\"disabled\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：<span class=\"ft11 ftc1\">" + echo(item.answer) + "</span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                  <span class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                  <input type=\"text\" id=\"score_" + echo(item.id) + "\" name=\"score_" + echo(item.id) + "\" value=\"" + echo(item.userscore) + "\" class=\"ipt\">\r\n");
	ViewBuilder.Append("                  <span class=\"bx5a\">分</span></span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==2)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "\r\n");

	if (examtopic.type==6)
	{
	ViewBuilder.Append("（多选）\r\n");
	}//end if
	ViewBuilder.Append("</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + Option(item.option,item.ascount,item.optionlist).ToString() + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\"><span class=\"ft4 fl\">考生答案：</span> \r\n");
	ViewBuilder.Append("               <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 6; i++){

	if (i<=item.ascount-1)
	{
	ViewBuilder.Append("                <label><input type=\"checkbox\" name=\"answer_" + echo(item.id) + "\" \r\n");

	if (ischecked(answerarr[i],item.useranswer))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"" + echo(answerarr[i]) + "\" disabled=\"disabled\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：<span class=\"ft11 ftc1\">" + echo(item.answer) + "</span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                  <span class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                  <input type=\"text\" id=\"score_" + echo(item.id) + "\" name=\"score_" + echo(item.id) + "\" value=\"" + echo(item.userscore) + "\" class=\"ipt\">\r\n");
	ViewBuilder.Append("                  <span class=\"bx5a\">分</span></span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==3)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\"><span class=\"ft4 fl\">考生答案：</span> \r\n");
	ViewBuilder.Append("               <span class=\"fl w2 bx7\">\r\n");

	if (item.useranswer=="Y")
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" name=\"answer_" + echo(item.id) + "\" checked=\"checked\" value=\"Y\" disabled=\"disabled\">正确</label>\r\n");
	}
	else
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" name=\"answer_" + echo(item.id) + "\" value=\"Y\" disabled=\"disabled\">正确</label>\r\n");
	}//end if

	if (item.useranswer=="N")
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" name=\"answer_" + echo(item.id) + "\" checked=\"checked\" value=\"N\" disabled=\"disabled\">错误</label>\r\n");
	}
	else
	{
	ViewBuilder.Append("                 <label><input type=\"radio\" name=\"answer_" + echo(item.id) + "\" value=\"N\" disabled=\"disabled\">错误</label>\r\n");
	}//end if
	ViewBuilder.Append("                </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：\r\n");
	ViewBuilder.Append("                <span class=\"ft11 ftc1\">\r\n");

	if (item.answer=="Y")
	{
	ViewBuilder.Append("                正确\r\n");
	}
	else if (item.answer=="N")
	{
	ViewBuilder.Append("                错误\r\n");
	}//end if
	ViewBuilder.Append("                </span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                  <span class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                  <input type=\"text\" id=\"score_" + echo(item.id) + "\" name=\"score_" + echo(item.id) + "\" value=\"" + echo(item.userscore) + "\" class=\"ipt\">\r\n");
	ViewBuilder.Append("                  <span class=\"bx5a\">分</span></span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==4)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + FmAnswer(item.title,item.id,item.useranswer).ToString() + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：\r\n");
	ViewBuilder.Append("                <span class=\"ft11 ftc1\">\r\n");
	ViewBuilder.Append("                " + echo(item.answer) + "\r\n");
	ViewBuilder.Append("                </span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                  <span class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                  <input type=\"text\" id=\"score_" + echo(item.id) + "\" name=\"score_" + echo(item.id) + "\" value=\"" + echo(item.userscore) + "\" class=\"ipt\">\r\n");
	ViewBuilder.Append("                  <span class=\"bx5a\">分</span></span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==5)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">考生答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt\" readonly=\"readonly\" name=\"answer_" + echo(item.id) + "\">" + echo(item.useranswer) + "</textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：\r\n");
	ViewBuilder.Append("                <span class=\"ft11 ftc1\">\r\n");
	ViewBuilder.Append("                " + echo(item.answer) + "\r\n");
	ViewBuilder.Append("                </span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                  <span class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                  <input type=\"text\" id=\"score_" + echo(item.id) + "\" name=\"score_" + echo(item.id) + "\" value=\"" + echo(item.userscore) + "\" class=\"ipt\">\r\n");
	ViewBuilder.Append("                  <span class=\"bx5a\">分</span></span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type==6)
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">考生答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt\" readonly=\"readonly\" name=\"answer_" + echo(item.id) + "\">" + echo(item.useranswer) + "</textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                  <span class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                  <input type=\"text\" id=\"score_" + echo(item.id) + "\" name=\"score_" + echo(item.id) + "\" value=\"" + echo(item.userscore) + "\" class=\"ipt\">\r\n");
	ViewBuilder.Append("                  <span class=\"bx5a\">分</span></span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	}//end loop
	}//end if
	}//end loop
	ViewBuilder.Append("          </form>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
