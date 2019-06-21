<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
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
	ViewBuilder.Append("<title>添加编辑考试</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.core-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.excheck-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "editor/themes/default/default.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "calendar/WdatePicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var setting = {\r\n");
	ViewBuilder.Append("        view: {\r\n");
	ViewBuilder.Append("            dblClickExpand: true,\r\n");
	ViewBuilder.Append("            showLine: true,\r\n");
	ViewBuilder.Append("            selectedMulti: false\r\n");
	ViewBuilder.Append("        },\r\n");
	ViewBuilder.Append("        check: {\r\n");
	ViewBuilder.Append("		    enable: true,\r\n");
	ViewBuilder.Append("            chkboxType :  { \"Y\" : \"s\", \"N\" : \"s\" }\r\n");
	ViewBuilder.Append("	    },\r\n");
	ViewBuilder.Append("        data: {\r\n");
	ViewBuilder.Append("            simpleData: {\r\n");
	ViewBuilder.Append("                enable: true,\r\n");
	ViewBuilder.Append("                idKey: \"id\",\r\n");
	ViewBuilder.Append("                pIdKey: \"pId\",\r\n");
	ViewBuilder.Append("                rootPId: \"\"\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    };\r\n");
	ViewBuilder.Append("    var zNodes = [\r\n");
	ViewBuilder.Append("        " + echo(zNodes) + "\r\n");
	ViewBuilder.Append("    ];\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var h = 390;\r\n");
	ViewBuilder.Append("        $(\"#table\").height(h);\r\n");
	ViewBuilder.Append("        $(\"#tree\").height(h - 40);\r\n");
	ViewBuilder.Append("        var zTree=$.fn.zTree.init($(\"#tree\"), setting, zNodes);\r\n");
	ViewBuilder.Append("        KindEditor.create('#content', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx?sortid=" + echo(sortid) + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("				    'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("                    afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#islimit').click(function () {\r\n");
	ViewBuilder.Append("            if(this.checked==true)\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                $(\"#showlimittime\").show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                $(\"#showlimittime\").hide();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"input[name=btnsave]\").click(function () {\r\n");
	ViewBuilder.Append("            GetCheckedAll();\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"input[name=btnback]\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"exammanage.aspx?sortid=" + echo(sortid) + "\";\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnsaveas\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"saveas\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btncleardepart\").click(function () {\r\n");
	ViewBuilder.Append("            zTree.checkAllNodes(false);\r\n");
	ViewBuilder.Append("            $(\"#departname\").html(\"\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnclearuser\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#examusername\").html(\"\");\r\n");
	ViewBuilder.Append("            $(\"#examuser\").val(\"\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        GetDepartName();\r\n");
	ViewBuilder.Append("        $.post(\"userexamajax.aspx\", {\r\n");
	ViewBuilder.Append("            examuser: '" + echo(examinfo.examuser) + "',\r\n");
	ViewBuilder.Append("            status: status\r\n");
	ViewBuilder.Append("        }, function (data) {\r\n");
	ViewBuilder.Append("            $(\"#examusername\").html(data.uname);\r\n");
	ViewBuilder.Append("        }, \"json\");\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        var index1= layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btndepartsearch\").click(function(){\r\n");
	ViewBuilder.Append("            index1=$.layer({\r\n");
	ViewBuilder.Append("                type: 1,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                title: '选择考试部门',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                area: ['500px' , '440px'],\r\n");
	ViewBuilder.Append("                page: {dom : '#showdepart'}\r\n");
	ViewBuilder.Append("            }); \r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnclose').click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index1);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("            GetDepartName();\r\n");
	ViewBuilder.Append("            layer.close(index1);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnexamuser').click(function(){\r\n");
	ViewBuilder.Append("                index=$.layer({\r\n");
	ViewBuilder.Append("                type: 2,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '选择考试用户',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                iframe: {src : 'userselect.aspx?examuser='+$(\"#examuser\").val()},\r\n");
	ViewBuilder.Append("                area: ['500px' , '480px']\r\n");
	ViewBuilder.Append("            }); \r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btninportuser').click(function(){\r\n");
	ViewBuilder.Append("            index=$.layer({\r\n");
	ViewBuilder.Append("                type: 2,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '导入考试用户',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                iframe: {src : 'userimport.aspx?examuser='+$(\"#examuser\").val()},\r\n");
	ViewBuilder.Append("                area: ['600px' , '230px']\r\n");
	ViewBuilder.Append("            }); \r\n");
	ViewBuilder.Append("        });\r\n");
	string navurl = "exammanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,navurl)) + "|添加编辑考试," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function GetCheckedAll() {\r\n");
	ViewBuilder.Append("        var treeObj = $.fn.zTree.getZTreeObj(\"tree\");\r\n");
	ViewBuilder.Append("        var nodes = treeObj.getCheckedNodes(true);\r\n");
	ViewBuilder.Append("        var msg = '';\r\n");
	ViewBuilder.Append("        for (var i = 0; i < nodes.length; i++) {\r\n");
	ViewBuilder.Append("            if(nodes[i].id!='')\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                if(msg!='')\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    msg+=',';\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                msg += nodes[i].id;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $(\"#examdeparts\").val();\r\n");
	ViewBuilder.Append("        $(\"#examdeparts\").val(msg);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function GetDepartName()\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        var treeObj = $.fn.zTree.getZTreeObj(\"tree\");\r\n");
	ViewBuilder.Append("        var nodes = treeObj.getCheckedNodes(true);\r\n");
	ViewBuilder.Append("        var msg = '';\r\n");
	ViewBuilder.Append("        for (var i = 0; i < nodes.length; i++) {\r\n");
	ViewBuilder.Append("            if(nodes[i].id!='')\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                if(msg!='')\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    msg+=',';\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                msg += nodes[i].name;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $(\"#departname\").html(msg);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("  <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("  <input id=\"tabactive\" name=\"tabactive\" value=\"" + echo(tabactive) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("  <input id=\"examdeparts\" type=\"hidden\" name=\"examdeparts\" value=\"\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul>\r\n");
	ViewBuilder.Append("            <li id=\"one1\" onclick=\"setTab('one',1,3)\" class=\""+(tabactive==1?echo(" "+"active"):echo(" "+"normal"))+"\"><a href=\"#\">考试设置</a> </li>\r\n");
	ViewBuilder.Append("            <li id=\"one2\" onclick=\"setTab('one',2,3)\" class=\""+(tabactive==2?echo(" "+"active"):echo(" "+"normal"))+"\"><a href=\"#\">考试权限</a></li>\r\n");
	ViewBuilder.Append("            <li id=\"one3\" onclick=\"setTab('one',3,3)\" class=\""+(tabactive==3?echo(" "+"active"):echo(" "+"normal"))+"\"><a href=\"#\">考试描述</a></li>\r\n");

	if (id>0)
	{
	ViewBuilder.Append("<li class=\"normal\"><a href=\"examexpmanage.aspx?examid=" + echo(id) + "\">考试奖励</a></li>\r\n");
	}//end if
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div id=\"con_one_1\" style=\""+(tabactive==1?echo(""):echo("display:none"))+"\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">考试基本设置，所属科目：" + echo(sortinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试名称： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"name\" type=\"text\" value=\"" + echo(examinfo.name) + "\" id=\"name\" style=\"height:21px;width:300px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	if (sortinfo.types!="")
	{

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td>" + echo(types.name) + "： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");

	if (types.type==1)
	{

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("                <input id=\"typelist1\" name=\"typelist\" value=\"" + echo(types2.id) + "\" \r\n");

	if (FPArray.Contain(examinfo.typelist,types2.id))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">" + echo(types2.name) + "\r\n");
	}//end loop
	}
	else if (types.type==2)
	{

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("                <input id=\"typelist2\" name=\"typelist\" value=\"" + echo(types2.id) + "\" \r\n");

	if (FPArray.Contain(examinfo.typelist,types2.id))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">" + echo(types2.name) + "\r\n");
	}//end loop
	}
	else
	{
	ViewBuilder.Append("                <select id=\"typelist\" name=\"typelist\">\r\n");
	ViewBuilder.Append("                <option value=\"\">选择" + echo(types.name) + "</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("                <option value=\"" + echo(types2.id) + "\" \r\n");

	if (FPArray.Contain(examinfo.typelist,types2.id))
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(types2.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                </select>\r\n");
	}//end if
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 及格分数： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"passmark\" type=\"text\" value=\"" + echo(examinfo.passmark) + "\" id=\"passmark\" style=\"height:21px;width:300px;\">&nbsp;%(百分比)</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试次数： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"repeats\" type=\"text\" value=\"" + echo(examinfo.repeats) + "\" id=\"repeats\" style=\"height:21px;width:300px;\">&nbsp;0为无限制</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td class=\"td_class\"> 考试费用： </td>\r\n");
	ViewBuilder.Append("              <td><input name=\"credits\" type=\"text\" value=\"" + echo(examinfo.credits) + "\" id=\"credits\" style=\"height:21px;width:300px;\">元/次,0为免费</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 答题时间： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"examtime\" type=\"text\" value=\"" + echo(examinfo.examtime) + "\" id=\"examtime\" style=\"height:21px;width:300px;\">&nbsp;分钟</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试时间： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"islimit\" name=\"islimit\" value=\"1\" "+(examinfo.islimit==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否使用考试时间限制\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr id=\"showlimittime\" style=\""+(examinfo.islimit==1?echo(""):echo("display:none"))+"\">\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试时间设置： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input name=\"starttime\" type=\"text\" value='" + echo(examinfo.starttime,"yyyy-MM-dd HH:mm") + "' id=\"starttime\" onfocus=\"WdatePicker({el:'starttime',dateFmt:'yyyy-MM-dd HH:mm'})\" readonly=\"readonly\" style=\"height:21px;width:120px;\">至\r\n");
	ViewBuilder.Append("                <input name=\"endtime\" type=\"text\" value='" + echo(examinfo.endtime,"yyyy-MM-dd HH:mm") + "' id=\"endtime\" onfocus=\"WdatePicker({el:'endtime',dateFmt:'yyyy-MM-dd HH:mm'})\" readonly=\"readonly\" style=\"height:21px;width:120px;\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试终端： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"client[pc]\" name=\"client[pc]\" value=\"1\" "+(examinfo.client["pc"].ToString()=="1"?echo("checked"):echo(""))+" type=\"checkbox\">PC端\r\n");
	ViewBuilder.Append("              <input id=\"client[mobile]\" name=\"client[mobile]\" value=\"1\" "+(examinfo.client["mobile"].ToString()=="1"?echo("checked"):echo(""))+" type=\"checkbox\">手机端\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 查看答案： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"showanswer\" name=\"showanswer\" value=\"1\" "+(examinfo.showanswer==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否允许用户提交后查看考试的答案\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 切换窗口： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"iswitch\" name=\"iswitch\" value=\"1\" "+(examinfo.iswitch==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否在考试中禁止窗口切换，如切换将提示考生(只适用于电脑版)\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 视频拍照： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"isvideo\" name=\"isvideo\" value=\"1\" "+(examinfo.isvideo==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否允许考试中使用视频拍照(只适用于电脑版)\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 页面复制： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"iscopy\" name=\"iscopy\" value=\"1\" "+(examinfo.iscopy==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否允许考试页面右键复制功能(只适用于电脑版)\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 固定位置： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"examtype\" name=\"examtype\" value=\"1\" "+(examinfo.examtype==1?echo("checked"):echo(""))+" type=\"checkbox\">是/否固定位置考试（只适用于局域网内的考试）\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 答题模式： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"papertype\" name=\"papertype\" value=\"0\" "+(examinfo.papertype==0?echo("checked"):echo(""))+" type=\"radio\">全卷答题\r\n");
	ViewBuilder.Append("              <input id=\"papertype\" name=\"papertype\" value=\"1\" "+(examinfo.papertype==1?echo("checked"):echo(""))+" type=\"radio\">单题答题\r\n");
	ViewBuilder.Append("              &nbsp;(只适用于电脑版，手机版都为单题类型)\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 题目排序： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"display\" name=\"display\" value=\"0\" "+(examinfo.display==0?echo("checked"):echo(""))+" type=\"radio\">随机排序\r\n");
	ViewBuilder.Append("                <input id=\"display\" name=\"display\" value=\"1\" "+(examinfo.display==1?echo("checked"):echo(""))+" type=\"radio\">固定排序 &nbsp;(只适用于固定题试卷使用，随机抽题本身已是随机)\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试报名： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("               <input id=\"issign1\" name=\"issign\" value=\"1\" "+(examinfo.issign==1?echo("checked"):echo(""))+" type=\"radio\">开启报名\r\n");
	ViewBuilder.Append("               <input id=\"issign0\" name=\"issign\" value=\"0\" "+(examinfo.issign==0?echo("checked"):echo(""))+" type=\"radio\">关闭报名\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 考试状态： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("               <input id=\"status\" name=\"status\" value=\"1\" "+(examinfo.status==1?echo("checked"):echo(""))+" type=\"radio\">开启考试\r\n");
	ViewBuilder.Append("               <input id=\"status\" name=\"status\" value=\"0\" "+(examinfo.status==0?echo("checked"):echo(""))+" type=\"radio\">关闭考试\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td height=\"25\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnsave\" value=\"保存\" id=\"btnsave1\" class=\"adminsubmit_short\">\r\n");

	if (id>0)
	{
	ViewBuilder.Append("<input type=\"button\" name=\"btnsaveas\" value=\"另存为\" id=\"btnsaveas\" class=\"adminsubmit_short\">\r\n");
	}//end if
	ViewBuilder.Append("            <input type=\"button\" name=\"btnback\" value=\"返回\" id=\"btnback1\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div id=\"con_one_2\" style=\""+(tabactive==2?echo(""):echo("display:none"))+"\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">考试权限设置，所属科目：" + echo(sortinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\">考试角色： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	loop__id=0;
	foreach(RoleInfo roles in rolelist)
	{
	loop__id++;

	if (roles.id>=5)
	{
	ViewBuilder.Append("<span><input id=\"examroles\" name=\"examroles\" value=\"" + echo(roles.id) + "\" "+(FPArray.Contain(examinfo.examroles,roles.id)?echo("checked"):echo(""))+" type=\"checkbox\">" + echo(roles.name) + "</span>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" valign=\"top\"> 考试部门： </td>\r\n");
	ViewBuilder.Append("        <td valign=\"top\">\r\n");
	ViewBuilder.Append("        <span id=\"departname\"></span><br>\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btndepartsearch\" value=\"选择部门\" id=\"btndepartsearch\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btncleardepart\" value=\"清空\" id=\"btncleardepart\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"> 考试用户： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("          <span id=\"examusername\"></span><br>\r\n");
	ViewBuilder.Append("          <input id=\"examuser\" name=\"examuser\" value=\"" + echo(examinfo.examuser) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("          <input type=\"button\" name=\"btnexamuser\" value=\"选择用户\" id=\"btnexamuser\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          <input type=\"button\" name=\"btninportuser\" value=\"导入用户\" id=\"btninportuser\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          <input type=\"button\" name=\"btnclearuser\" value=\"清空\" id=\"btnclearuser\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td height=\"25\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnsave\" value=\"保存\" id=\"btnsave2\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnback\" value=\"返回\" id=\"btnback2\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div id=\"con_one_3\" style=\""+(tabactive==3?echo(""):echo("display:none"))+"\">\r\n");
	ViewBuilder.Append("      <table style=\"width:100%\" class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">考试描述，所属科目：" + echo(sortinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"> 考试标题： </td>\r\n");
	ViewBuilder.Append("        <td><input name=\"title\" type=\"text\" value=\"" + echo(examinfo.title) + "\" id=\"title\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"> 考试时间： </td>\r\n");
	ViewBuilder.Append("        <td><input name=\"opentime\" type=\"text\" value=\"" + echo(examinfo.opentime) + "\" id=\"opentime\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"> 考试地点： </td>\r\n");
	ViewBuilder.Append("        <td><input name=\"address\" type=\"text\" value=\"" + echo(examinfo.address) + "\" id=\"address\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"> 考试说明： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("         <textarea id=\"content\" name=\"content\" style=\"width:100%; height:300px\" cols=\"20\" rows=\"2\">" + echo(examinfo.content) + "</textarea>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td height=\"25\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnsave\" value=\"保存\" id=\"btnsave3\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnback\" value=\"返回\" id=\"btnback3\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("         </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"showdepart\" style=\"display:none\">\r\n");
	ViewBuilder.Append("     <table id=\"table\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 485px; margin: 0px;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width: 485px; border: solid 1px #93C7D4; vertical-align: top;\">\r\n");
	ViewBuilder.Append("                <ul id=\"tree\" class=\"ztree\" style=\"width: 485px; overflow: auto;\"></ul>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnclose\" value=\"关闭\" id=\"btnclose\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("	</div>\r\n");
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
