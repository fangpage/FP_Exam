<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.index" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html lang=\"zh-CN\" class=\"default-layout\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagetitle) + " V" + echo(version) + ""+(isfree==1?echo(" - Powered by FangPage.Com"):echo(""))+"</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/index.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#learn\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"course_list.aspx?channelid=3\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#instant\").click(function () {\r\n");
	ViewBuilder.Append("            window.open(\"testview_instant.aspx\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#paper\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href=\"examlist-2.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#myexam\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"examlist-4.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#examsign\").click(function () {\r\n");
	ViewBuilder.Append("          window.open(\"examsign_list.aspx\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
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
	ViewBuilder.Append("<a href=\"" + echo(adminpath) + "index.aspx\" target=\"_blank\" class=\"user-nav user-menu-trigger\"><span class=\"sprite sprite-admin i-20\"></span>系统后台</a>\r\n");
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
	ViewBuilder.Append("                <li class=\""+(pagename=="index.aspx"?echo(" "+"active"):echo(""))+"\"><a href=\"index.aspx\">首页</a></li>\r\n");
	ViewBuilder.Append("                <li class=\""+(pagename=="examreport.aspx"?echo("active"):echo(""))+"\"><a href=\"examreport.aspx\">能力评估报告</a></li>\r\n");
	ViewBuilder.Append("                <li class=\""+(pagename=="examhistory.aspx"||pagename=="incorrect.aspx"||pagename=="examnote.aspx"||pagename=="favorite.aspx"||pagename=="testhistory.aspx"?echo("active"):echo(""))+"\"><a href=\"examhistory.aspx\">考试历史</a></li>\r\n");

	if (pagename=="course_list.aspx"||pagename=="course_view.aspx"||pagename=="course_video.aspx")
	{
	ViewBuilder.Append("<li class=\"active\"><a href=\"course_list.aspx?channelid=3\">在线课程</a></li>\r\n");
	}//end if
	else if (pagename=="examlist-2.aspx")
	{
	ViewBuilder.Append("<li class=\"active\"><a href=\"examlist-2.aspx\">模拟考试</a></li>\r\n");
	}//end if
	else if (pagename=="examlist-4.aspx")
	{
	ViewBuilder.Append("<li class=\"active\"><a href=\"examlist-4.aspx\">正式考试</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-l\"></span>\r\n");
	ViewBuilder.Append("    <div class=\"header-shadow\"></div>\r\n");
	ViewBuilder.Append("    <span class=\"repeat-x header-shadow-repeat header-shadow-repeat-r\"></span>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("        <div class=\"container body-wrap main\">\r\n");
	ViewBuilder.Append("            <div class=\"home-wrap\">\r\n");
	ViewBuilder.Append("                <div class=\"section-wrap false false\">\r\n");
	ViewBuilder.Append("                    <div class=\"section\">\r\n");
	ViewBuilder.Append("                        <span class=\"sprite pull-left sprite-section-smart-15\"></span>\r\n");
	ViewBuilder.Append("                        <div class=\"overflow\">\r\n");
	ViewBuilder.Append("                            <h2><span class=\"fir fir-title\"><span class=\"fir-text\">在线课程</span></span></h2>\r\n");
	ViewBuilder.Append("                            <div class=\"content\">\r\n");
	ViewBuilder.Append("                                <p>提供在线课程学习，学习资料下载等。</p>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"button-row\">\r\n");
	ViewBuilder.Append("                                <span id=\"learn\" class=\"btn btn-primary create-exercise\">\r\n");
	ViewBuilder.Append("                                    <div class=\"btn-inner\">在线课程</div>\r\n");
	ViewBuilder.Append("                                </span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"section-wrap false section-right\">\r\n");
	ViewBuilder.Append("                    <div class=\"section\">\r\n");
	ViewBuilder.Append("                        <span class=\"sprite pull-left sprite-section-csk\"></span>\r\n");
	ViewBuilder.Append("                        <div class=\"overflow\">\r\n");
	ViewBuilder.Append("                            <h2><span class=\"fir fir-title\"><span class=\"fir-text\">自由练习</span></span></h2>\r\n");
	ViewBuilder.Append("                            <div class=\"content\">\r\n");
	ViewBuilder.Append("                                <p>覆盖所有题库，自主选择专项或具体考点练习，提升您的综合能力</p>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"button-row\">\r\n");
	ViewBuilder.Append("                                <span id=\"instant\" class=\"btn btn-primary select-csk\">\r\n");
	ViewBuilder.Append("                                    <span class=\"btn-inner\">自由练习</span>\r\n");
	ViewBuilder.Append("                                </span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"section-wrap false false\">\r\n");
	ViewBuilder.Append("                    <div class=\"section\">\r\n");
	ViewBuilder.Append("                        <span class=\"sprite pull-left sprite-section-smart-paper\"></span>\r\n");
	ViewBuilder.Append("                        <div class=\"overflow\">\r\n");
	ViewBuilder.Append("                            <h2><span class=\"fir fir-title\"><span class=\"fir-text\">模拟考试</span></span></h2>\r\n");
	ViewBuilder.Append("                            <div class=\"content\">\r\n");
	ViewBuilder.Append("                                <p>系统为你提供历年考试的真题试卷进行模拟考试</p>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"button-row\">\r\n");
	ViewBuilder.Append("                                <span id=\"paper\" class=\"btn btn-primary link-button gaq\">\r\n");
	ViewBuilder.Append("                                    <div class=\"btn-inner\">模拟考试</div>\r\n");
	ViewBuilder.Append("                                </span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"section-wrap false section-right\">\r\n");
	ViewBuilder.Append("                    <div class=\"section\">\r\n");
	ViewBuilder.Append("                        <span class=\"sprite pull-left sprite-section-continue\"></span>\r\n");
	ViewBuilder.Append("                        <div class=\"overflow\">\r\n");
	ViewBuilder.Append("                            <h2><span class=\"fir fir-title\"><span class=\"fir-text\">正式考试</span></span></h2>\r\n");
	ViewBuilder.Append("                            <div class=\"content\">\r\n");
	ViewBuilder.Append("                                <p>属于您自己的正式考试</p>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"button-row\">\r\n");

	if (examconfig.signers==1)
	{
	ViewBuilder.Append("<span id=\"examsign\" class=\"btn btn-primary link-button gaq\">\r\n");
	ViewBuilder.Append("                                    <div class=\"btn-inner\">考试报名</div>\r\n");
	ViewBuilder.Append("                                </span>\r\n");
	}//end if
	ViewBuilder.Append("                                <span id=\"myexam\" class=\"btn btn-primary link-button gaq\">\r\n");
	ViewBuilder.Append("                                    <div class=\"btn-inner\">正式考试</div>\r\n");
	ViewBuilder.Append("                                </span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"hide\"></div>\r\n");
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
	ViewBuilder.Append("<p class=\"text-center\">" + echo(siteinfo.notes) + "</p>\r\n");
	}//end if
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
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
