<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examanswer" %>
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
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"zh-CN\" lang=\"zh-CN\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>考试结果|" + echo(pagetitle) + "</title>\r\n");
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
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/exam_readed.js\"></");
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
	ViewBuilder.Append("        layer.use('extend/layer.ext.js');//弹出层插件\r\n");
	ViewBuilder.Append("        nice();\r\n");
	ViewBuilder.Append("        window.ascrail2000 = $('#ascrail2000');\r\n");
	ViewBuilder.Append("        $('.rnav').mouseover(function () {\r\n");
	ViewBuilder.Append("            niceback($('.hbx1').hasClass(\"fixed\"));\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    function AddFav(qid, action) {\r\n");
	ViewBuilder.Append("        $.post(\"favajax_ctrl.aspx\", {\r\n");
	ViewBuilder.Append("            qid: qid,\r\n");
	ViewBuilder.Append("            action: action,\r\n");
	ViewBuilder.Append("            uanswer: $(\"#uanswer_\"+qid).val()\r\n");
	ViewBuilder.Append("        }, function (data) {\r\n");
	ViewBuilder.Append("            if (data.errcode > 0) {\r\n");
	ViewBuilder.Append("                alert(data.errmsg);\r\n");
	ViewBuilder.Append("                return;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            if (data.action == -1) {\r\n");
	ViewBuilder.Append("                $(\"#fav_\" + qid).html(\"<a href=\\\"javascript:AddFav(\" + qid + \",1);\\\">收藏本题</a>\");\r\n");
	ViewBuilder.Append("                layer.msg('取消收藏成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else if (data.action =1) {\r\n");
	ViewBuilder.Append("                $(\"#fav_\" + qid).html(\"<a href=\\\"javascript:AddFav(\" + qid + \",-1);\\\">取消收藏</a>\");\r\n");
	ViewBuilder.Append("                layer.msg('收藏本题成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }, \"json\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function EditNote(qid, num) {\r\n");
	ViewBuilder.Append("        var note=$('#note_' + qid).html();\r\n");
	ViewBuilder.Append("        layer.prompt({type: 3,title: '第' + num + '题笔记', val:note},function (val) {\r\n");
	ViewBuilder.Append("            $.post(\"noteajax_ctrl.aspx\", {\r\n");
	ViewBuilder.Append("                qid: qid,\r\n");
	ViewBuilder.Append("                note: val\r\n");
	ViewBuilder.Append("            }, function (data) {\r\n");
	ViewBuilder.Append("                if (data.errcode > 0) {\r\n");
	ViewBuilder.Append("                    alert(data.errmsg);\r\n");
	ViewBuilder.Append("                    return;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                $('#note_' + qid).html(val);\r\n");
	ViewBuilder.Append("                $('#shownote_' + qid).show();\r\n");
	ViewBuilder.Append("                layer.msg('笔记保存成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }, \"json\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<noscript>\r\n");
	ViewBuilder.Append("    <iframe src=\"*\"></iframe>\r\n");
	ViewBuilder.Append("</noscript>\r\n");
	ViewBuilder.Append("<div class=\"hbx1\">\r\n");
	ViewBuilder.Append("  <div class=\"hbx2\">\r\n");
	ViewBuilder.Append("    <div class=\"hbx3\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/top.jpg\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"hbx4\">\r\n");
	ViewBuilder.Append("      <div class=\"fr\"></div>\r\n");
	ViewBuilder.Append("      <span class=\"tab3 tab3a\">考试结果</span>\r\n");
	ViewBuilder.Append("      <span class=\"theTime\" id=\"thetime\">" + echo(GetTime(examresult.utime)) + "</span>\r\n");
	ViewBuilder.Append("      <span class=\"line1\"></span><span class=\"write\">姓名：" + echo(examresult.realname) + "(" + echo(examresult.username) + ")</span>\r\n");
	ViewBuilder.Append("    </div>\r\n");
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
	ViewBuilder.Append("        <li><span class=\"bg4\"></span>主观题</li>\r\n");
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

	if (item.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("<li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg4\">" + echo(en) + "</a></li>\r\n");
	}//end if
	else if (item.useranswer=="")
	{
	ViewBuilder.Append("<li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg3\">" + echo(en) + "</a></li>\r\n");
	}//end if
	else if (item.userscore>0)
	{
	ViewBuilder.Append("<li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg1\">" + echo(en) + "</a></li>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<li><a href=\"#" + echo(en) + "\" id=\"fc_" + echo(en) + "\" class=\"bg2\">" + echo(en) + "</a></li>\r\n");
	}//end if
	}//end loop
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
	ViewBuilder.Append("  <div class=\"wp wpa\">\r\n");
	ViewBuilder.Append("    <div class=\"wp2\">\r\n");
	ViewBuilder.Append("      <div class=\"wp3\">\r\n");
	ViewBuilder.Append("        <div class=\"wp4\">\r\n");
	ViewBuilder.Append("          <h1 class=\"t\" style=\"text-align:center;\">" + echo(examresult.examname) + "</h1>\r\n");
	ViewBuilder.Append("          <div class=\"bx1 pd1m mb20\">\r\n");
	ViewBuilder.Append("          <div>\r\n");
	ViewBuilder.Append("            <table style=\"width:100%\">\r\n");
	ViewBuilder.Append("              <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td>身份证号：" + echo(examresult.idcard) + "</td>\r\n");
	ViewBuilder.Append("                  <td>所在部门：" + echo(examresult.departname) + "</td>\r\n");
	ViewBuilder.Append("                  <td>试卷总分：" + echo(examresult.total) + "分</td>\r\n");
	ViewBuilder.Append("                  <td>总题数：" + echo(examresult.questions) + "题</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("              </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("          <div class=\"fc box\">\r\n");
	ViewBuilder.Append("            <div class=\"fl\">\r\n");
	ViewBuilder.Append("              <div class=\"img-sprite icon_count\">\r\n");
	ViewBuilder.Append("                <p class=\"count1\">考试得分</p>\r\n");
	ViewBuilder.Append("                <div class=\"count2\">" + echo(examresult.score) + "</div>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"fr\">\r\n");
	ViewBuilder.Append("              <table style=\"width:500px;\">\r\n");
	ViewBuilder.Append("                <tr class=\"t\">\r\n");
	ViewBuilder.Append("                  <td>试卷大题</td>\r\n");
	ViewBuilder.Append("                  <td>错题数/总题数</td>\r\n");
	ViewBuilder.Append("                  <td>大题总分</td>\r\n");
	ViewBuilder.Append("                  <td>我的得分</td>\r\n");
	ViewBuilder.Append("                  <td>得分率</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");

	loop__id=0;
	foreach(ExamResultTopic examtopic in examtopicresultlist)
	{
	loop__id++;
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td>" + echo(examtopic.title) + "</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo(examtopic.wrongs) + "/" + echo(examtopic.questions) + "</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo((Math.Round(examtopic.perscore*examtopic.questions,2))) + "</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo(examtopic.score) + "</td>\r\n");
	ViewBuilder.Append("                    <td>" + echo((CalRate(examtopic.score,examtopic.perscore*examtopic.questions))) + "%</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	}//end loop
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td style=\"text-align:left;padding-left:5px;\" colspan=\"5\">\r\n");
	ViewBuilder.Append("                      考试时间：" + echo(examresult.starttime,"yyyy-MM-dd HH:mm:ss") + "~" + echo(examresult.endtime,"yyyy-MM-dd HH:mm:ss") + "\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("              </table>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");

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
	ViewBuilder.Append("          <!--head end -->\r\n");
	ViewBuilder.Append("          <form id=\"testProcessForm\" name=\"testProcessForm\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" name=\"resultid\" value=\"" + echo(resultid) + "\">\r\n");
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
	ViewBuilder.Append("            <input type=\"hidden\" id=\"uanswer_" + echo(item.id) + "\" name=\"uanswer_" + echo(item.id) + "\" value=\"" + echo(HtmlEncode(item.useranswer)) + "\">\r\n");
	 topicnum = topicnum+1;

	if (item.type=="TYPE_RADIO")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\"><span class=\"ft4 fl\">您的答案：</span> \r\n");
	ViewBuilder.Append("               <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 7; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label topicid=\"" + echo(examtopic.id) + "\" qid=\"" + echo(item.id) + "\"><input type=\"radio\" id=\"answer_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" "+(answerarr[i]==item.useranswer?echo("checked"):echo(""))+" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\" disabled=\"disabled\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examresult.showanswer==1&&examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：<span class=\"ft11 ftc1\">" + echo(item.answer) + "</span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                <span id='" + echo(item.id) + "' class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                " + echo(item.userscore) + "分\r\n");
	ViewBuilder.Append("                </span>\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" style=\""+(item.note==""?echo(""):echo("display:none"))+"\">您的笔记：\r\n");
	ViewBuilder.Append("                  <span style=\"color:#ff0000\" id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_MULTIPLE")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\"><span class=\"ft4 fl\">您的答案：</span> \r\n");
	ViewBuilder.Append("               <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 7; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label topicid=\"" + echo(examtopic.id) + "\" qid=\"" + echo(item.id) + "\"><input type=\"checkbox\" id=\"answer_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" "+(FPArray.Contain(item.useranswer,answerarr[i])?echo("checked"):echo(""))+" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\" disabled=\"disabled\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examresult.showanswer==1&&examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：<span class=\"ft11 ftc1\">" + echo(item.answer) + "</span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                <span id='" + echo(item.id) + "' class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                " + echo(item.userscore) + "分\r\n");
	ViewBuilder.Append("                </span>\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" style=\""+(item.note==""?echo(""):echo("display:none"))+"\">您的笔记：\r\n");
	ViewBuilder.Append("                  <span style=\"color:#ff0000\" id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_TRUE_FALSE")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\"><span class=\"ft4 fl\">您的答案：</span> \r\n");
	ViewBuilder.Append("               <span class=\"fl w2 bx7\">\r\n");
	ViewBuilder.Append("                 <label topicid=\"" + echo(examtopic.id) + "\" qid=\"" + echo(item.id) + "\"><input type=\"radio\" id=\"answer_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" "+(item.useranswer=="Y"?echo("checked"):echo(""))+" value=\"Y\" disabled=\"disabled\">正确</label>\r\n");
	ViewBuilder.Append("                 <label topicid=\"" + echo(examtopic.id) + "\" qid=\"" + echo(item.id) + "\"><input type=\"radio\" id=\"answer_" + echo(examtopic.id) + "_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" "+(item.useranswer=="N"?echo("checked"):echo(""))+" value=\"N\" disabled=\"disabled\">错误</label>\r\n");
	ViewBuilder.Append("                </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examresult.showanswer==1&&examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：\r\n");
	ViewBuilder.Append("                  <span class=\"ft11 ftc1\">"+(item.answer=="Y"?echo("正确"):echo("错误"))+"</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("<div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                <span id='" + echo(item.id) + "' class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                " + echo(item.userscore) + "分\r\n");
	ViewBuilder.Append("                </span>\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\""+(item.note==""?echo(""):echo("display:none"))+";display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span style=\"color:#ff0000\" id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_BLANK")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(FmAnswer(item.title,item.id,item.useranswer)) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examresult.showanswer==1&&examconfig.showanswer==1)
	{
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
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                <span id='" + echo(item.id) + "' class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                " + echo(item.userscore) + "分\r\n");
	ViewBuilder.Append("                </span>\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span style=\"color:#ff0000\" id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">您的答案：</div>\r\n");
	ViewBuilder.Append("                <div>" + echo(item.useranswer) + "</div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examresult.showanswer==1&&examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">参考答案：\r\n");
	ViewBuilder.Append("                <div class=\"ft11 ftc1\">\r\n");
	ViewBuilder.Append("                " + echo(item.answer) + "\r\n");
	ViewBuilder.Append("                </div></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                <span id='" + echo(item.id) + "' class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                " + echo(item.userscore) + "分\r\n");
	ViewBuilder.Append("                </span>\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span style=\"color:#ff0000\" id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_OPERATION")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id='" + echo((topicnum+1)) + "'>" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">您的答案：</div>\r\n");
	ViewBuilder.Append("                <div>" + echo(item.useranswer) + "</div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examresult.showanswer==1&&examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">参考答案：\r\n");
	ViewBuilder.Append("                <div class=\"ft11 ftc1\">\r\n");
	ViewBuilder.Append("                " + echo(item.answer) + "\r\n");
	ViewBuilder.Append("                </div></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">本题得分：\r\n");
	ViewBuilder.Append("                <span id='" + echo(item.id) + "' class=\"bx5 dis_ib\">\r\n");
	ViewBuilder.Append("                " + echo(item.userscore) + "分\r\n");
	ViewBuilder.Append("                </span>\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                  <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span style=\"color:#ff0000\" id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
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
