<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.attachtypemanage" %>
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
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>上传附件类型</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkdel]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btn_add\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"add\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btn_edit\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"edit\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"上传附件类型,global/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("        <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"attachtypemanage.aspx\">刷新</a> </li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>上传附件类型</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("      <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	  <td>扩展名</td>\r\n");
	ViewBuilder.Append("        	  <td>最大尺寸</td>\r\n");
	ViewBuilder.Append("        	  <td>文件类型</td>\r\n");
	ViewBuilder.Append("              <td>操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(AttachType item in attachlist)
	{
	loop__id++;

	if (item.id==id)
	{
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td><input id=\"chkdel\" name=\"chkdel\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input type=\"text\" style=\"width:200px\" name=\"edit_extension\" id=\"edit_extension\" value=\"" + echo(item.extension) + "\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input type=\"text\" style=\"width:100px\" name=\"edit_maxsize\" id=\"edit_maxsize\" value=\"" + echo(item.maxsize) + "\">KB\r\n");
	ViewBuilder.Append("                    <select style=\"width:80px\" onchange=\"document.getElementById('edit_maxsize').value=this.value\">\r\n");
	ViewBuilder.Append("                            <option value=\"\">选择大小</option>\r\n");
	ViewBuilder.Append("                            <option value=\"100\">100K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"200\">200K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"300\">300K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"400\">400K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"500\">500K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"600\">600K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"800\">800K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"1024\">1M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"2048\">2M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"4096\">4M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"5120\">5M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"8192\">8M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"10240\">10M</option>\r\n");
	ViewBuilder.Append("                     </select>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input type=\"text\" style=\"width:130px\" name=\"edit_type\" id=\"edit_type\" value=\"" + echo(item.type) + "\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <a id=\"btn_edit\" style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"#\">更新</a>\r\n");
	ViewBuilder.Append("                    <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"attachtypemanage.aspx\">取消</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkdel\" name=\"chkdel\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");
	ViewBuilder.Append("                  <img src=\"" + echo(GetFileTypeIco(item.extension)) + "\" style=\"width:16px;height:16px;\" align=\"absmiddle\">\r\n");
	ViewBuilder.Append("                  " + echo(item.extension) + "\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(FPFile.FormatBytesStr(item.maxsize*1024)) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.type) + "</td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("                 <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"?id=" + echo(item.id) + "\">编辑</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end if
	}//end loop

	if (id==0)
	{
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td><input id=\"chkdel\" name=\"chkdel\" value=\"0\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input type=\"text\" style=\"width:200px\" name=\"extension\" id=\"extension\" value=\"\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input type=\"text\" style=\"width:100px\" name=\"maxsize\" id=\"maxsize\" value=\"\">KB\r\n");
	ViewBuilder.Append("                    <select style=\"width:80px\" onchange=\"document.getElementById('maxsize').value=this.value\">\r\n");
	ViewBuilder.Append("                            <option value=\"\">选择大小</option>\r\n");
	ViewBuilder.Append("                            <option value=\"100\">100K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"200\">200K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"300\">300K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"400\">400K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"500\">500K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"600\">600K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"800\">800K</option>\r\n");
	ViewBuilder.Append("                            <option value=\"1024\">1M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"2048\">2M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"4096\">4M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"5120\">5M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"8192\">8M</option>\r\n");
	ViewBuilder.Append("                            <option value=\"10240\">10M</option>\r\n");
	ViewBuilder.Append("                     </select>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input type=\"text\" style=\"width:130px\" name=\"type\" id=\"type\" value=\"\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <a id=\"btn_add\" style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"#\">添加</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end if
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </form>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
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
