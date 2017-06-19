<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Web.Controller.register" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Web" %>
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
	ViewBuilder.Append("<title>用户注册|" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/login.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#login\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"login.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#sumitreg\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#sendsms\").click(function () {\r\n");
	ViewBuilder.Append("            var self = $(this);\r\n");
	ViewBuilder.Append("            self.html('努力发送中...').addClass('sending');\r\n");
	ViewBuilder.Append("            $.post('" + echo(plupath) + "verify/smsverify.aspx', {\r\n");
	ViewBuilder.Append("                type: 'sms_cert',\r\n");
	ViewBuilder.Append("                mobile: $.trim($('#mobile').val())\r\n");
	ViewBuilder.Append("            }, function (d) {\r\n");
	ViewBuilder.Append("                if (d.error == 0) {\r\n");
	ViewBuilder.Append("                    self.html('<i>60</i>秒后重新获取短信');\r\n");
	ViewBuilder.Append("                    var timer = setInterval(function () {\r\n");
	ViewBuilder.Append("                        var second_obj = self.find('i'),\r\n");
	ViewBuilder.Append("                                second = parseInt(second_obj.text());\r\n");
	ViewBuilder.Append("                        second--;\r\n");
	ViewBuilder.Append("                        if (0 == second) {\r\n");
	ViewBuilder.Append("                            timer = null;\r\n");
	ViewBuilder.Append("                            self.html('免费获取验证码').removeClass('sending');\r\n");
	ViewBuilder.Append("                        } else {\r\n");
	ViewBuilder.Append("                            second_obj.text(second);\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                    }, 1000);\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    self.html(d.message);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }, 'json');\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <div class=\"wrap\">\r\n");
	ViewBuilder.Append("        <div class=\"repeat-x default-t\">\r\n");
	ViewBuilder.Append("            <div class=\"header-left layout default-lt\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"header-right layout default-rt\"></div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"default-left repeat-y default-l\"></div>\r\n");
	ViewBuilder.Append("        <div class=\"default-right repeat-y default-r\"></div>\r\n");
	ViewBuilder.Append("        <div class=\"header simple-header\">\r\n");
	ViewBuilder.Append("            <div class=\"container\">\r\n");
	ViewBuilder.Append("                <a href=\"index.aspx\" class=\"logo\">\r\n");
	ViewBuilder.Append("                <img src=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/login.png\" style=\"height:70px;\" alt=\"" + echo(siteinfo.name) + "\"></a>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"container body-wrap main\">\r\n");
	ViewBuilder.Append("            <h1 class=\"page-header first\"><span class=\"text\"><span class=\"sprite sprite-notepad\"></span>用户注册</span>\r\n");
	ViewBuilder.Append("                <hr>\r\n");
	ViewBuilder.Append("            </h1>\r\n");
	ViewBuilder.Append("            <div class=\"row\">\r\n");
	ViewBuilder.Append("                <div class=\"span8 offset4 signup-form-wrap form-wrap\">\r\n");

	if (ispost)
	{
	ViewBuilder.Append("                      " + echo(msg) + "<br>\r\n");
	ViewBuilder.Append("                      <a href=\"index.aspx\">首页</a>|<a href=\"login.aspx\">登录</a>|<a href=\"" + echo(backurl) + "\">返回</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <form id=\"frmpost\" name=\"frmpost\" method=\"post\" action=\"\" class=\"form\">\r\n");
	ViewBuilder.Append("                        <div class=\"form-content\">\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"signupFormEmailInput\">登录帐号：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"username\" name=\"username\" type=\"text\" placeholder=\"请输入用户名\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"password\">登录密码：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"password\" name=\"password\" type=\"password\" placeholder=\"请输入 6 个以上字符\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"repeat\">确认密码：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"repeat\" name=\"repeat\" type=\"password\" placeholder=\"请输入 6 个以上字符\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"realname\">真实姓名：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"realname\" name=\"realname\" type=\"text\" placeholder=\"请输入您的真实姓名\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"realname\">电子邮箱：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"email\" name=\"email\" type=\"text\" placeholder=\"请输入电子邮箱地址\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");

	if (regconfig.depart==1)
	{
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"realname\">用户部门：</label>\r\n");
	ViewBuilder.Append("                                <span>\r\n");
	string tree = "├";
	ViewBuilder.Append("                                  <select id=\"departid\" name=\"departid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                                    <option value=\"0\">--请选择--</option>\r\n");

	loop__id=0;
	foreach(Department item in departlist)
	{
	loop__id++;
	ViewBuilder.Append("                                    <option value=\"" + echo(item.id) + "\">├" + echo(item.name) + "</option>\r\n");
	ViewBuilder.Append("                                    " + GetChildDepartment(item.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("                                  </select>\r\n");
	ViewBuilder.Append("                                </span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	}//end if

	if (regconfig.regverify==3||regconfig.mobile==1)
	{
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"realname\">手机号码：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"mobile\" name=\"mobile\" type=\"text\" placeholder=\"请输入您的手机号码\">\r\n");
	ViewBuilder.Append("                                </span>&nbsp;<a id=\"sendsms\" href=\"javascript:void()\">免费获取验证码</a>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	}//end if

	if (regconfig.regverify==3)
	{
	ViewBuilder.Append("                            <div class=\"item-wrap text-item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"realname\">验证码：</label>\r\n");
	ViewBuilder.Append("                                <span class=\"text-wrap\">\r\n");
	ViewBuilder.Append("                                    <input id=\"code\" name=\"code\" type=\"text\" placeholder=\"输入您的手机收到的验证码\">\r\n");
	ViewBuilder.Append("                                </span><span class=\"item-message help-inline\"></span>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	}//end if
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div class=\"button-row\">\r\n");
	ViewBuilder.Append("                            <button type=\"submit\" class=\"visible-hidden\"></button>\r\n");
	ViewBuilder.Append("                            <span id=\"sumitreg\" class=\"btn btn-primary fir-wrap submit-button\"><span class=\"btn-inner\"><span class=\"fir fir-btn-normal-submit\"><span class=\"fir-text\">注册</span></span></span></span>\r\n");
	ViewBuilder.Append("                            <div id=\"signupFormAgree\" class=\"item-wrap\">\r\n");
	ViewBuilder.Append("                                <label for=\"signupFormAgreeInput\">\r\n");
	ViewBuilder.Append("                                    <input id=\"rules\" name=\"rules\" type=\"checkbox\" value=\"1\" checked=\"\">\r\n");
	ViewBuilder.Append("                                    已阅读并同意<a href=\"rules.aspx\" target=\"_blank\">使用条款和隐私策略</a><span class=\"item-message help-inline\"></span></label>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </form>\r\n");
	ViewBuilder.Append("                    <span id=\"login\" class=\"btn btn-paper btn-paper-xxlarge link-button login-button\"><span class=\"fir fir-btn-paper-login\"></span></span>\r\n");
	}//end if
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
