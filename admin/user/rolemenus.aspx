<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.rolemenus" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>菜单权限设置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.core-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.excheck-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        var setting = {\r\n");
	ViewBuilder.Append("            view: {\r\n");
	ViewBuilder.Append("                dblClickExpand: true,\r\n");
	ViewBuilder.Append("                showLine: true,\r\n");
	ViewBuilder.Append("                selectedMulti: false\r\n");
	ViewBuilder.Append("            },\r\n");
	ViewBuilder.Append("            check: {\r\n");
	ViewBuilder.Append("                enable: true,\r\n");
	ViewBuilder.Append("                chkboxType :  { \"Y\" : \"s\", \"N\" : \"s\" }\r\n");
	ViewBuilder.Append("            },\r\n");
	ViewBuilder.Append("            data: {\r\n");
	ViewBuilder.Append("                simpleData: {\r\n");
	ViewBuilder.Append("                    enable: true,\r\n");
	ViewBuilder.Append("                    idKey: \"id\",\r\n");
	ViewBuilder.Append("                    pIdKey: \"pId\",\r\n");
	ViewBuilder.Append("                    rootPId: \"\"\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        };\r\n");
	ViewBuilder.Append("        var zNodes = [\r\n");
	ViewBuilder.Append("            " + echo(zNodes) + "\r\n");
	ViewBuilder.Append("        ];\r\n");
	ViewBuilder.Append("        function GetCheckedAll() {\r\n");
	ViewBuilder.Append("            var treeObj = $.fn.zTree.getZTreeObj(\"tree\");\r\n");
	ViewBuilder.Append("            var nodes = treeObj.getCheckedNodes(true);\r\n");
	ViewBuilder.Append("            var msg = '';\r\n");
	ViewBuilder.Append("            for (var i = 0; i < nodes.length; i++) {\r\n");
	ViewBuilder.Append("                if(nodes[i].id!='')\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    if(msg!='')\r\n");
	ViewBuilder.Append("                    {\r\n");
	ViewBuilder.Append("                        msg+=',';\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    msg += nodes[i].id;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $(\"#menus\").val();\r\n");
	ViewBuilder.Append("            $(\"#menus\").val(msg);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $.fn.zTree.init($(\"#tree\"), setting, zNodes);\r\n");
	ViewBuilder.Append("            $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("                PageBack(\"rolemanage.aspx\");\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"input[name=btnsave]\").click(function () {\r\n");
	ViewBuilder.Append("                GetCheckedAll();\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            PageNav(\"用户角色管理,user/rolemanage.aspx|角色菜单权限设置,user/" + echo(pagename) + "?rid=" + echo(rid) + "\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("        <input id=\"menus\" type=\"hidden\" name=\"menus\" value=\"\">\r\n");
	ViewBuilder.Append("        <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("            <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("                <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("                    <ul>\r\n");
	ViewBuilder.Append("                        <li class=\"active\"><a href=\"rolemenus.aspx?rid=" + echo(rid) + "\">菜单权限</a></li>\r\n");
	ViewBuilder.Append("                        <li class=\"normal\"><a href=\"roledesktop.aspx?rid=" + echo(rid) + "\">桌面权限</a></li>\r\n");
	ViewBuilder.Append("                        <li class=\"normal\"><a href=\"rolesorts.aspx?rid=" + echo(rid) + "\">栏目权限</a> </li>\r\n");
	ViewBuilder.Append("                        <li class=\"normal\"><a href=\"rolepermission.aspx?rid=" + echo(rid) + "\">操作权限</a></li>\r\n");
	ViewBuilder.Append("                    </ul>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div id=\"con_one_1\">\r\n");
	ViewBuilder.Append("            <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"newstitle\" bgcolor=\"#ffffff\">菜单权限设置，角色：【" + echo(roleinfo.name) + "】</td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("            <table style=\"width: 100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td colspan=\"2\">\r\n");
	ViewBuilder.Append("                         <table cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" border=\"0\">\r\n");
	ViewBuilder.Append("                         <tr>\r\n");
	ViewBuilder.Append("                            <td>\r\n");
	ViewBuilder.Append("                             <div>\r\n");
	ViewBuilder.Append("		                       <ul id=\"tree\" class=\"ztree\"></ul>\r\n");
	ViewBuilder.Append("	                        </div>\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                         </tr>\r\n");
	ViewBuilder.Append("                         </table>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            <input type=\"button\" name=\"btnsave\" value=\"保存\" id=\"btnsave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
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
