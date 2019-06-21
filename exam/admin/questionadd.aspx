<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.questionadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>添加编辑题目</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/masterpage.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "editor/themes/default/default.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "editor/kindeditor.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "calendar/WdatePicker.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(adminpath) + "statics/js/admin.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var q_typelist = new Array(\"TYPE_RADIO\", \"TYPE_MULTIPLE\", \"TYPE_TRUE_FALSE\", \"TYPE_BLANK\", \"TYPE_ANSWER\", \"TYPE_OPERATION\");\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("      KindEditor.create('#title,#answer_TYPE_ANSWER,#answer_TYPE_OPERATION,#explain', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx?sortid=" + echo(sortid) + "&attachid=" + echo(questioninfo.attachid) + "&app=" + echo(setupinfo.markup) + "',\r\n");
	ViewBuilder.Append("            fileManagerJson:'" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            pasteType : 1,\r\n");
	ViewBuilder.Append("            items: ['fontsize','forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("					'removeformat', '|', 'image', 'flash', 'media', 'insertfile', '|', 'link', 'unlink', '|', 'superscript', 'subscript'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("      KindEditor.create('#option_TYPE_RADIO_0,#option_TYPE_RADIO_1,#option_TYPE_RADIO_2,#option_TYPE_RADIO_3,#option_TYPE_RADIO_4,#option_TYPE_RADIO_5,#option_TYPE_RADIO_6,#option_TYPE_RADIO_7,#option_TYPE_MULTIPLE_0,#option_TYPE_MULTIPLE_1,#option_TYPE_MULTIPLE_2,#option_TYPE_MULTIPLE_3,#option_TYPE_MULTIPLE_4,#option_TYPE_MULTIPLE_5,#option_TYPE_MULTIPLE_6,#option_TYPE_MULTIPLE_7', {\r\n");
	ViewBuilder.Append("            resizeType: 0,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx?sortid=" + echo(sortid) + "&attachid=" + echo(questioninfo.attachid) + "&app=" + echo(setupinfo.markup) + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            minWidth: \"300px\",\r\n");
	ViewBuilder.Append("            minHeight: \"80px\",\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            pasteType: 1,\r\n");
	ViewBuilder.Append("            items: ['forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("					'removeformat', '|', 'image', '|', 'superscript', 'subscript'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //ShowTopic();\r\n");
	ViewBuilder.Append("        ShowAnswerOption('TYPE_RADIO');\r\n");
	ViewBuilder.Append("        ShowAnswerOption('TYPE_MULTIPLE');\r\n");
	ViewBuilder.Append("        $(\"#btnsaveback\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnsavecontinue\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"continue\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnback\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"" + echo(reurl) + "\";\r\n");
	ViewBuilder.Append("        });\r\n");
	string navurl = "questionmanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,navurl)) + "|添加编辑题目," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function ShowTopic() {\r\n");
	ViewBuilder.Append("        var v = $(\"#type\").val();\r\n");
	ViewBuilder.Append("        //填空题标识显示\r\n");
	ViewBuilder.Append("        if (v == \"TYPE_BLANK\") {\r\n");
	ViewBuilder.Append("            $(\"#tk_title\").show();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            $(\"#tk_title\").hide();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        //显示答案区域\r\n");
	ViewBuilder.Append("        for (i = 0; i <q_typelist.length; i++) {\r\n");
	ViewBuilder.Append("            $(\"#tr_answer_\" + q_typelist[i]).hide();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $(\"#tr_answer_\" + v).show();\r\n");
	ViewBuilder.Append("        //显示\r\n");
	ViewBuilder.Append("        if (v == \"TYPE_ANSWER\") {\r\n");
	ViewBuilder.Append("            $(\"#tr_answerkey\").show();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            $(\"#tr_answerkey\").hide();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function ShowAnswerOption(type) {\r\n");
	ViewBuilder.Append("        var v = $(\"#ascount_\"+type).val();\r\n");
	ViewBuilder.Append("        for (i = 2; i <= 8; i++) {\r\n");
	ViewBuilder.Append("            $(\"#answer_\" + type + \"_\" + (i-1)).hide();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        for (var i = 2; i <= v; i++) {\r\n");
	ViewBuilder.Append("            $(\"#answer_\" + type + \"_\" + (i-1)).show();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("     <input type=\"hidden\" id=\"action\" name=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("     <input type=\"hidden\" id=\"attachid\" name=\"attachid\" value=\"" + echo(questioninfo.attachid) + "\">\r\n");
	ViewBuilder.Append("     <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("     <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑题目，所在题库：" + echo(sortinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 题目类型： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <select id=\"type\" name=\"type\" onchange=\"ShowTopic()\">\r\n");

	if (FPArray.Contain(examconfig.questiontype,"TYPE_RADIO"))
	{
	ViewBuilder.Append("<option value=\"TYPE_RADIO\" "+(type=="TYPE_RADIO"?echo("selected"):echo(""))+">单选题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_MULTIPLE"))
	{
	ViewBuilder.Append("<option value=\"TYPE_MULTIPLE\" "+(type=="TYPE_MULTIPLE"?echo("selected"):echo(""))+">多选题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_TRUE_FALSE"))
	{
	ViewBuilder.Append("<option value=\"TYPE_TRUE_FALSE\" "+(type=="TYPE_TRUE_FALSE"?echo("selected"):echo(""))+">判断题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_BLANK"))
	{
	ViewBuilder.Append("<option value=\"TYPE_BLANK\" "+(type=="TYPE_BLANK"?echo("selected"):echo(""))+">填空题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_ANSWER"))
	{
	ViewBuilder.Append("<option value=\"TYPE_ANSWER\" "+(type=="TYPE_ANSWER"?echo("selected"):echo(""))+">问答题</option>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_OPERATION"))
	{
	ViewBuilder.Append("<option value=\"TYPE_OPERATION\" "+(type=="TYPE_OPERATION"?echo("selected"):echo(""))+">操作题</option>\r\n");
	}//end if
	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;

	if (sortinfo.types!="")
	{
	ViewBuilder.Append("<tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\">所属知识点： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <select id=\"typelist\" name=\"typelist\">\r\n");
	ViewBuilder.Append("            <option value=\"\">选择" + echo(types.name) + "</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("<option value=\"" + echo(types2.id) + "\" "+(FPArray.Contain(questioninfo.typelist,types2.id)?echo("selected"):echo(""))+">" + echo(types2.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("       <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 题目内容： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <span id=\"tk_title\" style=\""+(questioninfo.type=="TYPE_BLANK"?echo(""):echo("display:none"))+";color:Red\">\r\n");
	ViewBuilder.Append("            填空题在需要用户作答的地方放(#answer)标签\r\n");
	ViewBuilder.Append("            </span>\r\n");
	ViewBuilder.Append("            <textarea id=\"title\" name=\"title\" style=\"width:95%;height:80px\" cols=\"80\" rows=\"2\">" + echo(questioninfo.title) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table id=\"tr_answer_TYPE_RADIO\" style=\""+(questioninfo.type=="TYPE_RADIO"?echo(""):echo("display:none"))+";width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 答案选项：<br><br>\r\n");
	ViewBuilder.Append("            <select id=\"ascount_TYPE_RADIO\" name=\"ascount_TYPE_RADIO\" onchange=\"ShowAnswerOption('TYPE_RADIO')\" style=\"width:60px;margin-right:5px;\">\r\n");
	ViewBuilder.Append("                <option value=\"2\" "+(ascount==2?echo("selected"):echo(""))+">2个</option>\r\n");
	ViewBuilder.Append("                <option value=\"3\" "+(ascount==3?echo("selected"):echo(""))+">3个</option>\r\n");
	ViewBuilder.Append("                <option value=\"4\" "+(ascount==4?echo("selected"):echo(""))+">4个</option>\r\n");
	ViewBuilder.Append("                <option value=\"5\" "+(ascount==5?echo("selected"):echo(""))+">5个</option>\r\n");
	ViewBuilder.Append("                <option value=\"6\" "+(ascount==6?echo("selected"):echo(""))+">6个</option>\r\n");
	ViewBuilder.Append("                <option value=\"7\" "+(ascount==7?echo("selected"):echo(""))+">7个</option>\r\n");
	ViewBuilder.Append("                <option value=\"8\" "+(ascount==8?echo("selected"):echo(""))+">8个</option>\r\n");
	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("           <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("             <tr>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_0\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">A</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_0\" name=\"option_TYPE_RADIO_0\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[0]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_A\" "+(questioninfo.answer=="A"?echo("checked"):echo(""))+" value=\"A\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table> \r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_1\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">B</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_1\" name=\"option_TYPE_RADIO_1\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[1]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_B\" "+(questioninfo.answer=="B"?echo("checked"):echo(""))+" value=\"B\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_2\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">C</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_2\" name=\"option_TYPE_RADIO_2\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[2]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_C\" "+(questioninfo.answer=="C"?echo("checked"):echo(""))+" value=\"C\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table> \r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_3\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">D</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_3\" name=\"option_TYPE_RADIO_3\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[3]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_D\" "+(questioninfo.answer=="D"?echo("checked"):echo(""))+" value=\"D\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_4\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">E</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_4\" name=\"option_TYPE_RADIO_4\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[4]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_E\" "+(questioninfo.answer=="E"?echo("checked"):echo(""))+" value=\"E\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table> \r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_5\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">F</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_5\" name=\"option_TYPE_RADIO_5\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[5]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_F\" "+(questioninfo.answer=="F"?echo("checked"):echo(""))+" value=\"F\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_6\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">G</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_6\" name=\"option_TYPE_RADIO_6\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[6]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_G\" "+(questioninfo.answer=="G"?echo("checked"):echo(""))+" value=\"G\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_RADIO_7\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">H</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_RADIO_7\" name=\"option_TYPE_RADIO_7\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[7]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_RADIO\" id=\"answer_TYPE_RADIO_H\" "+(questioninfo.answer=="H"?echo("checked"):echo(""))+" value=\"H\" type=\"radio\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("           </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table id=\"tr_answer_TYPE_MULTIPLE\" style=\""+(questioninfo.type=="TYPE_MULTIPLE"?echo(""):echo("display:none"))+";width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 答案选项：<br><br>\r\n");
	ViewBuilder.Append("            <select id=\"ascount_TYPE_MULTIPLE\" name=\"ascount_TYPE_MULTIPLE\" onchange=\"ShowAnswerOption('TYPE_MULTIPLE')\" style=\"width:60px;margin-right:5px;\">\r\n");
	ViewBuilder.Append("                <option value=\"2\" "+(ascount==2?echo("selected"):echo(""))+">2个</option>\r\n");
	ViewBuilder.Append("                <option value=\"3\" "+(ascount==3?echo("selected"):echo(""))+">3个</option>\r\n");
	ViewBuilder.Append("                <option value=\"4\" "+(ascount==4?echo("selected"):echo(""))+">4个</option>\r\n");
	ViewBuilder.Append("                <option value=\"5\" "+(ascount==5?echo("selected"):echo(""))+">5个</option>\r\n");
	ViewBuilder.Append("                <option value=\"6\" "+(ascount==6?echo("selected"):echo(""))+">6个</option>\r\n");
	ViewBuilder.Append("                <option value=\"7\" "+(ascount==7?echo("selected"):echo(""))+">7个</option>\r\n");
	ViewBuilder.Append("                <option value=\"8\" "+(ascount==8?echo("selected"):echo(""))+">8个</option>\r\n");
	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("           <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("             <tr>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_MULTIPLE_0\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">A</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_0\" name=\"option_TYPE_MULTIPLE_0\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[0]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_A\" "+(FPArray.Contain(questioninfo.answer,"A")?echo("checked"):echo(""))+" value=\"A\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table> \r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_MULTIPLE_1\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">B</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_1\" name=\"option_TYPE_MULTIPLE_1\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[1]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_B\" "+(FPArray.Contain(questioninfo.answer,"B")?echo("checked"):echo(""))+" value=\"B\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_MULTIPLE_2\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">C</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_2\" name=\"option_TYPE_MULTIPLE_2\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[2]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_C\" "+(FPArray.Contain(questioninfo.answer,"C")?echo("checked"):echo(""))+" value=\"C\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table> \r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_MULTIPLE_3\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">D</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_3\" name=\"option_TYPE_MULTIPLE_3\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[3]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_D\" "+(FPArray.Contain(questioninfo.answer,"D")?echo("checked"):echo(""))+" value=\"D\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_MULTIPLE_4\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">E</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_4\" name=\"option_TYPE_MULTIPLE_4\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[4]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_E\" "+(FPArray.Contain(questioninfo.answer,"E")?echo("checked"):echo(""))+" value=\"E\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table> \r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_MULTIPLE_5\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">F</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_5\" name=\"option_TYPE_MULTIPLE_5\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[5]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_F\" "+(FPArray.Contain(questioninfo.answer,"F")?echo("checked"):echo(""))+" value=\"F\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td id=\"answer_TYPE_MULTIPLE_6\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">G</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_6\" name=\"option_TYPE_MULTIPLE_6\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[6]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_G\" "+(FPArray.Contain(questioninfo.answer,"G")?echo("checked"):echo(""))+" value=\"G\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td id=\"answer_TYPE_MULTIPLE_7\">\r\n");
	ViewBuilder.Append("                   <table cellpadding=\"0\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"width:30px;height:25px;background-color:#64b4ff;text-align:center;color:#ffffff\">H</td>\r\n");
	ViewBuilder.Append("                           <td rowspan=\"2\"><textarea id=\"option_TYPE_MULTIPLE_7\" name=\"option_TYPE_MULTIPLE_7\" style=\"height:100px;width:320px\">" + echo(questioninfo.option2[7]) + "</textarea></td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                       <tr>\r\n");
	ViewBuilder.Append("                           <td style=\"align-content:center;background-color:#e9cdcd;padding-left:5px;\">\r\n");
	ViewBuilder.Append("                               <input name=\"answer_TYPE_MULTIPLE\" id=\"answer_TYPE_MULTIPLE_H\" "+(FPArray.Contain(questioninfo.answer,"H")?echo("checked"):echo(""))+" value=\"H\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                           </td>\r\n");
	ViewBuilder.Append("                       </tr>\r\n");
	ViewBuilder.Append("                   </table>\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("           </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table id=\"tr_answer_TYPE_TRUE_FALSE\" style=\""+(questioninfo.type=="TYPE_TRUE_FALSE"?echo(""):echo("display:none"))+";width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 题目答案： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <label for=\"answer_TYPE_TRUE_FALSE_Y\"><input type=\"radio\" name=\"answer_TYPE_TRUE_FALSE\" id=\"answer_TYPE_TRUE_FALSE_Y\" "+(questioninfo.answer=="Y"?echo("checked"):echo(""))+" value=\"Y\">正确</label>\r\n");
	ViewBuilder.Append("            <label for=\"answer_TYPE_TRUE_FALSE_N\"><input type=\"radio\" name=\"answer_TYPE_TRUE_FALSE\" id=\"answer_TYPE_TRUE_FALSE_N\" "+(questioninfo.answer=="N"?echo("checked"):echo(""))+" value=\"N\">错误</label>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table id=\"tr_answer_TYPE_BLANK\" style=\""+(questioninfo.type=="TYPE_BLANK"?echo(""):echo("display:none"))+";width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 题目答案： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <span style=\"color:Red\">\r\n");
	ViewBuilder.Append("            填空题如果有多个空格，各个空格的答案之间用英文逗号(,)隔开。\r\n");
	ViewBuilder.Append("            <input id=\"upperflg\" name=\"upperflg\" "+(questioninfo.upperflg==1?echo("checked"):echo(""))+" value=\"1\" type=\"checkbox\">答案区分大小写，<input id=\"orderflg\" name=\"orderflg\" "+(questioninfo.orderflg==1?echo("checked"):echo(""))+" value=\"1\" type=\"checkbox\">答案区分顺序\r\n");
	ViewBuilder.Append("            </span>\r\n");
	ViewBuilder.Append("            <textarea id=\"answer_TYPE_BLANK\" name=\"answer_TYPE_BLANK\" style=\"width:95%;height:50px\" cols=\"20\" rows=\"2\">" + echo(questioninfo.answer) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table id=\"tr_answer_TYPE_ANSWER\" style=\""+(questioninfo.type=="TYPE_ANSWER"?echo(""):echo("display:none"))+";width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 题目答案： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <textarea id=\"answer_TYPE_ANSWER\" name=\"answer_TYPE_ANSWER\" style=\"width:95%;height:50px\" cols=\"20\" rows=\"2\">" + echo(questioninfo.answer) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table id=\"tr_answerkey\" style=\""+(questioninfo.type=="TYPE_ANSWER"?echo(""):echo("display:none"))+";width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 答案关键词： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <span style=\"color:Red\">\r\n");
	ViewBuilder.Append("            问答题将根据设置的关键词进行评分,多个关键字之间用英文逗号(,)隔开。\r\n");
	ViewBuilder.Append("            </span>\r\n");
	ViewBuilder.Append("            <textarea id=\"answerkey\" name=\"answerkey\" style=\"width:95%;height:50px\" cols=\"20\" rows=\"2\">" + echo(questioninfo.answerkey) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table id=\"tr_answer_TYPE_OPERATION\" style=\""+(questioninfo.type=="TYPE_OPERATION"?echo(""):echo("display:none"))+";width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 题目答案： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <textarea id=\"answer_TYPE_OPERATION\" name=\"answer_TYPE_OPERATION\" style=\"width:95%;height:50px\">" + echo(questioninfo.answer) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 答案解析： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("        <textarea id=\"explain\" name=\"explain\" style=\"width:95%;height:80px\" cols=\"20\" rows=\"2\">" + echo(questioninfo.explain) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 题目难度： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <select id=\"difficulty\" name=\"difficulty\" style=\"width:200px;\">\r\n");
	ViewBuilder.Append("			    <option value=\"0\" "+(questioninfo.difficulty==0?echo("selected"):echo(""))+">易</option>\r\n");
	ViewBuilder.Append("			    <option value=\"1\" "+(questioninfo.difficulty==1?echo("selected"):echo(""))+">较易</option>\r\n");
	ViewBuilder.Append("			    <option value=\"2\" "+(questioninfo.difficulty==2?echo("selected"):echo(""))+">一般</option>\r\n");
	ViewBuilder.Append("			    <option value=\"3\" "+(questioninfo.difficulty==3?echo("selected"):echo(""))+">较难</option>\r\n");
	ViewBuilder.Append("			    <option value=\"4\" "+(questioninfo.difficulty==4?echo("selected"):echo(""))+">难</option>\r\n");
	ViewBuilder.Append("			</select>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"> 随机题目： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("            <label for=\"status\"><input id=\"status\" name=\"status\" value=\"1\" "+(questioninfo.status==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否允许组卷时随机抽取该题目</label>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" style=\"width:80px\"></td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnsaveback\" value=\"保存返回\" id=\"btnsaveback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnsavecontinue\" value=\"保存继续\" id=\"btnsavecontinue\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnback\" value=\"返回\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    layer.msg('" + echo(msg) + "', 0, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 20) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            window.location.href = \"" + echo(link) + "\";\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
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
