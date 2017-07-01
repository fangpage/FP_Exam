<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.userbatch" %>
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
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>批量更改用户信息</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "plugins/dateselector/dateselector.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "plugins/jsaddress/jsaddress.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"input[name=btncancle]\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"" + echo(backurl) + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $.initProv(\"#province\", \"#city\", \"\", \"\");\r\n");
	ViewBuilder.Append("        PageNav(\"系统用户管理,user/usermanage.aspx|批量更改用户信息,user/" + echo(pageurl) + "\")\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">批量更改用户信息</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户角色： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"roleid\" name=\"roleid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">--选择用户角色--</option>\r\n");

	loop__id=0;
	foreach(RoleInfo role in rolelist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(role.id) + "\">" + echo(role.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">留空不更改</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">所属部门： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	string tree = "├";
	ViewBuilder.Append("              <select id=\"departid\" name=\"departid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">--选择用户部门--</option>\r\n");

	loop__id=0;
	foreach(Department item in departlist)
	{
	loop__id++;
	ViewBuilder.Append("                <option value=\"" + echo(item.id) + "\">├" + echo(item.name) + "</option>\r\n");
	ViewBuilder.Append("                " + GetChildDepartment(item.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">留空不更改</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户级别： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"gradeid\" name=\"gradeid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                <option value=\"0\">--选择用户等级--</option>\r\n");

	loop__id=0;
	foreach(UserGrade itme in usergradelist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(itme.id) + "\">" + echo(itme.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">留空不更改</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td class=\"td_class\">用户类型： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("            <select id=\"types\" name=\"types\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("            <option value=\"\">--" + echo(types.name) + "--</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("            <option value=\"" + echo(types2.id) + "\">" + echo(types2.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("            </select>\r\n");
	}//end loop
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end if
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">教育程度： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"education\" name=\"education\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("              <option value=\"\">--选择教育程度--</option>\r\n");
	ViewBuilder.Append("              <option value=\"小学\">小学</option>\r\n");
	ViewBuilder.Append("              <option value=\"初中\">初中</option>\r\n");
	ViewBuilder.Append("              <option value=\"高中\">高中</option>\r\n");
	ViewBuilder.Append("              <option value=\"大学专科\">大学专科</option>\r\n");
	ViewBuilder.Append("              <option value=\"大学本科\">大学本科</option>\r\n");
	ViewBuilder.Append("              <option value=\"硕士\">硕士</option>\r\n");
	ViewBuilder.Append("              <option value=\"博士\">博士</option>\r\n");
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">留空不更改</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">所在地区： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"province\" name=\"province\"></select>\r\n");
	ViewBuilder.Append("              <select id=\"city\" name=\"city\"></select>\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">留空不更改</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">登录密码： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"text\" style=\"width: 200px\" id=\"password1\" name=\"password1\">\r\n");
	ViewBuilder.Append("              <span style=\"color:Red\">留空不更改密码</span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">实名验证： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input id=\"isreal1\" name=\"isreal\" value=\"1\" type=\"radio\">实名已验证\r\n");
	ViewBuilder.Append("              <input id=\"isreal0\" name=\"isreal\" value=\"0\" type=\"radio\">实名未验证\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">手机验证： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input id=\"ismobile1\" name=\"ismobile\" value=\"1\" type=\"radio\">手机已验证\r\n");
	ViewBuilder.Append("              <input id=\"ismobile0\" name=\"ismobile\" value=\"0\" type=\"radio\">手机未验证\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">邮箱验证： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input id=\"isemail1\" name=\"isemail\" value=\"1\" type=\"radio\">邮箱已验证\r\n");
	ViewBuilder.Append("              <input id=\"isemail0\" name=\"isemail\" value=\"0\" type=\"radio\">邮箱未验证\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">用户性别： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"sex0\" name=\"sex\" value=\"0\">女\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"sex1\" name=\"sex\" value=\"1\">男\r\n");
	ViewBuilder.Append("              <input type=\"radio\" id=\"sex2\" name=\"sex\" value=\"-1\">未知\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">经验值： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"exp\" name=\"exp\" value=\"\">\r\n");
	ViewBuilder.Append("              <input id=\"isgrade\" name=\"isgrade\" value=\"1\" type=\"checkbox\">保存根据经验值更新用户等级，留空或为0不更改\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <input id=\"btnsubmit1\" name=\"btnsubmit\" type=\"submit\" value=\"保存\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btnreset\" name=\"btnreset\" type=\"reset\" value=\"重置\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle1\" name=\"btncancle\" type=\"button\" value=\"返回\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
