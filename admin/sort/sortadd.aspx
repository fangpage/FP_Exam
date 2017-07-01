<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.sortadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限责任公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	string iconimg = adminpath+"statics/images/folder.gif";

	if (sortinfo.subcounts>0)
	{
	 iconimg = adminpath+"statics/images/folders.gif";
	}//end if
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>添加编辑栏目</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "plugins/editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "plugins/editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "plugins/editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"sortmanage.aspx?channelid=" + echo(channelid) + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        var editor = KindEditor.editor({\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(webpath) + "plugins/editor/uploadajax.aspx?attachid=" + echo(sortinfo.attach_img) + "&app=sort_img&action=update',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(webpath) + "plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#image1').click(function () {\r\n");
	ViewBuilder.Append("            editor.loadPlugin('image', function () {\r\n");
	ViewBuilder.Append("                editor.plugin.imageDialog({\r\n");
	ViewBuilder.Append("                    imageUrl: $('#img').val(),\r\n");
	ViewBuilder.Append("                    clickFn: function (url, title, width, height, border, align) {\r\n");
	ViewBuilder.Append("                        $('#img').val(url);\r\n");
	ViewBuilder.Append("                        $(\"#sortimg\").attr(\"src\", url); \r\n");
	ViewBuilder.Append("                        editor.hideDialog();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_clearimg').click(function () {\r\n");
	ViewBuilder.Append("            $('#img').val('');\r\n");
	ViewBuilder.Append("            $(\"#sortimg\").attr(\"src\", \"" + echo(webpath) + "common/images/default.gif\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_clearicon').click(function () {\r\n");
	ViewBuilder.Append("            $('#icon').val('');\r\n");
	ViewBuilder.Append("            $(\"#iconimg\").attr(\"src\", \"" + echo(iconimg) + "\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"系统栏目管理," + echo(rawpath) + "sortmanage.aspx?channelid=" + echo(channelid) + "|添加编辑栏目," + echo(rawpath) + "" + echo(pagename) + "?channelid=" + echo(channelid) + "&id=" + echo(id) + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("  <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑栏目，所属频道：" + echo(channelinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">上级栏目： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	string tree = "├";
	ViewBuilder.Append("              <select id=\"parentid\" name=\"parentid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                  <option value=\"0\">根栏目</option>\r\n");

	loop__id=0;
	foreach(SortInfo item in sortlist)
	{
	loop__id++;
	ViewBuilder.Append("                  <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==parentid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">├" + echo(item.name) + "</option>\r\n");
	ViewBuilder.Append("                  " + GetChildSort(item.id,tree).ToString() + "\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">栏目功能： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"appid\" name=\"appid\" style=\"width: 204px\">\r\n");
	ViewBuilder.Append("                  <option value=\"0\">无</option>\r\n");

	loop__id=0;
	foreach(SortAppInfo item in sortapplist)
	{
	loop__id++;
	ViewBuilder.Append("                  <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==appid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(item.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">栏目名称： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"name\" name=\"name\" value=\"" + echo(sortinfo.name) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">栏目标识： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"markup\" name=\"markup\" value=\"" + echo(sortinfo.markup) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">页码尺寸： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 199px\" id=\"pagesize\" name=\"pagesize\" value=\"" + echo(sortinfo.pagesize) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">外部链接： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 199px\" id=\"otherurl\" name=\"otherurl\" value=\"" + echo(sortinfo.otherurl) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">栏目描述： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input style=\"width: 199px\" id=\"description\" name=\"description\" value=\"" + echo(sortinfo.description) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">栏目分类： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("            <input id=\"types\" name=\"types\" value=\"" + echo(types.id) + "\" \r\n");

	if (ischecked(types.id,sortinfo.types))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">" + echo(types.name) + "\r\n");
	}//end loop
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">显示分类： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"checkbox\" id=\"showtype\" name=\"showtype\" \r\n");

	if (sortinfo.showtype==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">是否显示栏目分类\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">栏目图标： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (sortinfo.icon!="")
	{
	ViewBuilder.Append("              <img id=\"iconimg\" src=\"" + echo(sortinfo.icon) + "\" width=\"16\" height=\"16\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <img id=\"iconimg\" src=\"" + echo(iconimg) + "\" width=\"16\" height=\"16\">\r\n");
	}//end if
	ViewBuilder.Append("              <input type=\"hidden\" id=\"icon\" name=\"icon\" value=\"" + echo(sortinfo.icon) + "\">\r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"attach_icon\" name=\"attach_icon\" value=\"" + echo(sortinfo.attach_icon) + "\"> \r\n");
	ViewBuilder.Append("              <input style=\"width: 200px\" id=\"uploadimg\" name=\"uploadimg\" type=\"file\">\r\n");
	ViewBuilder.Append("              <input type=\"button\" id=\"btn_clearicon\" value=\"使用默认\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">栏目图片： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (sortinfo.img!="")
	{
	ViewBuilder.Append("              <img id=\"sortimg\" src=\"" + echo(sortinfo.img) + "\" width=\"160\" height=\"160\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <img id=\"sortimg\" src=\"" + echo(webpath) + "common/images/default.gif\" width=\"160\" height=\"160\">\r\n");
	}//end if
	ViewBuilder.Append("              <br>\r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"img\" name=\"img\" value=\"" + echo(sortinfo.img) + "\"> \r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"attach_img\" name=\"attach_img\" value=\"" + echo(sortinfo.attach_img) + "\"> \r\n");
	ViewBuilder.Append("              <input type=\"button\" id=\"image1\" value=\"选择图片\">&nbsp;&nbsp;<input type=\"button\" id=\"btn_clearimg\" value=\"清空图片\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td><input name=\"submit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    layer.msg('" + echo(msg) + "', 0, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 80) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");

	if (backurl!="")
	{
	ViewBuilder.Append("            window.location.href = \"" + echo(backurl) + "\";\r\n");
	}
	else
	{
	ViewBuilder.Append("            window.location.href = \"" + echo(pageurl) + "\";\r\n");
	}//end if
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
