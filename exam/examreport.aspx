<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examreport" %>
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
	ViewBuilder.Append("<title>综合能力评估报告|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/report.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jqchart/jquery.jqChart.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<script lang=\"javascript\" type=\"text/javascript\" src=\"" + echo(plupath) + "jqchart/canvas.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "progressbar/jquery.progressbar.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]>\r\n");
	ViewBuilder.Append("  <style type=\"text/css\">\r\n");
	ViewBuilder.Append("    .gradient {\r\n");
	ViewBuilder.Append("       filter: none;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("  </style>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(document).ready(function () {\r\n");
	ViewBuilder.Append("        $('#jqchart').jqChart({\r\n");
	ViewBuilder.Append("            title: { text: '考试成绩趋势图' },\r\n");
	ViewBuilder.Append("            axes: [\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    location: 'left',//y轴位置，取值：left,right\r\n");
	ViewBuilder.Append("                    minimum: 0,//y轴刻度最小值\r\n");
	ViewBuilder.Append("                    maximum: 100,//y轴刻度最大值\r\n");
	ViewBuilder.Append("                    interval: 10//刻度间距\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            ],\r\n");
	ViewBuilder.Append("            series: [\r\n");
	ViewBuilder.Append("                //数据1开始\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    type: 'line',//图表类型，取值：column 柱形图，line 线形图\r\n");
	ViewBuilder.Append("                    title: '分数',//标题\r\n");
	ViewBuilder.Append("                    data: [" + echo(examresult) + "]//数据内容，格式[[x轴标题,数值1],[x轴标题,数值2],......]\r\n");
	ViewBuilder.Append("                },\r\n");
	ViewBuilder.Append("                //数据1结束		\r\n");
	ViewBuilder.Append("            ]\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\".progressBar\").progressBar({ showText: true, barImage: '" + echo(plupath) + "progressbar/images/progressbg_red.gif' });\r\n");
	ViewBuilder.Append("        $('.sprite').click(function () {   // 获取所谓的父行\r\n");
	ViewBuilder.Append("            $(this).toggleClass(\"sprite-selected\");  // 添加/删除图标\r\n");
	ViewBuilder.Append("            $('.child_' + $(this).attr('id')).toggle();  // 隐藏/显示所谓的子行\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
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
	ViewBuilder.Append("  <div class=\"container body-wrap main\">\r\n");
	ViewBuilder.Append("    <div class=\"report-wrap user-report-wrap row\">\r\n");
	ViewBuilder.Append("      <div class=\"span12 meta-area\">\r\n");
	ViewBuilder.Append("        <div class=\"box-wrap score-box\">\r\n");
	ViewBuilder.Append("          <div class=\"box\">\r\n");
	ViewBuilder.Append("            <div class=\"box-bd clearfix\">\r\n");
	ViewBuilder.Append("              <div class=\"user-score\">\r\n");
	ViewBuilder.Append("                <div class=\"left-column pull-left\">\r\n");
	ViewBuilder.Append("                  <div class=\"score-info forecast-score\">\r\n");
	ViewBuilder.Append("                    <div class=\"report-circle avg sprite-blue-circle\"><span class=\"number text-xxlarge\">" + echo(avg_my) + "</span><span class=\"unit\">分</span> </div>\r\n");
	ViewBuilder.Append("                    <div class=\"lbl-wrap\"> <span class=\"lbl-large\">我的平均分</span></div>\r\n");
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("                  <div class=\"item-row\"> <span class=\"lbl\">全站排名：</span> <span class=\"score\"><span class=\"number user-index\">" + echo(avg_display) + "</span><span class=\"number total-user\"> / " + echo(examusers) + "<span class=\"unit\">名</span></span></span> </div>\r\n");
	ViewBuilder.Append("                  <div class=\"item-row last\"> <span class=\"lbl\">全站平均分：</span> <span class=\"score\"><span class=\"number\">" + echo(avg_total) + "</span><span class=\"unit\">分</span></span> </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"middle-column pull-left\">\r\n");
	ViewBuilder.Append("                  <div class=\"question-count\">\r\n");
	ViewBuilder.Append("                    <div class=\"report-circle avg sprite-red-circle\"> <span class=\"number text-xxlarge\">" + echo(accuracy_my) + "</span> <span class=\"unit\">%</span> </div>\r\n");
	ViewBuilder.Append("                    <div class=\"lbl-wrap\"> <span class=\"lbl-large\">我的正确率</span> </div>\r\n");
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("                  <div class=\"item-row\"> <span class=\"lbl\">全站排名：</span> <span class=\"score\"><span class=\"number user-index\">" + echo(accuracy_display) + "</span><span class=\"number total-user\"> / " + echo(examusers) + "<span class=\"unit\">名</span></span></span> </div>\r\n");
	ViewBuilder.Append("                  <div class=\"item-row last\"> <span class=\"lbl\">全站总正确率：</span> <span class=\"score\"><span class=\"number\">" + echo(accuracy_total) + "</span><span class=\"unit\">%</span></span> </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"right-column\">\r\n");
	ViewBuilder.Append("                  <div id=\"jqchart\" style=\"width:476px;height:340px;\" class=\"trend-image-wrap\">\r\n");
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div class=\"span12\">\r\n");
	ViewBuilder.Append("        <div class=\"box-wrap\">\r\n");
	ViewBuilder.Append("          <div class=\"box\">\r\n");
	ViewBuilder.Append("            <div class=\"box-bd clearfix\">\r\n");
	ViewBuilder.Append("              <div class=\"user-csk-table-wrap csk-table-wrap\">\r\n");
	ViewBuilder.Append("                <table class=\"csk-table table\">\r\n");
	ViewBuilder.Append("                  <thead>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <th style=\"text-align:center;\" class=\"name-col\">题库</th>\r\n");
	ViewBuilder.Append("                      <th style=\"text-align:center;\" class=\"count-col\">做题数/总题数</th>\r\n");
	ViewBuilder.Append("                      <th style=\"text-align:center;\" class=\"count-col\">答对题</th>\r\n");
	ViewBuilder.Append("                      <th class=\"capacity-col last\">正确率</th>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                  </thead>\r\n");
	ViewBuilder.Append("                  <tbody>\r\n");

	loop__id=0;
	foreach(ExamLogInfo item in examloglist)
	{
	loop__id++;

	if (item.subcounts>0)
	{
	ViewBuilder.Append("                    <tr class=\"keypoint keypoint-level-0\">\r\n");
	ViewBuilder.Append("                      <td class=\"name-col\"><span class=\"text toggle-expand\"><span id=\"row_" + echo(item.sortid) + "\" class=\"sprite sprite-expand\"></span>" + echo(item.sortname) + "</span></td>\r\n");
	ViewBuilder.Append("                      <td class=\"count-col\">" + echo(item.answers) + "道/" + echo(item.questions) + "道</td>\r\n");
	ViewBuilder.Append("                      <td class=\"count-col\">" + echo((item.answers-item.wrongs)) + "道</td>\r\n");
	ViewBuilder.Append("                      <td class=\"capacity-col\">\r\n");
	ViewBuilder.Append("                          <span class=\"progressBar\">" + echo(item.accuracy) + "%</span>\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    " + echo(GetChildSort(channelinfo.id,item.sortid,1)) + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <tr class=\"keypoint keypoint-level-0\">\r\n");
	ViewBuilder.Append("                      <td class=\"name-col\"><span class=\"text toggle-expand\"><span class=\"sprite sprite-expand sprite-noexpand\"></span>" + echo(item.sortname) + "</span></td>\r\n");
	ViewBuilder.Append("                      <td class=\"count-col\">" + echo(item.answers) + "道/" + echo(item.questions) + "道</td>\r\n");
	ViewBuilder.Append("                      <td class=\"count-col\">" + echo((item.answers-item.wrongs)) + "道</td>\r\n");
	ViewBuilder.Append("                      <td class=\"capacity-col\"><span class=\"progressBar\">" + echo(item.accuracy) + "%</span></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                  </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
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
	ViewBuilder.Append("<p class=\"text-center\">" + echo(siteinfo.notes) + "</p>\r\n");
	}//end if
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
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
