<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Web.Controller.login_code" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Web" %>
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
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/login.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/register.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<!--[if lte IE 8]><link id=\"ie8Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie8.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if lte IE 7]><link id=\"ie7Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/lte-ie7.css\"/><![endif]-->\r\n");
	ViewBuilder.Append("<!--[if gte IE 9]><link id=\"ie9Hack\" rel=\"stylesheet\" href=\"/exam/statics/css/gte-ie9.css\"\"/><![endif]-->\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("      $.ajax({\r\n");
	ViewBuilder.Append("        type: 'GET',\r\n");
	ViewBuilder.Append("        url: 'https://220.168.210.98:20443/nqsky-changde-tobacco/login/getLoginQRcode-PC',\r\n");
	ViewBuilder.Append("        success: function (data) {\r\n");
	ViewBuilder.Append("          if (data.code == 0)\r\n");
	ViewBuilder.Append("          {\r\n");
	ViewBuilder.Append("            $('#msg').html('&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;请用手机端扫描下面二维码登录');\r\n");
	ViewBuilder.Append("            $(\"#loginimg\").attr(\"src\", data.QRcodeUrl);\r\n");
	ViewBuilder.Append("            console.log(data.loginOrderId);\r\n");
	ViewBuilder.Append("            //轮询\r\n");
	ViewBuilder.Append("            var testCountdown = setInterval(function () {\r\n");
	ViewBuilder.Append("              $.ajax({\r\n");
	ViewBuilder.Append("                type: 'GET',\r\n");
	ViewBuilder.Append("                url: 'https://220.168.210.98:20443/nqsky-changde-tobacco/login/checkLoginStatus-PC?loginOrderId=' + data.loginOrderId,\r\n");
	ViewBuilder.Append("                success: function (result) {\r\n");
	ViewBuilder.Append("                  if(result.code==0)\r\n");
	ViewBuilder.Append("                  {\r\n");
	ViewBuilder.Append("                    window.clearInterval(testCountdown);\r\n");
	ViewBuilder.Append("                    var juser = $.parseJSON(result.userInfo.body);\r\n");
	ViewBuilder.Append("                    //提交用户登录信息\r\n");
	ViewBuilder.Append("                    $.ajax({\r\n");
	ViewBuilder.Append("                      url: \"login_ajax.aspx\",\r\n");
	ViewBuilder.Append("                      data: {\r\n");
	ViewBuilder.Append("                        username: juser.userAccount.userName,\r\n");
	ViewBuilder.Append("                        password: juser.userAccount.password,\r\n");
	ViewBuilder.Append("                        realname:juser.userAccount.user.realName,\r\n");
	ViewBuilder.Append("                        sex: juser.userAccount.user.userSex,\r\n");
	ViewBuilder.Append("                        email: juser.userAccount.user.userEmail,\r\n");
	ViewBuilder.Append("                        mobile: juser.userAccount.user.userMobile,\r\n");
	ViewBuilder.Append("                        status: juser.userAccount.status,\r\n");
	ViewBuilder.Append("                        departid: juser.userAccount.userAgency.userOrganization.id,\r\n");
	ViewBuilder.Append("                        departname: juser.userAccount.userAgency.userOrganization.organizationName\r\n");
	ViewBuilder.Append("                      },\r\n");
	ViewBuilder.Append("                      type: \"post\",\r\n");
	ViewBuilder.Append("                      dataType: \"json\",\r\n");
	ViewBuilder.Append("                      success: function (data) {\r\n");
	ViewBuilder.Append("                        if (data.errcode == 0) {\r\n");
	ViewBuilder.Append("                          location.href =\"index.aspx\";\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                        else {\r\n");
	ViewBuilder.Append("                          alert(data.errmsg);\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                      }\r\n");
	ViewBuilder.Append("                    })\r\n");
	ViewBuilder.Append("                  }\r\n");
	ViewBuilder.Append("                  else\r\n");
	ViewBuilder.Append("                  {\r\n");
	ViewBuilder.Append("                    console.log(result.result);\r\n");
	ViewBuilder.Append("                  }\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("              });\r\n");
	ViewBuilder.Append("            },1000);\r\n");
	ViewBuilder.Append("          }\r\n");
	ViewBuilder.Append("          else {\r\n");
	ViewBuilder.Append("            $('#msg').html('&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;' + data.result);\r\n");
	ViewBuilder.Append("          }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("      });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	if (isfree>0)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var _hmt = _hmt || [];\r\n");
	ViewBuilder.Append("    (function () {\r\n");
	ViewBuilder.Append("        var hm = document.createElement(\"script\");\r\n");
	ViewBuilder.Append("        hm.src = \"//hm.baidu.com/hm.js?35483845f92e384129fb5d03f9d7c3cf\";\r\n");
	ViewBuilder.Append("        var s = document.getElementsByTagName(\"script\")[0];\r\n");
	ViewBuilder.Append("        s.parentNode.insertBefore(hm, s);\r\n");
	ViewBuilder.Append("    })();\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
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
	ViewBuilder.Append("            <h1 class=\"page-header first\"><span class=\"text\"><span class=\"sprite sprite-notepad\"></span>用户登录</span>\r\n");
	ViewBuilder.Append("                <hr>\r\n");
	ViewBuilder.Append("            </h1>\r\n");
	ViewBuilder.Append("            <div class=\"row\">\r\n");
	ViewBuilder.Append("                <div class=\"span8 offset4 login-form-wrap form-wrap\">\r\n");
	ViewBuilder.Append("                    <form id=\"frmpost\" name=\"frmpost\" method=\"post\" action=\"\" class=\"form\">\r\n");
	ViewBuilder.Append("                        <div class=\"form-content\">\r\n");
	ViewBuilder.Append("                            <span id=\"msg\"></span><br>\r\n");
	ViewBuilder.Append("                            <img id=\"loginimg\" style=\"margin-left:30px;\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/\">\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div class=\"form-message text-red\"></div>\r\n");
	ViewBuilder.Append("                    </form>\r\n");
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
