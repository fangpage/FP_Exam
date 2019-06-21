<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.sysmenu" %>
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
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>系统管理菜单</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta content=\"IE=edge,chrome=1\" http-equiv=\"X-UA-Compatible\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            LeftNav(\"菜单管理,global/sysmenumanage.aspx\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/left_main.gif);overflow: hidden;\" oncontextmenu=\"return false\" ondragstart=\"return false\">\r\n");
	ViewBuilder.Append("    <div class=\"left_main\">\r\n");
	ViewBuilder.Append("        <div id=\"foldmenu2\" class=\"foldmenu\" style=\"float: right;\">\r\n");

	loop__id=0;
	foreach(MenuInfo menu in menulist)
	{
	loop__id++;
	ViewBuilder.Append("            <ul \r\n");

	if (loop__id==1)
	{
	ViewBuilder.Append(" class=\"open\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("                <span class=\"span_open\">" + echo(menu.name) + "</span>\r\n");

	loop__id=0;
	foreach(MenuInfo childmenu in GetChildMenu(menu.id))
	{
	loop__id++;

	if (childmenu.lefturl!="")
	{
	ViewBuilder.Append("                <li><a href=\"" + echo(childmenu.lefturl) + "\">" + echo(childmenu.name) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("                <li><a href=\"" + echo(childmenu.righturl) + "\" target=\"mainframe\">" + echo(childmenu.name) + "</a></li>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("            </ul>\r\n");
	}//end loop
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        window.onload = function () {\r\n");
	ViewBuilder.Append("            myMenu2 = new FOLDMenu(\"foldmenu2\");\r\n");
	ViewBuilder.Append("            myMenu2.init();\r\n");
	ViewBuilder.Append("        };\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("            $(\"body\").niceScroll({ cursorcolor: \"#ccc\", cursorwidth: 5 });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("        <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("            function FOLDMenu(id, onlyone) {\r\n");
	ViewBuilder.Append("                if (!document.getElementById || !document.getElementsByTagName) { return false; }\r\n");
	ViewBuilder.Append("                this.menu = document.getElementById(id);\r\n");
	ViewBuilder.Append("                this.submenu = this.menu.getElementsByTagName(\"ul\");\r\n");
	ViewBuilder.Append("                this.speed = 3;\r\n");
	ViewBuilder.Append("                this.time = 10;\r\n");
	ViewBuilder.Append("                this.onlyone = onlyone == true ? onlyone : false;\r\n");
	ViewBuilder.Append("                this.links = this.menu.getElementsByTagName(\"a\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            FOLDMenu.prototype.init = function () {\r\n");
	ViewBuilder.Append("                var mainInstance = this;\r\n");
	ViewBuilder.Append("                for (var i = 0; i < this.submenu.length; i++) {\r\n");
	ViewBuilder.Append("                    this.submenu[i].getElementsByTagName(\"span\")[0].onclick = function () {\r\n");
	ViewBuilder.Append("                        mainInstance.toogleMenu(this.parentNode);\r\n");
	ViewBuilder.Append("                    };\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                for (var i = 0; i < this.links.length; i++) {\r\n");
	ViewBuilder.Append("                    this.links[i].onclick = function () {\r\n");
	ViewBuilder.Append("                        this.className = \"current\";\r\n");
	ViewBuilder.Append("                        mainInstance.removeCurrent(this);\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            FOLDMenu.prototype.removeCurrent = function (link) {\r\n");
	ViewBuilder.Append("                for (var i = 0; i < this.links.length; i++) {\r\n");
	ViewBuilder.Append("                    if (this.links[i] != link) {\r\n");
	ViewBuilder.Append("                        this.links[i].className = \" \";\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            FOLDMenu.prototype.toogleMenu = function (submenu) {\r\n");
	ViewBuilder.Append("                if (submenu.className == \"open\") {\r\n");
	ViewBuilder.Append("                    this.closeMenu(submenu);\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    this.openMenu(submenu);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            FOLDMenu.prototype.openMenu = function (submenu) {\r\n");
	ViewBuilder.Append("                var fullHeight = submenu.getElementsByTagName(\"span\")[0].offsetHeight;\r\n");
	ViewBuilder.Append("                var allmenu = this.menu.getElementsByTagName(\"ul\");\r\n");
	ViewBuilder.Append("                for (var i = 0; i < allmenu.length; i++) {\r\n");
	ViewBuilder.Append("                    allmenu[i].className = '';\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                var links = submenu.getElementsByTagName(\"a\");\r\n");
	ViewBuilder.Append("                for (var i = 0; i < links.length; i++) {\r\n");
	ViewBuilder.Append("                    fullHeight += links[i].offsetHeight;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                var moveBy = Math.round(this.speed * links.length);\r\n");
	ViewBuilder.Append("                var mainInstance = this;\r\n");
	ViewBuilder.Append("                var intId = setInterval(function () {\r\n");
	ViewBuilder.Append("                    var curHeight = submenu.offsetHeight;\r\n");
	ViewBuilder.Append("                    var newHeight = curHeight + moveBy;\r\n");
	ViewBuilder.Append("                    if (newHeight < fullHeight) {\r\n");
	ViewBuilder.Append("                        submenu.style.height = newHeight + \"px\";\r\n");
	ViewBuilder.Append("                    } else {\r\n");
	ViewBuilder.Append("                        clearInterval(intId);\r\n");
	ViewBuilder.Append("                        submenu.style.height = \"\";\r\n");
	ViewBuilder.Append("                        submenu.className = \"open\";\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }, this.time);\r\n");
	ViewBuilder.Append("                this.collapseOthers(submenu);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            FOLDMenu.prototype.closeMenu = function (submenu) {\r\n");
	ViewBuilder.Append("                var minHeight = submenu.getElementsByTagName(\"span\")[0].offsetHeight;\r\n");
	ViewBuilder.Append("                var moveBy = Math.round(this.speed * submenu.getElementsByTagName(\"a\").length);\r\n");
	ViewBuilder.Append("                var mainInstance = this;\r\n");
	ViewBuilder.Append("                var intId = setInterval(function () {\r\n");
	ViewBuilder.Append("                    var curHeight = submenu.offsetHeight;\r\n");
	ViewBuilder.Append("                    var newHeight = curHeight - moveBy;\r\n");
	ViewBuilder.Append("                    if (newHeight > minHeight) {\r\n");
	ViewBuilder.Append("                        submenu.style.height = newHeight + \"px\";\r\n");
	ViewBuilder.Append("                    } else {\r\n");
	ViewBuilder.Append("                        clearInterval(intId);\r\n");
	ViewBuilder.Append("                        submenu.style.height = \"\";\r\n");
	ViewBuilder.Append("                        submenu.className = \"\";\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }, this.time);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            FOLDMenu.prototype.collapseOthers = function (submenu) {\r\n");
	ViewBuilder.Append("                if (this.onlyone) {\r\n");
	ViewBuilder.Append("                    for (var i = 0; i < this.submenu.length; i++) {\r\n");
	ViewBuilder.Append("                        if (this.submenu[i] != submenu) {\r\n");
	ViewBuilder.Append("                            this.closeMenu(this.submenu[i]);\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        </");
	ViewBuilder.Append("script>\r\n");
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
