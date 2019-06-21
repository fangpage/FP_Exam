<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.userselect" %>
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
	ViewBuilder.Append("<title>选择用户</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.core-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var setting = {\r\n");
	ViewBuilder.Append("        view: {\r\n");
	ViewBuilder.Append("            dblClickExpand: true,\r\n");
	ViewBuilder.Append("            showLine: true,\r\n");
	ViewBuilder.Append("            selectedMulti: false\r\n");
	ViewBuilder.Append("        },\r\n");
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
	ViewBuilder.Append("    function expandNode(e) {\r\n");
	ViewBuilder.Append("        var zTree = $.fn.zTree.getZTreeObj(\"tree\"),\r\n");
	ViewBuilder.Append("		type = e.data.type;\r\n");
	ViewBuilder.Append("        if (type == \"expandall\") {\r\n");
	ViewBuilder.Append("            zTree.expandAll(true);\r\n");
	ViewBuilder.Append("        } else if (type == \"collapseall\") {\r\n");
	ViewBuilder.Append("            zTree.expandAll(false);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var h = $(window).height()-90;\r\n");
	ViewBuilder.Append("        $(\"#table\").height(h);\r\n");
	ViewBuilder.Append("        $(\"#tree\").height(h - $(\"#divbutton\").height());\r\n");
	ViewBuilder.Append("        $(\"#frmmaindetail\").height(h - 3);\r\n");
	ViewBuilder.Append("        $.fn.zTree.init($(\"#tree\"), setting, zNodes);\r\n");
	ViewBuilder.Append("        $(\"#btnexpandall\").bind(\"click\", {type:\"expandall\"}, expandNode);\r\n");
	ViewBuilder.Append("        $(\"#btncollapseall\").bind(\"click\", {type:\"collapseall\"}, expandNode);\r\n");
	ViewBuilder.Append("        var index = parent.layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnclose\").click(function () {\r\n");
	ViewBuilder.Append("            parent.layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnok\").click(function () {\r\n");
	ViewBuilder.Append("            var str=\"\";\r\n");
	ViewBuilder.Append("            $(\"input[name='chkid']:checkbox\",window.frames[\"frmmaindetail\"].document).each(function(){ \r\n");
	ViewBuilder.Append("                if ($(this).attr(\"checked\")) { \r\n");
	ViewBuilder.Append("                    if(str!='')\r\n");
	ViewBuilder.Append("                    {\r\n");
	ViewBuilder.Append("                        str+=',';\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    str += $(this).val(); \r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            var examuser=parent.$('#examuser').val();\r\n");
	ViewBuilder.Append("            if(examuser!='')\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                examuser+=\",\";\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            examuser+=str;\r\n");
	ViewBuilder.Append("            $.post(\"userexamajax.aspx\", {\r\n");
	ViewBuilder.Append("                examuser: examuser,\r\n");
	ViewBuilder.Append("                status: status\r\n");
	ViewBuilder.Append("            }, function (data) {\r\n");
	ViewBuilder.Append("                parent.$(\"#examusername\").html(data.uname);\r\n");
	ViewBuilder.Append("                parent.$('#examuser').val(examuser);\r\n");
	ViewBuilder.Append("                parent.layer.close(index);\r\n");
	ViewBuilder.Append("            }, \"json\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btnuserok\").click(function () {\r\n");
	ViewBuilder.Append("            var examuser=$(\"#examuser\",window.frames[\"frmmaindetail\"].document).val();\r\n");
	ViewBuilder.Append("            $.post(\"userexamajax.aspx\", {\r\n");
	ViewBuilder.Append("                examuser: examuser,\r\n");
	ViewBuilder.Append("                status: status\r\n");
	ViewBuilder.Append("            }, function (data) {\r\n");
	ViewBuilder.Append("                parent.$(\"#examusername\").html(data.uname);\r\n");
	ViewBuilder.Append("                parent.$('#examuser').val(examuser);\r\n");
	ViewBuilder.Append("                parent.layer.close(index);\r\n");
	ViewBuilder.Append("            }, \"json\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form method=\"post\" action=\"\" name=\"frmpost\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <div id=\"table\" class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul>\r\n");

	if (tab==0)
	{
	ViewBuilder.Append("              <li class=\"active\"><a href=\"userselect.aspx?tab=0&examuser=" + echo(examuser) + "\">选择用户</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"userselect.aspx?tab=0&examuser=" + echo(examuser) + "\">选择用户</a></li>\r\n");
	}//end if

	if (tab==1)
	{
	ViewBuilder.Append("              <li class=\"active\"><a href=\"userselect.aspx?tab=1&examuser=" + echo(examuser) + "\">已选用户</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li class=\"normal\"><a href=\"userselect.aspx?tab=1&examuser=" + echo(examuser) + "\">已选用户</a></li>\r\n");
	}//end if
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");

	if (tab==1)
	{
	ViewBuilder.Append("      <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 499px; margin: 0px;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td id=\"tdcontent\" style=\"border: solid 1px #93C7D4; vertical-align: top;\">\r\n");
	ViewBuilder.Append("                <div style=\"padding: 2px;\">\r\n");
	ViewBuilder.Append("                    <iframe id=\"frmmaindetail\" name=\"frmmaindetail\" src=\"userexam.aspx?tab=" + echo(tab) + "&examuser=" + echo(examuser) + "\" frameborder=\"0\" scrolling=\"auto\" style=\"width: 100%;\"></iframe>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td colspan=\"3\" height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btnuserok\" value=\"确定\" id=\"btnuserok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btnclose\" value=\"关闭\" id=\"btnclose\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	}
	else
	{
	ViewBuilder.Append("      <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 499px; margin: 0px;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width: 230px; border: solid 1px #93C7D4; vertical-align: top;\">\r\n");
	ViewBuilder.Append("                <div class=\"newslist\" id=\"divbutton\">\r\n");
	ViewBuilder.Append("                <div class=\"newsicon\" style=\"width: 230px;\">\r\n");
	ViewBuilder.Append("                    <ul>\r\n");
	ViewBuilder.Append("                        <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat;margin-left:5px;\"><a href=\"userselect.aspx\">刷新</a></li>\r\n");
	ViewBuilder.Append("                        <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/down.gif) 2px 6px no-repeat\"><a id=\"btnexpandall\" href=\"javascript:void();\">展开</a></li>\r\n");
	ViewBuilder.Append("                        <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/up.gif) 2px 6px no-repeat\"><a id=\"btncollapseall\" href=\"javascript:void();\">收缩</a></li>\r\n");
	ViewBuilder.Append("                    </ul>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <ul id=\"tree\" class=\"ztree\" style=\"width: 230px; overflow: auto;\"></ul>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td style=\"width: 2px;\"></td>\r\n");
	ViewBuilder.Append("            <td id=\"tdcontent\" style=\"border: solid 1px #93C7D4; vertical-align: top;\">\r\n");
	ViewBuilder.Append("                <div style=\"padding: 2px;\">\r\n");
	ViewBuilder.Append("                    <iframe id=\"frmmaindetail\" name=\"frmmaindetail\" src=\"usersearch.aspx?tab=" + echo(tab) + "&examuser=" + echo(examuser) + "\" frameborder=\"0\" scrolling=\"auto\" style=\"width: 100%;\"></iframe>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td colspan=\"3\" height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btnclose\" value=\"关闭\" id=\"btnclose\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	}//end if
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
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
