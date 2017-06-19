<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examlist" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html lang=\"zh-CN\" class=\"default-layout\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>正式考试|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/report.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "pager/pager.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    function ExamContinu(id) {\r\n");
	ViewBuilder.Append("        window.open(\"examview.aspx?examid=\" + id);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]>\r\n");
	ViewBuilder.Append("  <style type=\"text/css\">\r\n");
	ViewBuilder.Append("    .gradient {\r\n");
	ViewBuilder.Append("       filter: none;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("  </style>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<div class=\"wrap\">\r\n");
	ViewBuilder.Append("<div class=\"repeat-x default-t\">\r\n");
	ViewBuilder.Append("    <div class=\"header-left layout default-lt\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"header-right layout default-rt\"></div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"default-left repeat-y default-l\"></div>\r\n");
	ViewBuilder.Append("<div class=\"default-right repeat-y default-r\"></div>\r\n");
	ViewBuilder.Append("<div class=\"header\">\r\n");
	ViewBuilder.Append("    <div class=\"navbar-hd clearfix\">\r\n");
	ViewBuilder.Append("        <div class=\"pull-left nav-bar-links\" style=\"width:600px;\">\r\n");
	ViewBuilder.Append("            <a href=\"index.aspx\" class=\"course-link course-menu-trigger\" style=\"color:#ffffff;width:600px;\"><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/logo_top.png\" style=\"width:32px;height:32px;\"><strong>" + echo(sitetitle) + "，版本：V" + echo(version) + "</strong></a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"pull-right navbar-links\">\r\n");
	ViewBuilder.Append("            <a href=\"profile.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-profile i-20\"></span>" + echo(user.realname) + "</a>\r\n");
	ViewBuilder.Append("            <a href=\"userpwd.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-password i-20\"></span>修改密码</a>\r\n");

	if (isadmin)
	{
	ViewBuilder.Append("            <a href=\"" + echo(adminpath) + "index.aspx\" target=\"_blank\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-admin i-20\"></span>系统后台</a>\r\n");
	}//end if
	ViewBuilder.Append("            <a href=\"logout.aspx\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-logout i-20\"></span>退出系统</a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"navbar-bd\">\r\n");
	ViewBuilder.Append("        <div class=\"container\">\r\n");
	ViewBuilder.Append("            <div class=\"logo\" style=\"width:220px;\">\r\n");
	ViewBuilder.Append("               <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/logo.png\" height=\"32\" width=\"220\" alt=\"" + echo(siteinfo.name) + "\">\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <ul class=\"nav main-nav\">\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="index.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"index.aspx\">首页</a></li>\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="examreport.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"examreport.aspx\">能力评估报告</a></li>\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="examhistory.aspx"||pagename=="incorrect.aspx"||pagename=="examnote.aspx"||pagename=="favorite.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"examhistory.aspx\">考试历史</a></li>\r\n");

	if (pagename=="newslist.aspx"||pagename=="newsinfo.aspx")
	{
	ViewBuilder.Append("                <li class=\"active\"><a href=\"newslist.aspx?channelid=3\">在线课程</a></li>\r\n");
	}
	else if (pagename=="examlist-2.aspx")
	{
	ViewBuilder.Append("                <li class=\"active\"><a href=\"newslist.aspx?channelid=3\">模拟考试</a></li>\r\n");
	}
	else if (pagename=="examlist-4.aspx")
	{
	ViewBuilder.Append("                <li class=\"active\"><a href=\"newslist.aspx?channelid=3\">正式考试</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-l\"></span>\r\n");
	ViewBuilder.Append("    <div class=\"header-shadow\"></div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-r\"></span>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("  <div class=\"container body-wrap main\">\r\n");
	ViewBuilder.Append("    <div class=\"box-wrap history-wrap\">\r\n");
	ViewBuilder.Append("      <div class=\"box\">\r\n");
	ViewBuilder.Append("        <div class=\"box-hd\">\r\n");
	ViewBuilder.Append("          <ul class=\"nav nav-underline\">\r\n");
	ViewBuilder.Append("            <li \r\n");

	if (sortid==0)
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"examlist-4.aspx\">全部考试</a></li>\r\n");

	loop__id=0;
	foreach(SortInfo s_item in SortBll.GetChannelSortList(channelid))
	{
	loop__id++;
	ViewBuilder.Append("            <li \r\n");

	if (s_item.id==sortid)
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"" + echo(pagename) + "?sortid=" + echo(s_item.id) + "\">" + echo(s_item.name) + "</a></li>\r\n");
	}//end loop
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"box-bd\">\r\n");
	ViewBuilder.Append("          <div class=\"exercise-list-wrap list-wrap\">\r\n");
	ViewBuilder.Append("            <div class=\"list\">\r\n");
	ViewBuilder.Append("              <div class=\"list-bd\">\r\n");

	loop__id=0;
	foreach(ExamInfo item in _examlist)
	{
	loop__id++;
	ViewBuilder.Append("                <div class=\"exercise\">\r\n");
	ViewBuilder.Append("                  <div class=\"pull-right\">\r\n");
	ViewBuilder.Append("                      <span class=\"btn btn-normal open-exercise\"><span onclick=\"ExamContinu(" + echo(item.id) + ");\" class=\"btn-inner\">开始考试</span></span>\r\n");
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("                  <div class=\"name\"><a href=\"examview.aspx?examid=" + echo(item.id) + "\" target=\"_blank\">" + echo(item.name) + "</a></div>\r\n");
	ViewBuilder.Append("                  <div class=\"meta\">\r\n");

	if (item.islimit==1)
	{
	ViewBuilder.Append("                      <span class=\"muted\">考试时间：" + echo(item.starttime,"yyyy-MM-dd HH:mm") + "至" + echo(item.endtime,"yyyy-MM-dd HH:mm") + "，</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                      <span class=\"muted\">考试时间：无限制，</span>\r\n");
	}//end if
	ViewBuilder.Append("                      <span class=\"muted\">考试人数：" + echo(item.exams) + "人，平均分：" + echo(item.avgscore) + "分</span></div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	}//end loop
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("              <div class=\"list-ft\"></div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("<div>\r\n");
	ViewBuilder.Append("    <div style=\"float:left;display:inline-block;margin-right:8px;height:30px;line-height:30px;\">共有" + echo(pager.total) + "场考试</div>\r\n");
	ViewBuilder.Append("    <div class=\"fpager\">\r\n");
	ViewBuilder.Append("        <div class=\"fpager-pages\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-prev\"><a href=\"" + seturl("pageindex="+pager.prepage)+ "\" title=\"上一页\">«</a></li>\r\n");

	if (pager.startpage>2)
	{
	ViewBuilder.Append("            <li class=\"fpager-page active\"><a href=\"" + seturl("pageindex=1")+ "\">1</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	}//end if
	for (int i = pager.startpage; i <= pager.endpage; i++){

	if (i==pager.pageindex)
	{
	ViewBuilder.Append("            <li class=\"fpager-page active\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}//end if
	}//end for

	if (pager.endpage<pager.pagecount-2)
	{
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+pager.pagecount)+ "\">" + echo(pager.pagecount) + "</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            <li class=\"fpager-next\"><a href=\"" + seturl("pageindex="+pager.nextpage)+ "\" title=\"下一页\">»</a></li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("<div class=\"footer repeat-x default-b\">\r\n");
	ViewBuilder.Append("    <div class=\"footer-left layout default-lb\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"footer-right layout default-rb\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"container\">\r\n");
	ViewBuilder.Append("        <div class=\"links\">\r\n");
	ViewBuilder.Append("            <p class=\"text-center\">\r\n");
	ViewBuilder.Append("               Copyright &copy; " + echo(verdate) + " <a target=\"_blank\" href=\"" + echo(siteinfo.homepage) + "\">" + echo(siteinfo.copyright) + "</a>&nbsp;&nbsp;版权所有，版本：V" + echo(version) + "\r\n");
	ViewBuilder.Append("            </p>\r\n");

	if (siteinfo.notes!="")
	{
	ViewBuilder.Append("            <p class=\"text-center\">" + echo(siteinfo.notes) + "</p>\r\n");
	}//end if
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
