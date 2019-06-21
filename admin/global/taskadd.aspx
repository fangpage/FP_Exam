<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.taskadd" %>
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
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>添加编辑系统计划任务</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            PageNav(\"系统计划任务管理," + echo(rawpath) + "taskmanage.aspx|添加编辑系统计划任务," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("            $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("                window.location.href = \"taskmanage.aspx\";\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        function changetimespan(thevalue) {\r\n");
	ViewBuilder.Append("            if (thevalue == 1) {\r\n");
	ViewBuilder.Append("                $(\"#hour\").attr(\"disabled\", false)\r\n");
	ViewBuilder.Append("                $(\"#minute\").attr(\"disabled\", false)\r\n");
	ViewBuilder.Append("                $(\"#timeserval\").attr(\"disabled\", true)\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else {\r\n");
	ViewBuilder.Append("                $(\"#hour\").attr(\"disabled\", true)\r\n");
	ViewBuilder.Append("                $(\"#minute\").attr(\"disabled\", true)\r\n");
	ViewBuilder.Append("                $(\"#timeserval\").attr(\"disabled\", false)\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("        <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("        <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("                        <tbody>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑系统计划任务</td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                    <table style=\"width: 100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("                        <tbody>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"td_class\">计划任务名称： </td>\r\n");
	ViewBuilder.Append("                                <td>\r\n");
	ViewBuilder.Append("                                    <input id=\"name\" name=\"name\" type=\"text\" value=\"" + echo(taskinfo.name) + "\" style=\"height: 21px; width: 400px;\"></td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"td_class\">计划任务程序： </td>\r\n");
	ViewBuilder.Append("                                <td>\r\n");
	ViewBuilder.Append("                                    <input id=\"type\" name=\"type\" type=\"text\" value=\"" + echo(taskinfo.type) + "\" style=\"height: 21px; width: 400px;\"></td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"td_class\">任务执行频率： </td>\r\n");
	ViewBuilder.Append("                                <td>\r\n");
	ViewBuilder.Append("                                  <input id=\"timeofday\" type=\"radio\" name=\"timeofday\" value=\"1\" \r\n");

	if (taskinfo.timeofday>0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" onclick=\"changetimespan(1);\">定时执行\r\n");
	ViewBuilder.Append("                                  <select name=\"hour\" id=\"hour\" \r\n");

	if (taskinfo.timeofday==-1)
	{
	ViewBuilder.Append(" disabled=\"disabled\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("                                    <option value=\"0\" \r\n");

	if (taskinfo.timeofday/60==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">00</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"1\" \r\n");

	if (taskinfo.timeofday/60==1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">01</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"2\" \r\n");

	if (taskinfo.timeofday/60==2)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">02</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"3\" \r\n");

	if (taskinfo.timeofday/60==3)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">03</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"4\" \r\n");

	if (taskinfo.timeofday/60==4)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">04</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"5\" \r\n");

	if (taskinfo.timeofday/60==5)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">05</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"6\" \r\n");

	if (taskinfo.timeofday/60==6)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">06</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"7\" \r\n");

	if (taskinfo.timeofday/60==7)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">07</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"8\" \r\n");

	if (taskinfo.timeofday/60==8)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">08</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"9\" \r\n");

	if (taskinfo.timeofday/60==9)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">09</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"10\" \r\n");

	if (taskinfo.timeofday/60==10)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">10</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"11\" \r\n");

	if (taskinfo.timeofday/60==11)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">11</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"12\" \r\n");

	if (taskinfo.timeofday/60==12)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">12</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"13\" \r\n");

	if (taskinfo.timeofday/60==13)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">13</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"14\" \r\n");

	if (taskinfo.timeofday/60==14)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">14</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"15\" \r\n");

	if (taskinfo.timeofday/60==15)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">15</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"16\" \r\n");

	if (taskinfo.timeofday/60==16)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">16</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"17\" \r\n");

	if (taskinfo.timeofday/60==17)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">17</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"18\" \r\n");

	if (taskinfo.timeofday/60==18)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">18</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"19\" \r\n");

	if (taskinfo.timeofday/60==19)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">19</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"20\" \r\n");

	if (taskinfo.timeofday/60==20)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">20</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"21\" \r\n");

	if (taskinfo.timeofday/60==21)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">21</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"22\" \r\n");

	if (taskinfo.timeofday/60==22)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">22</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"23\" \r\n");

	if (taskinfo.timeofday/60==23)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">23</option>\r\n");
	ViewBuilder.Append("                                </select>\r\n");
	ViewBuilder.Append("                                时\r\n");
	ViewBuilder.Append("                                <select name=\"minute\" id=\"minute\" \r\n");

	if (taskinfo.timeofday==-1)
	{
	ViewBuilder.Append(" disabled=\"disabled\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("                                    <option value=\"0\" \r\n");

	if (taskinfo.timeofday%60==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">00</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"5\" \r\n");

	if (taskinfo.timeofday%60==5)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">05</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"10\" \r\n");

	if (taskinfo.timeofday%60==10)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">10</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"15\" \r\n");

	if (taskinfo.timeofday%60==15)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">15</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"20\" \r\n");

	if (taskinfo.timeofday%60==20)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">20</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"25\" \r\n");

	if (taskinfo.timeofday%60==25)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">25</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"30\" \r\n");

	if (taskinfo.timeofday%60==30)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">30</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"35\" \r\n");

	if (taskinfo.timeofday%60==35)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">35</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"40\" \r\n");

	if (taskinfo.timeofday%60==40)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">40</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"45\" \r\n");

	if (taskinfo.timeofday%60==45)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">45</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"50\" \r\n");

	if (taskinfo.timeofday%60==50)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">50</option>\r\n");
	ViewBuilder.Append("                                    <option value=\"55\" \r\n");

	if (taskinfo.timeofday%60==55)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">55</option>\r\n");
	ViewBuilder.Append("                                </select>\r\n");
	ViewBuilder.Append("                                分&nbsp;\r\n");
	ViewBuilder.Append("                                <input id=\"timeofday\" type=\"radio\" name=\"timeofday\" \r\n");

	if (taskinfo.timeofday==-1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"-1\" onclick=\"changetimespan(-1);\">周期执行\r\n");
	ViewBuilder.Append("                                <input name=\"timeserval\" type=\"text\" id=\"timeserval\" value=\"" + echo(taskinfo.minutes) + "\" \r\n");

	if (taskinfo.timeofday!=-1)
	{
	ViewBuilder.Append(" disabled=\"disabled\" \r\n");
	}//end if
	ViewBuilder.Append(" style=\"width: 40px;\">分钟\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"td_class\">任务执行状态： </td>\r\n");
	ViewBuilder.Append("                                <td>\r\n");
	ViewBuilder.Append("                                    <input id=\"enabled\" type=\"radio\" name=\"enabled\" \r\n");

	if (taskinfo.enabled==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">开启\r\n");
	ViewBuilder.Append("                                    <input id=\"enabled\" type=\"radio\" name=\"enabled\" \r\n");

	if (taskinfo.enabled==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">关闭\r\n");
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                                <td>\r\n");
	ViewBuilder.Append("                                    <input type=\"submit\" name=\"btnSave\" value=\"保存\" id=\"btnSave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                                    <input type=\"button\" id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\">\r\n");
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
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
