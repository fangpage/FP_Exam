<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.typeadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>添加编辑类型</title>\r\n");
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
	ViewBuilder.Append("            window.location.href = \"typemanage.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        var editor = KindEditor.editor({\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(webpath) + "plugins/editor/uploadajax.aspx?attachid=" + echo(typeinfo.attach_img) + "&app=type_img&action=update',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(webpath) + "plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#image1').click(function () {\r\n");
	ViewBuilder.Append("            editor.loadPlugin('image', function () {\r\n");
	ViewBuilder.Append("                editor.plugin.imageDialog({\r\n");
	ViewBuilder.Append("                    imageUrl: $('#img').val(),\r\n");
	ViewBuilder.Append("                    clickFn: function (url, title, width, height, border, align) {\r\n");
	ViewBuilder.Append("                        $('#img').val(url);\r\n");
	ViewBuilder.Append("                        $(\"#typeimg\").attr(\"src\", url);\r\n");
	ViewBuilder.Append("                        editor.hideDialog();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_clearimg').click(function () {\r\n");
	ViewBuilder.Append("            $('#img').val('');\r\n");
	ViewBuilder.Append("            $(\"#typeimg\").attr(\"src\", \"" + echo(webpath) + "common/images/default.gif\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"系统类型管理," + echo(rawpath) + "typemanage.aspx|添加编辑类型," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑系统类型</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"> 上级类型： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"parentid\" name=\"parentid\" style=\"width:204px;\">\r\n");
	ViewBuilder.Append("                  <option value=\"0\">根类型</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types in parenttypelist)
	{
	loop__id++;
	ViewBuilder.Append("                  <option value=\"" + echo(types.id) + "\" \r\n");

	if (types.id==parentid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(types.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"> 类型名称： </td>\r\n");
	ViewBuilder.Append("          <td><input id=\"name\" name=\"name\" type=\"text\" value=\"" + echo(typeinfo.name) + "\" style=\"height:21px;width:200px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	if (parentid==0)
	{
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"> 选项类型： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <select id=\"type\" name=\"type\" style=\"width:204px;\">\r\n");
	ViewBuilder.Append("                  <option value=\"0\" \r\n");

	if (typeinfo.type==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">下拉选择</option>\r\n");
	ViewBuilder.Append("                  <option value=\"1\" \r\n");

	if (typeinfo.type==1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">单项选择</option>\r\n");
	ViewBuilder.Append("                  <option value=\"2\" \r\n");

	if (typeinfo.type==2)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">多项选择</option>\r\n");
	ViewBuilder.Append("              </select>\r\n");
	ViewBuilder.Append("              <input id=\"required\" name=\"required\" \r\n");

	if (typeinfo.required==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\" type=\"checkbox\">是/否为必填项\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end if
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"> 类型标识： </td>\r\n");
	ViewBuilder.Append("          <td><input id=\"markup\" name=\"markup\" type=\"text\" value=\"" + echo(typeinfo.markup) + "\" style=\"height:21px;width:200px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\">外部链接： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input id=\"otherurl\" name=\"otherurl\" type=\"text\" value=\"" + echo(typeinfo.otherurl) + "\" style=\"height:21px;width:200px;\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"> 类型描述： </td>\r\n");
	ViewBuilder.Append("          <td><input id=\"description\" name=\"description\" type=\"text\" value=\"" + echo(typeinfo.description) + "\" style=\"height:21px;width:200px;\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\">类型图片： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");

	if (typeinfo.img!="")
	{
	ViewBuilder.Append("                <img id=\"typeimg\" src=\"" + echo(typeinfo.img) + "\" width=\"160\" height=\"160\">\r\n");
	}
	else
	{
	ViewBuilder.Append("                <img id=\"typeimg\" src=\"" + echo(webpath) + "common/images/default.gif\" width=\"160\" height=\"160\">\r\n");
	}//end if
	ViewBuilder.Append("                <br>\r\n");
	ViewBuilder.Append("                <input type=\"hidden\" id=\"img\" name=\"img\" value=\"" + echo(typeinfo.img) + "\">\r\n");
	ViewBuilder.Append("                <input type=\"hidden\" id=\"attach_img\" name=\"attach_img\" value=\"" + echo(typeinfo.attach_img) + "\"> \r\n");
	ViewBuilder.Append("                <input type=\"button\" id=\"image1\" value=\"选择图片\">&nbsp;&nbsp;<input type=\"button\" id=\"btn_clearimg\" value=\"清空图片\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("           <input type=\"submit\" name=\"btnSave\" value=\"保存\" id=\"btnSave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("           <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("</div>\r\n");
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
