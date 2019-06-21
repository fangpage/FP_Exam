<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.testadd" %>
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
	ViewBuilder.Append("<title>添加编辑练习</title>\r\n");
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
	ViewBuilder.Append("		      enable: true,\r\n");
	ViewBuilder.Append("          chkboxType :  { \"Y\" : \"s\", \"N\" : \"s\" }\r\n");
	ViewBuilder.Append("	      },\r\n");
	ViewBuilder.Append("        data: {\r\n");
	ViewBuilder.Append("            simpleData: {\r\n");
	ViewBuilder.Append("                enable: true,\r\n");
	ViewBuilder.Append("                idKey: \"id\",\r\n");
	ViewBuilder.Append("                pIdKey: \"pId\",\r\n");
	ViewBuilder.Append("                rootPId: \"\"\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    };\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var h = 390;\r\n");
	ViewBuilder.Append("        $(\"#table\").height(h);\r\n");
	ViewBuilder.Append("        $(\"#tree\").height(h - 40);\r\n");
	ViewBuilder.Append("        //初始化部门\r\n");
	ViewBuilder.Append("        $.ajax({\r\n");
	ViewBuilder.Append("          url: 'selectdepart.aspx',\r\n");
	ViewBuilder.Append("          type: 'Post',\r\n");
	ViewBuilder.Append("          dataType: 'json',\r\n");
	ViewBuilder.Append("          async: false,\r\n");
	ViewBuilder.Append("          success: function (data) {\r\n");
	ViewBuilder.Append("            $.fn.zTree.init($(\"#tree\"), setting, data);\r\n");
	ViewBuilder.Append("            var treeObj = $.fn.zTree.getZTreeObj(\"tree\", data);\r\n");
	ViewBuilder.Append("            var nodes = treeObj.getNodes();\r\n");
	ViewBuilder.Append("            for (var i = 0; i < nodes.length; i++) { //设置节点展开\r\n");
	ViewBuilder.Append("              treeObj.expandNode(nodes[i], true, false, true);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("          }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"input[name=btnsave]\").click(function () {\r\n");
	ViewBuilder.Append("            GetCheckedAll();\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"input[name=btnback]\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"testmanage.aspx?sortid=" + echo(sortid) + "\";\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btncleardepart\").click(function () {\r\n");
	ViewBuilder.Append("          var treeObj = $.fn.zTree.getZTreeObj(\"tree\");\r\n");
	ViewBuilder.Append("          treeObj.checkAllNodes(false);\r\n");
	ViewBuilder.Append("           $(\"#departname\").html(\"\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnclearuser\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#examusername\").html(\"\");\r\n");
	ViewBuilder.Append("            $(\"#examuser\").val(\"\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        GetDepartName();\r\n");
	ViewBuilder.Append("        $.post(\"userexamajax.aspx\", {\r\n");
	ViewBuilder.Append("          examuser: '" + echo(testinfo.flag_users) + "',\r\n");
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
	ViewBuilder.Append("                title: '选择练习部门',\r\n");
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
	ViewBuilder.Append("                title: '选择用户',\r\n");
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
	ViewBuilder.Append("                title: '导入用户',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                iframe: {src : 'userimport.aspx?examuser='+$(\"#examuser\").val()},\r\n");
	ViewBuilder.Append("                area: ['600px' , '230px']\r\n");
	ViewBuilder.Append("            }); \r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("      PageNav(\"" + echo(GetSortNav(sortinfo,"exammanage.aspx")) + "|添加编辑练习," + echo(rawurl) + "\");\r\n");
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
	ViewBuilder.Append("    //获取部门名称\r\n");
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
	ViewBuilder.Append("  <input id=\"examdeparts\" type=\"hidden\" name=\"examdeparts\" value=\"\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">练习基本设置，所属科目：" + echo(sortinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 练习名称： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"name\" type=\"text\" value=\"" + echo(testinfo.name) + "\" id=\"name\" style=\"height:21px;width:300px;\"></td>\r\n");
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

	if (FPArray.Contain(testinfo.typelist,types2.id))
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

	if (FPArray.Contain(testinfo.typelist,types2.id))
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

	if (FPArray.Contain(testinfo.typelist,types2.id))
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
	ViewBuilder.Append("            <td class=\"td_class\"> 练习次数： </td>\r\n");
	ViewBuilder.Append("            <td><input name=\"repeats\" type=\"text\" value=\"" + echo(testinfo.repeats) + "\" id=\"repeats\" style=\"height:21px;width:300px;\">&nbsp;0为无限制</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 练习终端： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"client[pc]\" name=\"client[pc]\" value=\"1\" "+(testinfo.client["pc"].ToString()=="1"?echo("checked"):echo(""))+" type=\"checkbox\">PC端\r\n");
	ViewBuilder.Append("              <input id=\"client[mobile]\" name=\"client[mobile]\" value=\"1\" "+(testinfo.client["mobile"].ToString()=="1"?echo("checked"):echo(""))+" type=\"checkbox\">手机端\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 练习状态： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("               <input id=\"status\" name=\"status\" value=\"1\" "+(testinfo.status==1?echo("checked"):echo(""))+" type=\"radio\">开启\r\n");
	ViewBuilder.Append("               <input id=\"status\" name=\"status\" value=\"0\" "+(testinfo.status==0?echo("checked"):echo(""))+" type=\"radio\">关闭\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"> 练习角色： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	loop__id=0;
	foreach(RoleInfo roles in rolelist)
	{
	loop__id++;

	if (roles.id>=5)
	{
	ViewBuilder.Append("<span><input id=\"flag_roles\" name=\"flag_roles\" value=\"" + echo(roles.id) + "\" "+(FPArray.Contain(testinfo.flag_roles,roles.id)?echo("checked"):echo(""))+" type=\"checkbox\">" + echo(roles.name) + "</span>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\" valign=\"top\"> 练习部门： </td>\r\n");
	ViewBuilder.Append("        <td valign=\"top\">\r\n");
	ViewBuilder.Append("        <span id=\"departname\"></span><br>\r\n");
	ViewBuilder.Append("          <input id=\"flag_departs\" name=\"flag_departs\" value=\"" + echo(testinfo.flag_departs) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btndepartsearch\" value=\"选择部门\" id=\"btndepartsearch\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btncleardepart\" value=\"清空\" id=\"btncleardepart\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"> 练习用户： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("          <span id=\"examusername\"></span><br>\r\n");
	ViewBuilder.Append("          <input id=\"flag_users\" name=\"flag_users\" value=\"" + echo(testinfo.flag_users) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("          <input type=\"button\" name=\"btnexamuser\" value=\"选择用户\" id=\"btnexamuser\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          <input type=\"button\" name=\"btninportuser\" value=\"导入用户\" id=\"btninportuser\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          <input type=\"button\" name=\"btnclearuser\" value=\"清空\" id=\"btnclearuser\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("        <td height=\"25\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnsave\" value=\"保存\" id=\"btnsave1\" class=\"adminsubmit_short\">\r\n");

	if (id>0)
	{
	ViewBuilder.Append("<input type=\"button\" name=\"btnsaveas\" value=\"另存为\" id=\"btnsaveas\" class=\"adminsubmit_short\">\r\n");
	}//end if
	ViewBuilder.Append("        <input type=\"button\" name=\"btnback\" value=\"返回\" id=\"btnback1\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
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
	ViewBuilder.Append("	  </div>\r\n");
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
