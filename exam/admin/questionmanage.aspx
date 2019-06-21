<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.questionmanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Exam" %>
<%@ Import namespace="FP_Exam.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>考试题目管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitclear\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要清空该题库的试题吗？清空之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"clear\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btnmove\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"move\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnsearch\").click(function () {\r\n");
	ViewBuilder.Append("            index = $.layer({\r\n");
	ViewBuilder.Append("                type: 1,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '题目搜索',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                page: { dom: '#showsearch' },\r\n");
	ViewBuilder.Append("                area: ['400px', '200px']\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmsearch\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        var index2 = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnexport\").click(function () {\r\n");
	ViewBuilder.Append("          index2 = $.layer({\r\n");
	ViewBuilder.Append("            type: 1,\r\n");
	ViewBuilder.Append("            shade: [0],\r\n");
	ViewBuilder.Append("            fix: false,\r\n");
	ViewBuilder.Append("            title: '导出题目',\r\n");
	ViewBuilder.Append("            maxmin: false,\r\n");
	ViewBuilder.Append("            page: { dom: '#showexport' },\r\n");
	ViewBuilder.Append("            area: ['400px', '200px']\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_export_ok\").click(function () {\r\n");
	ViewBuilder.Append("          $(\"#action\").val(\"export\");\r\n");
	ViewBuilder.Append("          $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_export_cancel').click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index2);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#pagesize\").change(function () {\r\n");
	ViewBuilder.Append("          window.location.href = \"" + seturl("pagesize=")+ "&pagesize=\" + $(this).val();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteTopic(id) {\r\n");
	ViewBuilder.Append("        if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $('#chkid_' + id).attr(\"checked\", \"checked\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function EditStatus(qid, status) {\r\n");
	ViewBuilder.Append("        $.post(\"questionajax.aspx\", {\r\n");
	ViewBuilder.Append("            qid: qid,\r\n");
	ViewBuilder.Append("            status: status\r\n");
	ViewBuilder.Append("        }, function (data) {\r\n");
	ViewBuilder.Append("            if (data.error > 0) {\r\n");
	ViewBuilder.Append("                alert(data.message);\r\n");
	ViewBuilder.Append("                return;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            if (data.status == 0) {\r\n");
	ViewBuilder.Append("                $(\"#addtopic_\" + qid).html(\"<a href=\\\"javascript:EditStatus(\" + qid + \",1);\\\"><img title=\\\"点击添加随机\\\" src=\\\"" + echo(webpath) + "sites/exam/admin/images/state0.gif\\\" /></a>\");\r\n");
	ViewBuilder.Append("                layer.msg('取消随机成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else if (data.status = 1) {\r\n");
	ViewBuilder.Append("                $(\"#addtopic_\" + qid).html(\"<a href=\\\"javascript:EditStatus(\" + qid + \",0);\\\"><img title=\\\"点击取消随机\\\" src=\\\"" + echo(webpath) + "sites/exam/admin/images/state1.gif\\\" /></a>\");\r\n");
	ViewBuilder.Append("                layer.msg('选择随机成功!', 2, -1);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }, \"json\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");

	if (sortid>0)
	{
	ViewBuilder.Append("<li style=\"background: url(" + echo(adminpath) + "statics/images/add.gif) 2px 6px no-repeat\"><a href=\"questionadd.aspx?sortid=" + echo(sortid) + "\">添加</a></li>\r\n");
	}//end if
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/paper.gif) 2px 6px no-repeat\"><a id=\"btnmove\" href=\"javascript:void()\">移动</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/import.png) 2px 6px no-repeat\"><a href=\"questionimport.aspx?sortid=" + echo(sortid) + "\">导入</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/export.gif) 2px 6px no-repeat\"><a id=\"btnexport\" href=\"#\">导出</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/report.png) 2px 6px no-repeat\"><a id=\"btnsearch\" href=\"#\">搜索</a></li>\r\n");

	if (sortid>0)
	{
	ViewBuilder.Append("<li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pagename) + "?sortid=" + echo(sortid) + "\">刷新</a></li>\r\n");
	}//end if

	if (sortid==0)
	{
	ViewBuilder.Append("<li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pagename) + "?action=reset\">重置题库统计</a></li>\r\n");
	}//end if
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/clear.gif) 2px 6px no-repeat\"><a id=\"submitclear\" href=\"#\">清空</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\">\r\n");
	ViewBuilder.Append("              <strong>" + echo(sortinfo.name) + "：共有" + echo(pager.total) + "道题目</strong>\r\n");
	ViewBuilder.Append("              </li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	  <td align=\"left\" valign=\"middle\">\r\n");
	ViewBuilder.Append("              试题题目：<a href=\"?sortid=" + echo(sortid) + "\"><span style=\""+(type==""?echo(";"+"color:Red"):echo(""))+"\">[全部题型]</span></a>\r\n");

	if (FPArray.Contain(examconfig.questiontype,"TYPE_RADIO"))
	{
	ViewBuilder.Append("<a href=\"?sortid=" + echo(sortid) + "&type=TYPE_RADIO\">、<span style=\""+(type=="TYPE_RADIO"?echo(";"+"color:Red"):echo(""))+"\">[单选题]</span></a>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_MULTIPLE"))
	{
	ViewBuilder.Append("<a href=\"?sortid=" + echo(sortid) + "&type=TYPE_MULTIPLE\">、<span style=\""+(type=="TYPE_MULTIPLE"?echo(";"+"color:Red"):echo(""))+"\">[多选题]</span></a>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_TRUE_FALSE"))
	{
	ViewBuilder.Append("<a href=\"?sortid=" + echo(sortid) + "&type=TYPE_TRUE_FALSE\">、<span style=\""+(type=="TYPE_TRUE_FALSE"?echo(";"+"color:Red"):echo(""))+"\">[判断题]</span></a>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_BLANK"))
	{
	ViewBuilder.Append("<a href=\"?sortid=" + echo(sortid) + "&type=TYPE_BLANK\">、<span style=\""+(type=="TYPE_BLANK"?echo(";"+"color:Red"):echo(""))+"\">[填空题]</span></a>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_ANSWER"))
	{
	ViewBuilder.Append("<a href=\"?sortid=" + echo(sortid) + "&type=TYPE_ANSWER\">、<span style=\""+(type=="TYPE_ANSWER"?echo(";"+"color:Red"):echo(""))+"\">[问答题]</span></a>\r\n");
	}//end if

	if (FPArray.Contain(examconfig.questiontype,"TYPE_OPERATION"))
	{
	ViewBuilder.Append("<a href=\"?sortid=" + echo(sortid) + "&type=TYPE_OPERATION\">、<span style=\""+(type=="TYPE_OPERATION"?echo(";"+"color:Red"):echo(""))+"\">[操作题]</span></a>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("        	  <td width=\"120\">所在题库</td>\r\n");
	ViewBuilder.Append("              <td width=\"120\">所属知识点</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">随机题</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(ExamQuestion item in questionlist)
	{
	loop__id++;
	ViewBuilder.Append("<tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid_" + echo(item.id) + "\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">\r\n");
	ViewBuilder.Append("              <div style=\"font-weight:bold;\">" + echo((pager.pagesize*(pager.pageindex-1)+loop__id)) + "、\r\n");
	ViewBuilder.Append("                  [" + echo(item.typestr) + "]\r\n");
	ViewBuilder.Append("                  " + echo(FmAnswer(item.title)) + "\r\n");
	ViewBuilder.Append("              </div>\r\n");

	if (item.type=="TYPE_RADIO"||item.type=="TYPE_MULTIPLE")
	{
	ViewBuilder.Append("              " + echo(Option(item.option,item.ascount)) + "\r\n");
	}//end if
	ViewBuilder.Append("             <div style=\"height: 5px; overflow: hidden; border-bottom-color: rgb(204, 204, 204); border-bottom-width: 1px; border-bottom-style: dashed;\"></div>\r\n");
	ViewBuilder.Append("             <div class=\"tips\">\r\n");
	ViewBuilder.Append("             <div style=\"color:Red\">\r\n");

	if (item.type=="TYPE_TRUE_FALSE")
	{

	if (item.answer=="Y")
	{
	ViewBuilder.Append("                 [参考答案]正确\r\n");
	}
	else if (item.answer=="N")
	{
	ViewBuilder.Append("                 [参考答案]错误\r\n");
	}//end if
	}
	else
	{
	ViewBuilder.Append("                 [参考答案]" + echo(item.answer) + "\r\n");
	}//end if
	ViewBuilder.Append("             </div>\r\n");
	ViewBuilder.Append("             <span style=\"color:Red\">[难易程度]" + echo(item.diffstr) + "，考过次数：" + echo(item.exams) + "，做错次数：" + echo(item.wrongs) + "</span><br>\r\n");
	ViewBuilder.Append("             <span style=\"color:Red\">[答案解析]"+(item.explain!=""?echo(item.explain):echo("暂无解析"))+"</span> \r\n");
	ViewBuilder.Append("             </div>\r\n");
	ViewBuilder.Append("             </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.sortname) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.typename) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\" id=\"addtopic_" + echo(item.id) + "\">\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("<a href=\"javascript:EditStatus(" + echo(item.id) + ",0);\"><img title=\"点击取消随机\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/admin/images/state1.gif\"></a>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<a href=\"javascript:EditStatus(" + echo(item.id) + ",1);\"><img title=\"点击选择随机\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/admin/images/state0.gif\"></a>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"questionadd.aspx?id=" + echo(item.id) + "&backtype=" + echo(type) + "\">编辑</a><br><br>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"javascript:DeleteTopic(" + echo(item.id) + ")\">删除</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + echo(pager.total) + "道题目，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，\r\n");
	ViewBuilder.Append("         <select id=\"pagesize\" name=\"pagesize\" style=\"width:50px;\">\r\n");
	ViewBuilder.Append("           <option value=\"20\" "+(pager.pagesize==20?echo("selected"):echo(""))+">20</option>\r\n");
	ViewBuilder.Append("           <option value=\"50\" "+(pager.pagesize==50?echo("selected"):echo(""))+">50</option>\r\n");
	ViewBuilder.Append("           <option value=\"100\" "+(pager.pagesize==100?echo("selected"):echo(""))+">100</option>\r\n");
	ViewBuilder.Append("           <option value=\"200\" "+(pager.pagesize==200?echo("selected"):echo(""))+">200</option>\r\n");
	ViewBuilder.Append("           <option value=\"300\" "+(pager.pagesize==300?echo("selected"):echo(""))+">300</option>\r\n");
	ViewBuilder.Append("           <option value=\"500\" "+(pager.pagesize==500?echo("selected"):echo(""))+">500</option>\r\n");
	ViewBuilder.Append("           <option value=\"1000\" "+(pager.pagesize==1000?echo("selected"):echo(""))+">1000</option>\r\n");
	ViewBuilder.Append("         </select>道每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + echo(pager.pagenum) + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  <div id=\"showexport\" style=\"display:none\">\r\n");
	ViewBuilder.Append("    <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 400px;height:165px; margin: 0px;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"border: solid 1px #93C7D4; vertical-align:middle;height:100px;padding-left:10px;\">\r\n");
	ViewBuilder.Append("               <table style=\"height:40px;\">\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                    <td style=\"width:70px;text-align:right;\">导出类型：</td>\r\n");
	ViewBuilder.Append("                    <td>\r\n");
	ViewBuilder.Append("                       <input id=\"extype0\" name=\"extype\" type=\"radio\" checked=\"checked\" value=\"word\">Word文档&nbsp;&nbsp;&nbsp;&nbsp;<input id=\"extype1\" name=\"extype\" value=\"excel\" type=\"radio\">Excel表<br>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("               </table>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btn_export_ok\" value=\"导出\" id=\"btn_export_ok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("               <input type=\"button\" name=\"btn_export_cancel\" value=\"关闭\" id=\"btn_export_cancel\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("  <div id=\"showsearch\" style=\"display:none\">\r\n");
	ViewBuilder.Append("  <form id=\"frmsearch\" method=\"get\" name=\"frmsearch\" action=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"sortid\" id=\"sortid\" value=\"" + echo(sortid) + "\">\r\n");
	ViewBuilder.Append("    <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 400px;height:165px; margin: 0px;\">\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("          <td style=\"border: solid 1px #93C7D4; vertical-align:middle;height:100px;padding-left:10px;\">\r\n");
	ViewBuilder.Append("              <table style=\"height:40px;\">\r\n");
	ViewBuilder.Append("              <tr>\r\n");
	ViewBuilder.Append("                  <td style=\"width:70px;text-align:right;\">搜索：</td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");
	ViewBuilder.Append("                      <input name=\"keyword\" type=\"text\" value=\"" + echo(keyword) + "\" id=\"keyword\" style=\"height:21px;width:250px;\">\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("              </table>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("          <td colspan=\"3\" height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("              <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("              <input type=\"button\" name=\"btnback\" value=\"关闭\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("   </form>\r\n");
	ViewBuilder.Append("   </div>\r\n");
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
