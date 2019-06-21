<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.usermanage" %>
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
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>系统用户管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btn_delete\").click(function () {\r\n");
	ViewBuilder.Append("            var ids = getIds();\r\n");
	ViewBuilder.Append("            if (ids.length > 0) {\r\n");
	ViewBuilder.Append("                if (confirm(\"您确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                alert(\"对不起，您没有选择任何用户。\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btn_batch\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"batch\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnexport\").click(function () {\r\n");
	ViewBuilder.Append("          $(\"#action\").val(\"export\");\r\n");
	ViewBuilder.Append("          $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        function getIds() {\r\n");
	ViewBuilder.Append("            var ids = new Array();\r\n");
	ViewBuilder.Append("            $('input[name=\"chkid\"]').each(function () {\r\n");
	ViewBuilder.Append("                if ($(this).attr('checked'))\r\n");
	ViewBuilder.Append("                    ids.push($(this).val());\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            return ids;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        PageNav(\"系统用户管理,user/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"btn_delete\" href=\"javascript:void();\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/user.gif) 2px 6px no-repeat\"><a id=\"btn_batch\" href=\"javascript:void();\">批量修改</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/search.png) 2px 6px no-repeat\"><a href=\"usersearch.aspx"+(query!=""?echo("?"+query):echo(""))+"\">搜索用户</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/add.gif) 2px 6px no-repeat\"><a href=\"useradd.aspx?s_roleid=" + echo(s_roleid) + "&s_departid=" + echo(s_departid) + "&s_depts=" + echo(s_depts) + "&s_gradeid=" + echo(s_gradeid) + "\">新建用户</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/users.gif) 2px 6px no-repeat\"><a href=\"usercreate.aspx?s_roleid=" + echo(s_roleid) + "&s_departid=" + echo(s_departid) + "&s_depts=" + echo(s_depts) + "&s_gradeid=" + echo(s_gradeid) + "\">生成用户</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/xls.gif) 2px 6px no-repeat\"><a href=\"userimport.aspx\">导入用户</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/xls.gif) 2px 6px no-repeat\"><a id=\"btnexport\" href=\"#\">导出用户</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/adddesk.gif) 2px 6px no-repeat\"><a href=\"avatarimport.aspx\">导入照片</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/copy.gif) 2px 6px no-repeat\"><a href=\"extend.aspx\">扩展字段</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pageurl) + "\">刷新</a></li>\r\n");

	if (backurl!="")
	{
	ViewBuilder.Append("<li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/back.png) 2px 6px no-repeat\"><a href=\"" + echo(backurl) + "\">返回</a></li>\r\n");
	}//end if
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>系统用户管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	    <td>登录名</td>\r\n");
	ViewBuilder.Append("              <td>姓名</td>\r\n");
	ViewBuilder.Append("              <td>所属角色</td>\r\n");
	ViewBuilder.Append("              <td>所属部门</td>\r\n");
	ViewBuilder.Append("              <td>用户岗位</td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("<td>用户类型</td>\r\n");
	}//end if
	ViewBuilder.Append("              <td>手机号码</td>\r\n");
	ViewBuilder.Append("              <td>电子邮箱</td>\r\n");
	ViewBuilder.Append("        	    <td width=\"60\">登录方式</td>\r\n");
	ViewBuilder.Append("              <td width=\"50\">操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(UserInfo item in userlist)
	{
	loop__id++;
	ViewBuilder.Append("<tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");

	if (item.state==1)
	{
	ViewBuilder.Append("              <td align=\"center\"><a style=\"color: #1317fc\" href=\"useradd.aspx?id=" + echo(item.id) + "&backurl="+FPUtils.UrlEncode(pageurl)+"\">" + echo(item.username,keyword,"<span style=\"background-color:#ffd800;\">"+keyword+"</span>") + "</a></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\"><a style=\"color: #1317fc\" href=\"useradd.aspx?id=" + echo(item.id) + "&backurl="+FPUtils.UrlEncode(pageurl)+"\">" + echo(item.realname,keyword,"<span style=\"background-color:#ffd800;\">"+keyword+"</span>") + "</a></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.rolename) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.departname) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.gradename) + "</td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("<td align=\"center\">" + echo(item.usertype) + "</td>\r\n");
	}//end if
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.mobile) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.email) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");
	ViewBuilder.Append("              <span show-style=\"item.issso==1,'color:Blue'\">"+(item.issso==1?echo("单点"):echo("本地"))+"</span>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <td align=\"center\"><a style=\"color: #ff0000\" href=\"useradd.aspx?id=" + echo(item.id) + "&backurl="+FPUtils.UrlEncode(pageurl)+"\">" + echo(item.username,keyword,"<span style=\"background-color:#ffd800;\">"+keyword+"</span>") + "</a></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\"><a style=\"color: #ff0000\" href=\"useradd.aspx?id=" + echo(item.id) + "&backurl="+FPUtils.UrlEncode(pageurl)+"\">" + echo(item.realname,keyword,"<span style=\"background-color:#ffd800;\">"+keyword+"</span>") + "</a></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\"><span style=\"color:#ff0000\">" + echo(item.rolename) + "</span></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\"><span style=\"color:#ff0000\">" + echo(item.departname) + "</span></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\"><span style=\"color:#ff0000\">" + echo(item.gradename) + "</span></td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("<td align=\"center\"><span style=\"color:#ff0000\">" + echo(item.usertype) + "</span></td>\r\n");
	}//end if
	ViewBuilder.Append("              <td align=\"center\"><span style=\"color:#ff0000\">" + echo(item.mobile) + "</span></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\"><span style=\"color:#ff0000\">" + echo(item.email) + "</span></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\"><span style=\"color:#ff0000\">"+(item.issso==1?echo("单点"):echo("本地"))+"</span></td>\r\n");
	}//end if
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"useradd.aspx?id=" + echo(item.id) + "&backurl="+FPUtils.UrlEncode(pageurl)+"\">编辑</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + echo(pager.total) + "个用户，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，" + echo(pager.pagesize) + "个每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + echo(pager.pagenum) + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
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
