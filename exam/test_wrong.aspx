<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.test_wrong" %>
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
	ViewBuilder.Append("<title>错题练习|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/exam.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery-ui/js/jquery-ui-1.9.2.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jform/jquery.form.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "popup/popup.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/test.js\" type=\"text/javascript\"></");
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
	ViewBuilder.Append("        document.oncontextmenu = new Function('event.returnValue=false;');\r\n");
	ViewBuilder.Append("        document.onselectstart = new Function('event.returnValue=false;');\r\n");
	ViewBuilder.Append("        nice();\r\n");
	ViewBuilder.Append("        window.ascrail2000 = $('#ascrail2000');\r\n");
	ViewBuilder.Append("        $('.rnav').mouseover(function () {\r\n");
	ViewBuilder.Append("            niceback($('.hbx1').hasClass(\"fixed\"));\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<div class=\"hbx1\">\r\n");
	ViewBuilder.Append("  <div class=\"hbx2\">\r\n");
	ViewBuilder.Append("    <div class=\"hbx3\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/top.jpg\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"hbx4\">\r\n");
	ViewBuilder.Append("      <div class=\"fr\"><a href=\"#\" class=\"btnq2\" onclick=\"submitTest();return false;\">我要交卷</a> </div>\r\n");
	ViewBuilder.Append("      <span class=\"write\">错题练习<span class=\"ft3\">(共" + echo(questionlist.Count) + "题)</span></span></div>\r\n");
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
	ViewBuilder.Append("      <ul class=\"rnlt2 fc\" tabindex=\"5000\" style=\"overflow-y: hidden; outline: none;\">\r\n");
	for (int i = 1; i <= questionlist.Count; i++){
	ViewBuilder.Append("<li><a href=\"#question_1_" + echo((i-1)) + "\" id=\"q_1_" + echo(i) + "\" class=\"bg3\">" + echo(i) + "</a></li>\r\n");
	}//end for
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
	ViewBuilder.Append("        <form id=\"testProcessForm\" name=\"testProcessForm\" action=\"test_wrong_post.aspx\" method=\"post\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" id=\"starttime\" name=\"starttime\" value=\"" + echo(starttime) + "\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" id=\"qidlist\" name=\"qidlist\" value=\"" + echo(qidlist) + "\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" id=\"utime\" name=\"utime\" value=\"0\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" id=\"autotime\" value=\"0\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" id=\"examtime\" value=\"0\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" id=\"isexam\" value=\"0\">\r\n");
	ViewBuilder.Append("            <a id=\"1\"></a>\r\n");
	ViewBuilder.Append("            <div class=\"tit1 pd1\"></div>\r\n");
	int topicnum = 0;

	loop__id=0;
	foreach(ExamQuestion item in questionlist)
	{
	loop__id++;
	 topicnum = topicnum+1;

	if (item.type=="TYPE_RADIO")
	{
	ViewBuilder.Append("<dl id=\"question_1_" + echo(topicnum) + "\" qid=\"" + echo(item.id) + "\" class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 7; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label qid=\"" + echo(item.id) + "\"><input type=\"radio\" id=\"answer_1_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_MULTIPLE")
	{
	ViewBuilder.Append("<dl id=\"question_1_" + echo(topicnum) + "\" qid=\"" + echo(item.id) + "\" class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                " + echo(Option(item.option,item.ascount)) + "\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	for (int i = 0; i <= 7; i++){

	if (i<item.ascount)
	{
	ViewBuilder.Append("<label qid=\"" + echo(item.id) + "\"><input type=\"checkbox\" id=\"answer_1_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"" + echo(answerarr[i]) + "\">" + echo(answerarr[i]) + "</label>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_TRUE_FALSE")
	{
	ViewBuilder.Append("<dl id=\"question_1_" + echo(topicnum) + "\" qid=\"" + echo(item.id) + "\" class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd class=\"dAn fc\">\r\n");
	ViewBuilder.Append("                <span class=\"ft4 fl\">选择答案：</span>\r\n");
	ViewBuilder.Append("                 <span class=\"fl w2 bx7\">\r\n");
	ViewBuilder.Append("                  <label qid=\"" + echo(item.id) + "\"><input type=\"radio\" id=\"answer_1_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"Y\">正确</label>\r\n");
	ViewBuilder.Append("                  <label qid=\"" + echo(item.id) + "\"><input type=\"radio\" id=\"answer_1_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\" value=\"N\">错误</label>\r\n");
	ViewBuilder.Append("                  </span>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_BLANK")
	{
	ViewBuilder.Append("<dl class=\"st tm_zt_0\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(FmAnswer(item.title,item.id,topicnum)) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	else if (item.type=="TYPE_ANSWER")
	{
	ViewBuilder.Append("<dl class=\"st tm_zt_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("              <dt class=\"nobold\"><span class=\"num\">" + echo(topicnum) + "</span>\r\n");
	ViewBuilder.Append("                <p>" + echo(item.title) + "</p>\r\n");
	ViewBuilder.Append("              </dt>\r\n");
	ViewBuilder.Append("              <dd>\r\n");
	ViewBuilder.Append("                <div class=\"ft4\">请在下面填写答案</div>\r\n");
	ViewBuilder.Append("                <textarea class=\"jdt\" id=\"answer_1_" + echo(topicnum) + "\" name=\"answer_" + echo(item.id) + "\"></textarea>\r\n");
	ViewBuilder.Append("              </dd>\r\n");
	ViewBuilder.Append("            </dl>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("          <br>\r\n");
	ViewBuilder.Append("         <div class=\"ta_c mb10\"><a href=\"#\" class=\"btnq3\" onclick=\"submitTest();return false;\">我要交卷</a></div>\r\n");
	ViewBuilder.Append("         <div style=\"clear:both;\"></div>\r\n");
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
