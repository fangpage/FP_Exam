<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.questionview" %>
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
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagenav) + "|" + echo(pagetitle) + "</title>\r\n");
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
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
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
	ViewBuilder.Append("                'top': '200px'\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            window.ascrail2000.css({\r\n");
	ViewBuilder.Append("                \"position\": \"absolute\",\r\n");
	ViewBuilder.Append("                \"z-index\": '9999',\r\n");
	ViewBuilder.Append("                'top': '280px'\r\n");
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
	ViewBuilder.Append("    function AddFav(qid, action) {\r\n");
	ViewBuilder.Append("        $.post(\"favajax_ctrl.aspx\", {\r\n");
	ViewBuilder.Append("            qid: qid,\r\n");
	ViewBuilder.Append("            action: action\r\n");
	ViewBuilder.Append("        }, function (data) {\r\n");
	ViewBuilder.Append("            if (data.errcode > 0) {\r\n");
	ViewBuilder.Append("                alert(data.errmsg);\r\n");
	ViewBuilder.Append("                return;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            if (data.action == -1) {\r\n");
	ViewBuilder.Append("                $(\"#fav_\" + qid).html(\"<a href=\\\"javascript:AddFav(\" + qid + \",1);\\\">收藏本题</a>\");\r\n");
	ViewBuilder.Append("                layer.msg('取消收藏成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else if (data.action = 1) {\r\n");
	ViewBuilder.Append("                $(\"#fav_\" + qid).html(\"<a href=\\\"javascript:AddFav(\" + qid + \",-1);\\\">取消收藏</a>\");\r\n");
	ViewBuilder.Append("                layer.msg('收藏本题成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }, \"json\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function EditNote(qid, num) {\r\n");
	ViewBuilder.Append("        var note = $('#note_' + qid).html();\r\n");
	ViewBuilder.Append("        layer.prompt({ type: 3, title: '(" + echo(sortinfo.name) + ")第' + num + '题笔记', val: note }, function (val) {\r\n");
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
	ViewBuilder.Append("    function UnWrong(qid, action) {\r\n");
	ViewBuilder.Append("        $.post(\"wrong_ctrl.aspx\", {\r\n");
	ViewBuilder.Append("            qid: qid,\r\n");
	ViewBuilder.Append("            action: action\r\n");
	ViewBuilder.Append("        }, function (data) {\r\n");
	ViewBuilder.Append("            if (data.errcode > 0) {\r\n");
	ViewBuilder.Append("                alert(data.errmsg);\r\n");
	ViewBuilder.Append("                return;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            if (data.action == -1) {\r\n");
	ViewBuilder.Append("                $(\"#wrong_\" + qid).html(\"<a href=\\\"javascript:UnWrong(\" + qid + \",1);\\\">添加错题</a>\");\r\n");
	ViewBuilder.Append("                layer.msg('取消错题成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else if (data.action = 1) {\r\n");
	ViewBuilder.Append("                $(\"#wrong_\" + qid).html(\"<a href=\\\"javascript:UnWrong(\" + qid + \",-1);\\\">取消错题</a>\");\r\n");
	ViewBuilder.Append("                layer.msg('添加错题成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }, \"json\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<div class=\"hbx1\">\r\n");
	ViewBuilder.Append("  <div class=\"hbx2\">\r\n");
	ViewBuilder.Append("    <div class=\"hbx3\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/top.jpg\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"hbx4\">\r\n");
	ViewBuilder.Append("      <div class=\"fr\">\r\n");

	if (action=="wrong")
	{
	ViewBuilder.Append("<a href=\"test_wrong.aspx?sortid=" + echo(sortid) + "\" class=\"btnq2\">错题练习</a>\r\n");
	}//end if
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <span class=\"write\" style=\"font-size:14px;font-weight:bold\">" + echo(pagenav) + "<span class=\"ft3\">(共" + echo(questionlist.Count) + "题)</span></span> \r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"hbx2\">\r\n");
	ViewBuilder.Append("<div class=\"rnav\">\r\n");
	ViewBuilder.Append("    <div class=\"rnavhd\">答题卡</div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavct\">\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt1 fc\">\r\n");
	ViewBuilder.Append("        <li><span class=\"bg1\"></span>正确题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg2\"></span>错误题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg3\"></span>未答题</li>\r\n");
	ViewBuilder.Append("        <li><span class=\"bg4\"></span>问答题</li>\r\n");
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <ul class=\"rnlt2 fc\" tabindex=\"5000\" style=\"overflow-y: hidden; outline: none;\">\r\n");
	int en = 0;

	loop__id=0;
	foreach(ExamQuestion item in questionlist)
	{
	loop__id++;
	 en = en+1;

	if (item.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" class=\"bg4\">" + echo(en) + "</a></li>\r\n");
	}
	else if (item.useranswer=="")
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" class=\"bg3\">" + echo(en) + "</a></li>\r\n");
	}
	else if (item.userscore>0)
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" class=\"bg1\">" + echo(en) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("          <li><a href=\"#" + echo(en) + "\" class=\"bg2\">" + echo(en) + "</a></li>\r\n");
	}//end if
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
	ViewBuilder.Append("	 </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"rnavft\"></div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("<div class=\"wp wpa\">\r\n");
	ViewBuilder.Append("  <div class=\"wp2\">\r\n");
	ViewBuilder.Append("    <div class=\"wp3\">\r\n");
	ViewBuilder.Append("      <div class=\"wp4\">\r\n");
	ViewBuilder.Append("        <h1 class=\"qtTitle\">" + echo(sortinfo.name) + "</h1>\r\n");
	ViewBuilder.Append("        <form id=\"testProcessForm\" name=\"testProcessForm\" action=\"testpost.aspx\" method=\"post\">\r\n");
	ViewBuilder.Append("            <a id=\"1\"></a>\r\n");
	ViewBuilder.Append("            <div class=\"tit1 pd1\"></div>\r\n");
	int perscore = 100;
	int topicnum = 0;

	loop__id=0;
	foreach(ExamQuestion item in questionlist)
	{
	loop__id++;
	 topicnum = topicnum+1;

	if (item.type=="TYPE_RADIO")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">您的答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 7; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label qid=\"" + echo(item.id) + "\"><input type=\"radio\" id=\"answer_" + echo(topicnum) + "\" "+(answerarr[i]==item.useranswer?echo("checked"):echo(""))+" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\" disabled=\"disabled\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：<span class=\"ft11 ftc1\">" + echo(item.answer) + "</span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>&nbsp;&nbsp;\r\n");

	if (action=="wrong")
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/wrong.png\"><a id=\"wrong_" + echo(item.id) + "\" href=\"javascript:UnWrong(" + echo(item.id) + ",-1)\">取消错题</a>\r\n");
	}//end if
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
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
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                 <span class=\"ft4 fl\">您的答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 7; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label qid=\"" + echo(item.id) + "\"><input type=\"checkbox\" id=\"answer_" + echo(topicnum) + "\" "+(FPArray.Contain(item.useranswer,answerarr[i])?echo("checked"):echo(""))+" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\" disabled=\"disabled\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：<span class=\"ft11 ftc1\">" + echo(item.answer) + "</span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");

	if (action=="wrong")
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/wrong.png\"><a id=\"wrong_" + echo(item.id) + "\" href=\"javascript:UnWrong(" + echo(item.id) + ",-1)\">取消错题</a>\r\n");
	}//end if
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
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
	ViewBuilder.Append("                <span class=\"ft4 fl\">您的答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	ViewBuilder.Append("                    <label><input type=\"radio\" id=\"answer_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" "+(item.useranswer=="Y"?echo("checked"):echo(""))+" value=\"Y\" disabled=\"disabled\">正确</label>\r\n");
	ViewBuilder.Append("                    <label><input type=\"radio\" id=\"answer_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" "+(item.useranswer=="N"?echo("checked"):echo(""))+" value=\"N\" disabled=\"disabled\">错误</label>\r\n");
	ViewBuilder.Append("                 </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examconfig.showanswer==1)
	{
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
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");

	if (action=="wrong")
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/wrong.png\"><a id=\"wrong_" + echo(item.id) + "\" href=\"javascript:UnWrong(" + echo(item.id) + ",-1)\">取消错题</a>\r\n");
	}//end if
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_BLANK")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(FmAnswer(item.title,item.id,item.useranswer)) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：\r\n");
	ViewBuilder.Append("                <span class=\"ft11 ftc1\">\r\n");
	ViewBuilder.Append("                " + echo(item.answer) + "\r\n");
	ViewBuilder.Append("                </span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");

	if (action=="wrong")
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/wrong.png\"><a id=\"wrong_" + echo(item.id) + "\" href=\"javascript:UnWrong(" + echo(item.id) + ",-1)\">取消错题</a>\r\n");
	}//end if
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span id=\"note_" + echo(item.id) + "\">" + echo(item.note) + "</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}
	else if (item.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("            <dl class=\"st tm_zt_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\" id=\"" + echo((topicnum+1)) + "\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">您的答案：</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt\" id=\"_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" readonly=\"readonly\">" + echo(item.useranswer) + "</textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd>\r\n");

	if (examconfig.showanswer==1)
	{
	ViewBuilder.Append("                <div class=\"mb10\">正确答案：\r\n");
	ViewBuilder.Append("                <span class=\"ft11 ftc1\">\r\n");
	ViewBuilder.Append("                " + echo(item.answer) + "\r\n");
	ViewBuilder.Append("                </span></div>\r\n");

	if (item.explain!="")
	{
	ViewBuilder.Append("                <div class=\"mb10\">答案解析：\r\n");
	ViewBuilder.Append("                  " + echo(item.explain) + "\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                <div class=\"mb10\">\r\n");

	if (item.isfav==1)
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",-1)\">取消收藏</a>&nbsp;&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/fav.gif\"><a id=\"fav_" + echo(item.id) + "\" href=\"javascript:AddFav(" + echo(item.id) + ",1)\">收藏本题</a>&nbsp;&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/note.png\"><a href=\"javascript:EditNote(" + echo(item.id) + "," + echo(topicnum) + ")\">编辑笔记</a>\r\n");

	if (action=="wrong")
	{
	ViewBuilder.Append("                    <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/wrong.png\"><a id=\"wrong_" + echo(item.id) + "\" href=\"javascript:UnWrong(" + echo(item.id) + ",-1)\">取消错题</a>\r\n");
	}//end if
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div id=\"shownote_" + echo(item.id) + "\" class=\"mb10\" \r\n");

	if (item.note=="")
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">您的笔记：\r\n");
	ViewBuilder.Append("                  <span id=\"note_" + echo(item.id) + "\">{item.note}</span>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("        <div style=\"clear:both;\"></div>\r\n");
	ViewBuilder.Append("      </form>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
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
