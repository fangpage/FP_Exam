<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_News.Controller.newsadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com  QQ:12677206*/
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>添加编辑在线课程</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "calendar/WdatePicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	string m_link = "newsmanage.aspx";
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,m_link).ToString() + "|添加编辑在线课程," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("        KindEditor.create('textarea[name=\"content\"]', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(webpath) + "plugins/editor/uploadajax.aspx?sortid=" + echo(sortid) + "&attachid=" + echo(newsinfo.attachid) + "&app=" + echo(setupinfo.markup) + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(webpath) + "plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        var editor = KindEditor.editor({\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(webpath) + "plugins/editor/uploadajax.aspx?sortid=" + echo(sortid) + "&attachid=" + echo(newsinfo.attachid) + "&app=" + echo(setupinfo.markup) + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(webpath) + "plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#image1').click(function () {\r\n");
	ViewBuilder.Append("            editor.loadPlugin('image', function () {\r\n");
	ViewBuilder.Append("                editor.plugin.imageDialog({\r\n");
	ViewBuilder.Append("                    imageUrl: $('#img').val(),\r\n");
	ViewBuilder.Append("                    clickFn: function (url, title, width, height, border, align) {\r\n");
	ViewBuilder.Append("                        $('#img').val(url);\r\n");
	ViewBuilder.Append("                        $(\"#titleimg\").attr(\"src\", url);\r\n");
	ViewBuilder.Append("                        editor.hideDialog();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"newsmanage.aspx?sortid=" + echo(sortid) + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">" + echo(sortinfo.name) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("     <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">课程标题： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          <input style=\"width: 400px\" id=\"title\" name=\"title\" value=\"" + echo(newsinfo.title) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	if (sortinfo.types!="")
	{

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td>" + echo(types.name) + "： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	if (types.type==1)
	{

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("            <input id=\"typelist1\" name=\"typelist\" value=\"" + echo(types2.id) + "\" \r\n");

	if (ischecked(types2.id,newsinfo.typelist))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">" + echo(types2.name) + "\r\n");
	}//end loop
	}
	else if (types.type==2)
	{

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("            <input id=\"typelist2\" name=\"typelist\" value=\"" + echo(types2.id) + "\" \r\n");

	if (ischecked(types2.id,newsinfo.typelist))
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"checkbox\">" + echo(types2.name) + "\r\n");
	}//end loop
	}
	else
	{
	ViewBuilder.Append("            <select id=\"typelist\" name=\"typelist\">\r\n");
	ViewBuilder.Append("            <option value=\"\">选择" + echo(types.name) + "</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;
	ViewBuilder.Append("            <option value=\"" + echo(types2.id) + "\" \r\n");

	if (ischecked(types2.id,newsinfo.typelist))
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(types2.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("            </select>\r\n");
	}//end if
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr> \r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <textarea style=\"height:400px; width:100%;display:none\" id=\"content\" name=\"content\" cols=\"20\" rows=\"2\">\r\n");
	ViewBuilder.Append("              " + echo(newsinfo.content) + "\r\n");
	ViewBuilder.Append("              </textarea>\r\n");
	ViewBuilder.Append("          </td> \r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"> 摘要内容：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <textarea id=\"description\" name=\"description\" style=\"width:99%; height:80px;\" cols=\"20\" rows=\"2\">" + echo(newsinfo.description) + "</textarea>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\" style=\"width:60px\">标题图片： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (newsinfo.img!="")
	{
	ViewBuilder.Append("              <img id=\"titleimg\" src=\"" + echo(newsinfo.img) + "\" width=\"160\" height=\"160\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <img id=\"titleimg\" src=\"" + echo(webpath) + "common/images/default.gif\" width=\"160\" height=\"160\">\r\n");
	}//end if
	ViewBuilder.Append("              <br>\r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"img\" name=\"img\" value=\"" + echo(newsinfo.img) + "\"> \r\n");
	ViewBuilder.Append("              <input type=\"button\" id=\"image1\" value=\"选择图片\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">发布时间： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("             <input style=\"width: 400px\" id=\"postdatetime\" name=\"postdatetime\" value='" + echo(newsinfo.postdatetime,"yyyy-MM-dd HH:mm:ss") + "' onfocus=\"WdatePicker({el:'postdatetime',dateFmt:'yyyy-MM-dd HH:mm:ss'})\" readonly=\"readonly\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"> 审核状态：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <label for=\"status0\"><input id=\"status0\" name=\"status\" value=\"0\" \r\n");

	if (newsinfo.status==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">未审核</label> \r\n");
	ViewBuilder.Append("              <label for=\"status1\"><input id=\"status1\" name=\"status\" value=\"1\" \r\n");

	if (newsinfo.status==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">已审核</label>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}
	else
	{
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"> 审核状态：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (newsinfo.status==1)
	{
	ViewBuilder.Append("              已审核\r\n");
	}
	else
	{
	ViewBuilder.Append("              未审核\r\n");
	}//end if
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end if
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <input id=\"btnsubmit\" name=\"btnsubmit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("         </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("       </table>\r\n");
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
	ViewBuilder.Append("            window.location.href = \"" + echo(backurl) + "\";\r\n");
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
