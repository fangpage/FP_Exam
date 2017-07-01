<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.usersearch" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>系统用户搜索</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            PageBack(\"usermanage.aspx?" + echo(query) + "\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btn_search\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"系统用户管理,user/usermanage.aspx|用户搜索,user/usersearch.aspx\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"get\" action=\"usermanage.aspx\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">用户搜索</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("            <td class=\"tdbg\">\r\n");
	ViewBuilder.Append("             <table cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" border=\"0\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"td_class\">所在角色： </td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");
	ViewBuilder.Append("                      <select id=\"s_roleid\" name=\"s_roleid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                        <option value=\"0\">--选择角色--</option>\r\n");

	loop__id=0;
	foreach(RoleInfo role in rolelist)
	{
	loop__id++;

	if (role.id!=3)
	{
	ViewBuilder.Append("                            <option value=\"" + echo(role.id) + "\" \r\n");

	if (role.id==s_roleid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(role.name) + "</option>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                      </select>\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"td_class\">所在部门： </td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");
	string tree = "├";
	ViewBuilder.Append("                      <select id=\"s_departid\" name=\"s_departid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                        <option value=\"0\">--选择部门--</option>\r\n");

	loop__id=0;
	foreach(Department item in deparlist)
	{
	loop__id++;
	ViewBuilder.Append("                        <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==s_departid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">├" + echo(item.name) + "</option>\r\n");
	ViewBuilder.Append("                        " + GetChildDepartment(item.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("                      </select>\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"td_class\">用户级别： </td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");
	ViewBuilder.Append("                      <select id=\"s_gradeid\" name=\"s_gradeid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                        <option value=\"0\">--选择用户等级--</option>\r\n");

	loop__id=0;
	foreach(UserGrade itme in usergradelist)
	{
	loop__id++;
	ViewBuilder.Append("                        <option value=\"" + echo(itme.id) + "\" \r\n");

	if (itme.id==s_gradeid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(itme.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                      </select>\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\">用户类型： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("                    <select id=\"s_types\" name=\"s_types\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                    <option value=\"\">--选择" + echo(types.name) + "--</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(types2.id) + "\" \r\n");

	if (ischecked(types2.id,s_types))
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(types2.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                    </select>\r\n");
	}//end loop
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	}//end if
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\">搜索关键词： </td>\r\n");
	ViewBuilder.Append("                    <td>\r\n");
	ViewBuilder.Append("                        <input style=\"width: 200px\" id=\"keyword\" name=\"keyword\" value=\"" + echo(keyword) + "\">\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\">搜索字段： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input id=\"s_username\" name=\"s_username\" type=\"checkbox\" \r\n");

	if (s_username==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">用户名\r\n");
	ViewBuilder.Append("                    <input id=\"s_realname\" name=\"s_realname\" type=\"checkbox\" \r\n");

	if (s_realname==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">真实姓名\r\n");
	ViewBuilder.Append("                    <input id=\"s_mobile\" name=\"s_mobile\" type=\"checkbox\" \r\n");

	if (s_mobile==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">手机号码\r\n");
	ViewBuilder.Append("                    <input id=\"s_email\" name=\"s_email\" type=\"checkbox\" \r\n");

	if (s_email==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">电子邮箱\r\n");
	ViewBuilder.Append("                    <input id=\"s_idcard\" name=\"s_idcard\" type=\"checkbox\" \r\n");

	if (s_idcard==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">身份证号\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"td_class\">登录类型： </td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");
	ViewBuilder.Append("                      <input id=\"s_sso0\" name=\"s_sso\" value=\"0\" \r\n");

	if (s_sso==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">全部\r\n");
	ViewBuilder.Append("                      <input id=\"s_sso1\" name=\"s_sso\" value=\"1\" \r\n");

	if (s_sso==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">本地\r\n");
	ViewBuilder.Append("                      <input id=\"s_sso2\" name=\"s_sso\" value=\"2\" \r\n");

	if (s_sso==2)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">单点\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"td_class\">用户状态： </td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");
	ViewBuilder.Append("                      <input id=\"s_state0\" name=\"s_state\" value=\"0\" \r\n");

	if (s_state==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">全部\r\n");
	ViewBuilder.Append("                      <input id=\"s_state1\" name=\"s_state\" value=\"1\" \r\n");

	if (s_state==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">启用\r\n");
	ViewBuilder.Append("                      <input id=\"s_state2\" name=\"s_state\" value=\"2\" \r\n");

	if (s_state==2)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">禁用\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                <td height=\"25\">\r\n");
	ViewBuilder.Append("                    <input type=\"button\" name=\"btn_search\" value=\"搜索\" id=\"btn_search\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                    <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("              </table>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("          </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
