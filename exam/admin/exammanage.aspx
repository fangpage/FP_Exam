<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.exammanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>考试管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitsum\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要重新统计所选的考试吗？统计操作需要一段时间，在此期间请不要做其他的操作。\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"sum\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "\");\r\n");
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
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/create.gif) 2px 6px no-repeat\"><a href=\"examadd.aspx?sortid=" + echo(sortid) + "&typeid=" + echo(typeid) + "\">添加</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/tag.gif) 2px 6px no-repeat\"><a id=\"submitsum\" href=\"#\">重新统计</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/report.png) 2px 6px no-repeat\"><a id=\"btnsearch\" href=\"examsearch.aspx?channelid=" + echo(channelid) + "&sortid=" + echo(sortid) + "&typeid=" + echo(typeid) + "\">搜索</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"exammanage.aspx?channelid=" + echo(channelid) + "&sortid=" + echo(sortid) + "&typeid=" + echo(typeid) + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\">\r\n");
	ViewBuilder.Append("              <strong>\r\n");
	ViewBuilder.Append("              " + echo(sortinfo.name) + "\r\n");

	if (typeid>0)
	{
	ViewBuilder.Append(" >" + echo(typeinfo.name) + "\r\n");
	}//end if
	ViewBuilder.Append("              ：共有" + echo(pager.total) + "场考试</strong>\r\n");
	ViewBuilder.Append("              </li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	  <td>考试名称</td>\r\n");
	ViewBuilder.Append("        	  <td>所属科目</td>\r\n");
	ViewBuilder.Append("              <td>答题时间</td>\r\n");
	ViewBuilder.Append("              <td>考试期限</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">考试人数</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">总平均分</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">状态</td>\r\n");
	ViewBuilder.Append("              <td width=\"220\">考试操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(ExamInfo item in examlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid_" + echo(item.id) + "\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">\r\n");
	ViewBuilder.Append("              <a href=\"examadd.aspx?id=" + echo(item.id) + "\">" + echo(item.name) + "</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.sortname) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");
	ViewBuilder.Append("                  " + echo(item.examtime) + "分钟\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.islimit==1)
	{
	ViewBuilder.Append("                  " + echo(item.starttime,"yyyy-MM-dd HH:mm") + "至" + echo(item.endtime,"yyyy-MM-dd HH:mm") + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                  无限制\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.exams) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.avgscore) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/admin/images/state1.gif\" alt=\"已开启\" title=\"已开启\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/admin/images/state0.gif\" alt=\"已关闭\" title=\"已关闭\">\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"examadd.aspx?id=" + echo(item.id) + "\">考试设置</a>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"examtopicmanage.aspx?examid=" + echo(item.id) + "\">试卷设置</a>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"exammonitor.aspx?examid=" + echo(item.id) + "\">考试监控</a>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"examresultmanage.aspx?examid=" + echo(item.id) + "\">成绩管理</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + echo(pager.total) + "条记录，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，" + echo(pager.pagesize) + "条每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + echo(pager.pagenum) + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
