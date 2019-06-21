<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.attachmanage" %>
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
	ViewBuilder.Append("<title>上传附件管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/datagrid.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btn_delete\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"您确定要删除吗？删除之后将无法进行恢复。\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btn_download\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"您确定要批量下载所选附件吗？下载期间请不要做其他操作。\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"download\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"上传文件管理,global/" + echo(pagename) + "\");\r\n");
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
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"btn_delete\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/download.gif) 2px 6px no-repeat\"><a id=\"btn_download\" href=\"#\">下载</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/search.png) 2px 6px no-repeat\"><a id=\"btn_search\" href=\"#\">搜索</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"attachmanage.aspx\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>上传文件管理</strong></li>\r\n");
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
	ViewBuilder.Append("        	    <td>文件名称</td>\r\n");
	ViewBuilder.Append("        	    <td width=\"100\">大小</td>\r\n");
	ViewBuilder.Append("        	    <td width=\"130\">上传时间</td>\r\n");
	ViewBuilder.Append("        	    <td width=\"100\">上传人</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">阅读数</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">下载数</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">状态</td>\r\n");
	ViewBuilder.Append("              <td width=\"160\">操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(AttachInfo item in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("<tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid_" + echo(item.id) + "\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td valign=\"middle\" align=\"left\">\r\n");
	ViewBuilder.Append("                  <img src=\"" + echo(item.icon) + "\" style=\"width:16px;height:16px;\" alt=\"\" align=\"absmiddle\">\r\n");
	ViewBuilder.Append("                  <a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\">" + echo(item.name,filename,"<span style=\"background-color:#ffd800;\">"+filename+"</span>") + "</a>\r\n");
	ViewBuilder.Append("                  <input id=\"file_" + echo(item.id) + "\" name=\"file_" + echo(item.id) + "\" value=\"" + echo(item.name) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.size) + " </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.uploadtime) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.realname,author,"<span style=\"background-color:#ffd800;\">"+author+"</span>") + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.reads) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.downloads) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.postid>0)
	{
	ViewBuilder.Append("<span style=\"color:#0094ff\">已使用</span>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<span style=\"color:#ff0000\">未使用</span>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");
	ViewBuilder.Append("                  <a class=\"rename\" node-data=\"" + echo(item.id) + "\" href=\"#\">重命名</a>\r\n");
	ViewBuilder.Append("                  <a class=\"delete\" node-data=\"" + echo(item.id) + "\" href=\"#\">删除</a>\r\n");
	ViewBuilder.Append("                  <a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\">下载</a>\r\n");

	if (plugininfo.guid!="")
	{
	ViewBuilder.Append("<a href=\"" + echo(plupath) + "" + echo(plugininfo.installpath) + "/index.aspx?aid=" + echo(item.id) + "\" target=\"_blank\">浏览</a>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<a href=\"" + echo(item.filename) + "\" target=\"_blank\">浏览</a>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </form>\r\n");
	ViewBuilder.Append("       </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + echo(pager.total) + "条记录，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，" + echo(pager.pagesize) + "条每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + echo(pager.pagenum) + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <div id=\"divrename\" style=\"display:none\">\r\n");
	ViewBuilder.Append("      <table style=\"width:400px;height:163px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td style=\"width:80px;text-align:right;\"> 重命名： </td>\r\n");
	ViewBuilder.Append("                <td align=\"left\">\r\n");
	ViewBuilder.Append("                    <input name=\"filename\" type=\"text\" value=\"\" id=\"filename\" style=\"height:21px;width:250px;\">\r\n");
	ViewBuilder.Append("                    <input id=\"aid\" name=\"aid\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td height=\"80\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("                    <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("                    <input type=\"button\" name=\"btnback\" value=\"取消\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("  <div id=\"showsearch\" style=\"display:none\">\r\n");
	ViewBuilder.Append("  <form id=\"frmsearch\" method=\"get\" name=\"frmsearch\" action=\"\">\r\n");
	ViewBuilder.Append("  <table style=\"width:400px;height:163px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"width:80px;height:30px;text-align:right;\"> 文件名称： </td>\r\n");
	ViewBuilder.Append("                <td align=\"left\"><input name=\"filename\" type=\"text\" value=\"" + echo(filename) + "\" id=\"filename\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"width:80px;height:30px;text-align:right;\"> 上传人： </td>\r\n");
	ViewBuilder.Append("                <td align=\"left\"><input name=\"author\" type=\"text\" value=\"" + echo(author) + "\" id=\"author\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td height=\"60\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btn_search_ok\" value=\"确定\" id=\"btn_search_ok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btn_search_back\" value=\"取消\" id=\"btn_search_back\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("   </table>\r\n");
	ViewBuilder.Append("   </form>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       $(function () {\r\n");
	ViewBuilder.Append("           var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("           $('.rename').click(function () {\r\n");
	ViewBuilder.Append("               var aid = $(this).attr('node-data');\r\n");
	ViewBuilder.Append("               var filename = $(\"#file_\" + aid).val();\r\n");
	ViewBuilder.Append("               $(\"#filename\").val(filename);\r\n");
	ViewBuilder.Append("               $(\"#aid\").val(aid);\r\n");
	ViewBuilder.Append("               index = $.layer({\r\n");
	ViewBuilder.Append("                   type: 1,\r\n");
	ViewBuilder.Append("                   shade: [0],\r\n");
	ViewBuilder.Append("                   fix: false,\r\n");
	ViewBuilder.Append("                   title: '附件重命名',\r\n");
	ViewBuilder.Append("                   maxmin: false,\r\n");
	ViewBuilder.Append("                   page: { dom: '#divrename' },\r\n");
	ViewBuilder.Append("                   area: ['400px', '200px']\r\n");
	ViewBuilder.Append("               });\r\n");
	ViewBuilder.Append("           });\r\n");
	ViewBuilder.Append("           $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("               layer.close(index);\r\n");
	ViewBuilder.Append("           });\r\n");
	ViewBuilder.Append("           $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("               var aid = $(\"#divrename\").find(\"#aid\").val();\r\n");
	ViewBuilder.Append("               var filename = $(\"#divrename\").find(\"#filename\").val();\r\n");
	ViewBuilder.Append("               $.ajax({\r\n");
	ViewBuilder.Append("                   type: 'post',\r\n");
	ViewBuilder.Append("                   url: \"" + echo(plupath) + "attach/rename.aspx\",\r\n");
	ViewBuilder.Append("                   data: { \"aid\": aid, \"filename\": filename },\r\n");
	ViewBuilder.Append("                   dataType: \"json\",\r\n");
	ViewBuilder.Append("                   success: function (data) {\r\n");
	ViewBuilder.Append("                       if (data.errcode == 0) {\r\n");
	ViewBuilder.Append("                           layer.close(index);\r\n");
	ViewBuilder.Append("                           layer.msg('附件重命名成功', 0, 1);\r\n");
	ViewBuilder.Append("                           setTimeout(function () {\r\n");
	ViewBuilder.Append("                               window.location.href = \"" + echo(rawurl) + "\";\r\n");
	ViewBuilder.Append("                           }, 2000);\r\n");
	ViewBuilder.Append("                       }\r\n");
	ViewBuilder.Append("                       else {\r\n");
	ViewBuilder.Append("                           alert(data.errmsg);\r\n");
	ViewBuilder.Append("                       }\r\n");
	ViewBuilder.Append("                   }\r\n");
	ViewBuilder.Append("               });\r\n");
	ViewBuilder.Append("           });\r\n");
	ViewBuilder.Append("           $('.delete').click(function () {\r\n");
	ViewBuilder.Append("               var aid = $(this).attr('node-data');\r\n");
	ViewBuilder.Append("               if (confirm(\"您确定要删除该附件吗？删除之后将无法进行恢复。\")) {\r\n");
	ViewBuilder.Append("                   $(\"#chkid_\" + aid).attr(\"checked\", true);\r\n");
	ViewBuilder.Append("                   $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                   $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("               }\r\n");
	ViewBuilder.Append("           });\r\n");
	ViewBuilder.Append("           var index2 = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("           $(\"#btn_search\").click(function () {\r\n");
	ViewBuilder.Append("               index2 = $.layer({\r\n");
	ViewBuilder.Append("                   type: 1,\r\n");
	ViewBuilder.Append("                   shade: [0],\r\n");
	ViewBuilder.Append("                   fix: false,\r\n");
	ViewBuilder.Append("                   title: '附件搜索',\r\n");
	ViewBuilder.Append("                   maxmin: false,\r\n");
	ViewBuilder.Append("                   page: { dom: '#showsearch' },\r\n");
	ViewBuilder.Append("                   area: ['400px', '195px']\r\n");
	ViewBuilder.Append("               });\r\n");
	ViewBuilder.Append("           })\r\n");
	ViewBuilder.Append("           $('#btn_search_back').click(function () {\r\n");
	ViewBuilder.Append("               layer.close(index2);\r\n");
	ViewBuilder.Append("           });\r\n");
	ViewBuilder.Append("           $('#btn_search_ok').click(function () {\r\n");
	ViewBuilder.Append("               $(\"#frmsearch\").submit();\r\n");
	ViewBuilder.Append("           });\r\n");
	ViewBuilder.Append("       })\r\n");
	ViewBuilder.Append("    </");
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
