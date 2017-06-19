<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.favorite" %>
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
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html lang=\"zh-CN\" class=\"default-layout\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>我的收藏|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/report.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('.sprite').click(function () {   // 获取所谓的父行\r\n");
	ViewBuilder.Append("            $(this).toggleClass(\"sprite-selected\");  // 添加/删除图标\r\n");
	ViewBuilder.Append("            $('.child_' + $(this).attr('id')).toggle();  // 隐藏/显示所谓的子行\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".gradient {\r\n");
	ViewBuilder.Append("    filter: none;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <div class=\"wrap\">\r\n");
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
	ViewBuilder.Append("        <div class=\"container body-wrap main\">\r\n");
	ViewBuilder.Append("            <div class=\"box-wrap history-wrap\">\r\n");
	ViewBuilder.Append("                <div class=\"box\">\r\n");
	ViewBuilder.Append("                    <div class=\"box-hd\">\r\n");
	ViewBuilder.Append("                        <ul class=\"nav nav-underline\">\r\n");
	ViewBuilder.Append("                            <li><a href=\"examhistory.aspx\">考试记录</a></li>\r\n");
	ViewBuilder.Append("                            <li><a href=\"incorrect.aspx\">我的错题</a></li>\r\n");
	ViewBuilder.Append("                            <li><a href=\"examnote.aspx\">我的笔记</a></li>\r\n");
	ViewBuilder.Append("                            <li class=\"active\"><a href=\"favorite.aspx\">我的收藏</a></li>\r\n");
	ViewBuilder.Append("                        </ul>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    <div class=\"box-bd\">\r\n");
	ViewBuilder.Append("                        <div class=\"exercise-list-wrap list-wrap\">\r\n");
	ViewBuilder.Append("                            <div class=\"list\">\r\n");
	ViewBuilder.Append("                                <div class=\"list-hd\">\r\n");
	ViewBuilder.Append("                                    <div class=\"name\">共收藏" + echo(total) + "道题目</div>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                                <div class=\"list-bd\">\r\n");
	ViewBuilder.Append("                                    <table class=\"keypoint-table\">\r\n");
	ViewBuilder.Append("                                        <tbody>\r\n");

	loop__id=0;
	foreach(ExamLogInfo item in examloglist)
	{
	loop__id++;

	if (item.subcounts>0)
	{
	ViewBuilder.Append("                                            <tr class=\"keypoint keypoint-level-0\">\r\n");
	ViewBuilder.Append("                                                <td class=\"name-col\">\r\n");
	ViewBuilder.Append("                                                    <span class=\"text toggle-expand\">\r\n");
	ViewBuilder.Append("                                                        <span id=\"row_" + echo(item.sortid) + "\" class=\"sprite sprite-expand i-20\"></span>\r\n");

	if (item.favs>0)
	{
	ViewBuilder.Append("                                                        <a href=\"questionview.aspx?sortid=" + echo(item.sortid) + "&action=fav\" target=\"_blank\" class=\"btn btn-link link-button\">" + echo(item.sortname) + "(共" + echo(item.favs) + "道收藏)</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                                        " + echo(item.sortname) + "(共" + echo(item.favs) + "道收藏)\r\n");
	}//end if
	ViewBuilder.Append("                                                    </span>\r\n");
	ViewBuilder.Append("                                                </td>\r\n");
	ViewBuilder.Append("                                                <td class=\"button-col\">\r\n");

	if (item.favs>0)
	{
	ViewBuilder.Append("                                                    <a href=\"questionview.aspx?sortid=" + echo(item.sortid) + "&action=fav\" target=\"_blank\" class=\"btn btn-link link-button\"><span class=\"btn-inner\">查看题目</span></a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                                    <span class=\"btn-inner\">查看题目</span>\r\n");
	}//end if
	ViewBuilder.Append("                                                </td>\r\n");
	ViewBuilder.Append("                                            </tr>\r\n");
	ViewBuilder.Append("                                            " + GetChildSort(channelinfo.id,item.sortid,1).ToString() + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                                            <tr class=\"keypoint keypoint-level-0\">\r\n");
	ViewBuilder.Append("                                                <td class=\"name-col\">\r\n");
	ViewBuilder.Append("                                                    <span class=\"text toggle-expand\">\r\n");
	ViewBuilder.Append("                                                        <span class=\"sprite sprite-expand-holder i-20\"></span>\r\n");

	if (item.favs>0)
	{
	ViewBuilder.Append("                                                        <a href=\"questionview.aspx?sortid=" + echo(item.sortid) + "&action=fav\" target=\"_blank\" class=\"btn btn-link link-button\">" + echo(item.sortname) + "(共" + echo(item.favs) + "道收藏)</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                                        " + echo(item.sortname) + "(共" + echo(item.favs) + "道收藏)\r\n");
	}//end if
	ViewBuilder.Append("                                                    </span>\r\n");
	ViewBuilder.Append("                                                </td>\r\n");
	ViewBuilder.Append("                                                <td class=\"button-col\">\r\n");

	if (item.favs>0)
	{
	ViewBuilder.Append("                                                    <a href=\"questionview.aspx?sortid=" + echo(item.sortid) + "&action=fav\" target=\"_blank\" class=\"btn btn-link link-button\"><span class=\"btn-inner\">查看题目</span></a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                                    <span class=\"btn-inner\">查看题目</span>\r\n");
	}//end if
	ViewBuilder.Append("                                                </td>\r\n");
	ViewBuilder.Append("                                            </tr>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                                        </tbody>\r\n");
	ViewBuilder.Append("                                    </table>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                                <div class=\"list-ft\"></div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
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
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
