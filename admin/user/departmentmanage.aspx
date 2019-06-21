<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.departmentmanage" %>
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
	ViewBuilder.Append("<title>用户部门管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_reset\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"当前操作可能要运行一段时间，请在此期间不要进行其他的操作。\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"reset\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_batch\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"batch\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnsearch\").click(function () {\r\n");
	ViewBuilder.Append("          index = $.layer({\r\n");
	ViewBuilder.Append("            type: 1,\r\n");
	ViewBuilder.Append("            shade: [0],\r\n");
	ViewBuilder.Append("            fix: false,\r\n");
	ViewBuilder.Append("            title: '部门搜索',\r\n");
	ViewBuilder.Append("            maxmin: false,\r\n");
	ViewBuilder.Append("            page: { dom: '#showsearch' },\r\n");
	ViewBuilder.Append("            area: ['400px', '185px']\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("          layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("          $(\"#frmsearch\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"用户部门管理,user/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteDepertment(id) {\r\n");
	ViewBuilder.Append("        if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#id\").val(id);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"id\" id=\"id\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td><div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/user.gif) 2px 6px no-repeat\"><a id=\"btn_batch\" href=\"javascript:void();\">批量修改</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/add.gif) 2px 6px no-repeat\"><a href=\"departmentadd.aspx?departname=" + echo(departname) + "&layer=" + echo(layer) + "\">添加</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/run.png) 2px 6px no-repeat\"><a id=\"btn_reset\" title=\"重置用户部门信息\" href=\"#\">重置用户部门</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/search.png) 2px 6px no-repeat\"><a id=\"btnsearch\" href=\"#\">搜索</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"departmentmanage.aspx?action=refresh&departname=" + echo(departname) + "&layer=" + echo(layer) + "\">刷新</a> </li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>用户部门管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td> 部门名称 </td>\r\n");
	ViewBuilder.Append("              <td> 部门编号 </td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("<td> 部门类型 </td>\r\n");
	}//end if
	ViewBuilder.Append("              <td width=\"80\"> 添加子部门 </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\"> 编辑部门 </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\"> 部门排序 </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\"> 用户排序 </td>\r\n");
	ViewBuilder.Append("              <td width=\"80\"> 删除部门 </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	string tree = "├";

	loop__id=0;
	foreach(Department department in departmentlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td align=\"center\"><input id=\"chkid\" name=\"chkid\" value=\"" + echo(department.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\"><a href=\"usermanage.aspx?s_departid=" + echo(department.id) + "&backurl="+FPUtils.UrlEncode(pageurl)+"\">├\r\n");

	if (department.subcounts>0)
	{
	ViewBuilder.Append("<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/usergroups.gif\" width=\"16\" height=\"16\">\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<img src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/users.gif\" width=\"16\" height=\"16\">\r\n");
	}//end if
	ViewBuilder.Append("" + echo(department.name,departname,"<span style=\"background-color:#ffd800;\">"+departname+"</span>") + "</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td>" + echo(department.keyid) + "</td>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("<td>" + echo(department.depttype) + "</td>\r\n");
	}//end if
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"departmentadd.aspx?parentid=" + echo(department.id) + "&departname=" + echo(departname) + "\">添加子部门</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"departmentadd.aspx?id=" + echo(department.id) + "&departname=" + echo(departname) + "\">编辑部门</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"departmentdisplay.aspx?parentid=" + echo(department.parentid) + "&departname=" + echo(departname) + "\">部门排序</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"userdisplay.aspx?departid=" + echo(department.id) + "&departname=" + echo(departname) + "\">用户排序</a></td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" onclick=\"DeleteDepertment(" + echo(department.id) + ")\" href=\"#\">删除部门</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            " + echo(ShowChildDepartment(department.id,departids,layer,tree)) + "\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("       </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("<div id=\"showsearch\" style=\"display:none\">\r\n");
	ViewBuilder.Append("  <form id=\"frmsearch\" method=\"get\" name=\"frmsearch\" action=\"\">\r\n");
	ViewBuilder.Append("  <table style=\"width:400px;height:150px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("    <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td style=\"width:80px;text-align:right;\"> 部门名称： </td>\r\n");
	ViewBuilder.Append("        <td align=\"left\"><input name=\"departname\" type=\"text\" value=\"" + echo(departname) + "\" id=\"departname\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:80px;text-align:right;\"> 部门层级： </td>\r\n");
	ViewBuilder.Append("          <td align=\"left\"><input name=\"layer\" type=\"text\" value=\"" + echo(layer) + "\" id=\"layer\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td height=\"80\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("        <input type=\"button\" name=\"btnback\" value=\"取消\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("   </table>\r\n");
	ViewBuilder.Append("   </form>\r\n");
	ViewBuilder.Append("</div>\r\n");

	if (action=="reset")
	{

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('" + echo(msg) + "', 2, 1);\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	}//end if
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
