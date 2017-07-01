<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.siteadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>添加编辑站点</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        KindEditor.create('#notes', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            minWidth: \"450px\",\r\n");
	ViewBuilder.Append("            pasteType: 1,\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("					'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"input[name=btncancle]\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"sitemanage.aspx\";\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"系统站点管理," + echo(rawpath) + "sitemanage.aspx|添加编辑站点," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    function Save(tab)\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        $(\"#tab\").val(tab);\r\n");
	ViewBuilder.Append("        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"tab\" id=\"tab\" value=\"\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("     <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul>\r\n");

	if (tab==0)
	{
	ViewBuilder.Append("             <li id=\"one1\" onclick=\"setTab('one',1,4)\" class=\"active\"><a href=\"#\">站点基础配置</a> </li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li id=\"one1\" onclick=\"setTab('one',1,4)\" class=\"normal\"><a href=\"#\">站点基础配置</a> </li>\r\n");
	}//end if

	if (tab==1)
	{
	ViewBuilder.Append("              <li id=\"one2\" onclick=\"setTab('one',2,4)\" class=\"active\"><a href=\"#\">站点SEO配置</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <li id=\"one2\" onclick=\"setTab('one',2,4)\" class=\"normal\"><a href=\"#\">站点SEO配置</a></li>\r\n");
	}//end if

	if (tab==2)
	{
	ViewBuilder.Append("            <li id=\"one3\" onclick=\"setTab('one',3,4)\" class=\"active\"><a href=\"#\">站点安全配置</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <li id=\"one3\" onclick=\"setTab('one',3,4)\" class=\"normal\"><a href=\"#\">站点安全配置</a></li>\r\n");
	}//end if

	if (tab==3)
	{
	ViewBuilder.Append("            <li id=\"one4\" onclick=\"setTab('one',4,4)\" class=\"active\"><a href=\"#\">站点访问权限</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <li id=\"one4\" onclick=\"setTab('one',4,4)\" class=\"normal\"><a href=\"#\">站点访问权限</a></li>\r\n");
	}//end if
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("     <div id=\"con_one_1\" \r\n");

	if (tab==0)
	{
	ViewBuilder.Append(" style=\"display:block\" \r\n");
	}
	else
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑站点</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点名称： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"name\" name=\"name\" type=\"text\" value=\"" + echo(siteinfo.name) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>  \r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点目录： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"dirpath\" name=\"dirpath\" type=\"text\" value=\"" + echo(siteinfo.sitepath) + "\" style=\"height:21px;width:400px;\">&nbsp;以英文、数字和下划线组成，首字不能为数字</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点作者： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"author\" name=\"author\" type=\"text\" value=\"" + echo(siteinfo.author) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点版本： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input name=\"version\" type=\"text\" value=\"V" + echo(siteinfo.version) + "\" id=\"version\" style=\"width:400px;\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点图标： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"icon\" name=\"icon\" type=\"text\" value=\"" + echo(siteinfo.icon) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 入口地址： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"indexurl\" name=\"indexurl\" type=\"text\" value=\"" + echo(siteinfo.indexurl) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 管理地址： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"adminurl\" name=\"adminurl\" type=\"text\" value=\"" + echo(siteinfo.adminurl) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点标识： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"markup\" name=\"markup\" type=\"text\" value=\"" + echo(siteinfo.markup) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 控制器类： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"dll\" name=\"dll\" type=\"text\" value=\"" + echo(siteinfo.dll) + "\" style=\"height:21px;width:400px;\">&nbsp;运行格式：【控制器命名空间,所在类库】\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 文件路径： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input id=\"urltype0\" name=\"urltype\" type=\"radio\" \r\n");

	if (siteinfo.urltype==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">原始\r\n");
	ViewBuilder.Append("            <input id=\"urltype1\" name=\"urltype\" type=\"radio\" \r\n");

	if (siteinfo.urltype==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">相对\r\n");
	ViewBuilder.Append("            <input id=\"urltype2\" name=\"urltype\" type=\"radio\" \r\n");

	if (siteinfo.urltype==2)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"2\">绝对\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input type=\"button\" onclick=\"Save(0)\" name=\"btnSave\" value=\"保存\" id=\"btnSave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle1\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("     <div id=\"con_one_2\" \r\n");

	if (tab==1)
	{
	ViewBuilder.Append(" style=\"display:block\" \r\n");
	}
	else
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">站点SEO信息</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点显示标题： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"sitetitle\" name=\"sitetitle\" type=\"text\" value=\"" + echo(siteinfo.sitetitle) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点SEO关键词： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"keywords\" name=\"keywords\" type=\"text\" value=\"" + echo(siteinfo.keywords) + "\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点SEO描述： </td>\r\n");
	ViewBuilder.Append("            <td><textarea name=\"description\" rows=\"5\" cols=\"30\" id=\"description\" style=\"height:80px;width:400px;\">" + echo(siteinfo.description) + "</textarea>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 其他头部信息： </td>\r\n");
	ViewBuilder.Append("            <td><textarea name=\"otherhead\" rows=\"5\" cols=\"30\" id=\"otherhead\" style=\"height:80px;width:400px;\">" + echo(siteinfo.otherhead) + "</textarea>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点版权信息： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"copyright\" name=\"copyright\" type=\"text\" value=\"" + echo(siteinfo.copyright) + "\" style=\"height:21px;width:400px;\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点官方主页： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"homepage\" name=\"homepage\" type=\"text\" value=\"" + echo(siteinfo.homepage) + "\" style=\"height:21px;width:400px;\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 站点联系方式： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <textarea id=\"notes\" name=\"notes\" style=\"width:500px; height:50px;\">" + echo(siteinfo.notes) + "</textarea>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input type=\"button\" onclick=\"Save(1)\" name=\"btnSave\" value=\"保存\" id=\"btnSave1\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle2\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("     <div id=\"con_one_3\" \r\n");

	if (tab==2)
	{
	ViewBuilder.Append(" style=\"display:block\" \r\n");
	}
	else
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">站点安全配置</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 访问IP白名单： </td>\r\n");
	ViewBuilder.Append("            <td><textarea name=\"ipaccess\" id=\"ipaccess\" rows=\"5\" cols=\"30\" style=\"height:80px;width:400px;\">" + echo(siteinfo.ipaccess) + "</textarea>&nbsp;每行输入一个IP，可以使用通配符*</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 访问IP黑名单：</td>\r\n");
	ViewBuilder.Append("            <td><textarea name=\"ipdenyaccess\" id=\"ipdenyaccess\" rows=\"5\" cols=\"30\" style=\"height:80px;width:400px;\">" + echo(siteinfo.ipdenyaccess) + "</textarea>&nbsp;每行输入一个IP，可以使用通配符*</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 显示关闭原因： </td>\r\n");
	ViewBuilder.Append("            <td><textarea name=\"closedreason\" id=\"closedreason\" rows=\"5\" cols=\"30\" style=\"height:80px;width:400px;\">" + echo(siteinfo.closedreason) + "</textarea></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 是否关闭站点： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input id=\"closed0\" name=\"closed\" type=\"radio\" \r\n");

	if (siteinfo.closed==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">开启\r\n");
	ViewBuilder.Append("            <input id=\"closed1\" name=\"closed\" type=\"radio\" \r\n");

	if (siteinfo.closed==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">关闭\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input type=\"button\" onclick=\"Save(2)\" name=\"btnSave\" value=\"保存\" id=\"btnSave2\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle3\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("     <div id=\"con_one_4\" \r\n");

	if (tab==3)
	{
	ViewBuilder.Append(" style=\"display:block\" \r\n");
	}
	else
	{
	ViewBuilder.Append(" style=\"display:none\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">站点访问角色（勾选以下角色，则该站点只允许该角色下的用户进行访问）</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td colspan=\"2\">\r\n");
	ViewBuilder.Append("                    <table cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" border=\"0\">\r\n");
	ViewBuilder.Append("                    <tr>\r\n");

	loop__id=0;
	foreach(RoleInfo item in rolelist)
	{
	loop__id++;

	if (ischecked(item.id,siteinfo.roles))
	{
	ViewBuilder.Append("                        <td><input id=\"roles\" name=\"roles\" value=\"" + echo(item.id) + "\" type=\"checkbox\" checked=\"checked\">" + echo(item.name) + "</td>\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <td><input id=\"roles\" name=\"roles\" value=\"" + echo(item.id) + "\" type=\"checkbox\">" + echo(item.name) + "</td>\r\n");
	}//end if

	if (loop__id%5==0)
	{
	ViewBuilder.Append("                        </tr>\r\n");
	ViewBuilder.Append("                        <tr>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input type=\"button\" onclick=\"Save(3)\" name=\"btnSave\" value=\"保存\" id=\"btnSave3\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle4\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
