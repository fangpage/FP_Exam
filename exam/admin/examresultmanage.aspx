<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examresultmanage" %>
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
	ViewBuilder.Append("<title>考试成绩管理</title>\r\n");
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
	ViewBuilder.Append("            if (confirm(\"您确定要给所选的考生的成绩吗？\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#btnexport\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"export\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("       })\r\n");
	ViewBuilder.Append("      $(\"#btn_exppaper\").click(function () {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要批量导出考生试卷吗？\\r\\n当前导出操作可能要运行一段时间，在此期间不要进行其他操作。\")) {\r\n");
	ViewBuilder.Append("          $(\"#action\").val(\"exppaper\");\r\n");
	ViewBuilder.Append("          $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("      })\r\n");
	ViewBuilder.Append("      $(\"#btnreport\").click(function () {\r\n");
	ViewBuilder.Append("          $(\"#action\").val(\"report\");\r\n");
	ViewBuilder.Append("          $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("      })\r\n");
	ViewBuilder.Append("      $(\"#btn_exopera\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"exopera\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnsearch\").click(function () {\r\n");
	ViewBuilder.Append("            index = $.layer({\r\n");
	ViewBuilder.Append("                type: 1,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '考生搜索',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                page: { dom: '#showsearch' },\r\n");
	ViewBuilder.Append("                area: ['400px', '290px']\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#frmsearch\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"" + echo(sortinfo.name) + "," + echo(rawpath) + "exammanage.aspx?sortid=" + echo(examinfo.sortid) + "|" + echo(examinfo.name) + "," + echo(rawpath) + "exammanage.aspx?sortid=" + echo(examinfo.sortid) + "" + echo(pagenav) + "|考试成绩管理," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteExam(id) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定删除该考生的成绩吗？\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $('#chkid_' + id).attr(\"checked\", \"checked\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
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
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/xls.gif) 2px 6px no-repeat\"><a id=\"btnexport\" href=\"#\">导出成绩表</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/exppaper.gif) 2px 6px no-repeat\"><a id=\"btn_exppaper\" href=\"#\">导出考生试卷</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/question.gif) 2px 6px no-repeat\"><a id=\"btnreport\" href=\"#\">考试分析报告</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/question.gif) 2px 6px no-repeat\"><a id=\"btn_exopera\" href=\"#\">答案分析报告</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/report.png) 2px 6px no-repeat\"><a id=\"btnsearch\" href=\"#\">搜索</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"examresultmanage.aspx?examid=" + echo(examid) + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/return.gif) 2px 6px no-repeat\"><a href=\"exammanage.aspx?sortid=" + echo(examinfo.sortid) + "\">返回</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\">\r\n");
	ViewBuilder.Append("              <strong>\r\n");
	ViewBuilder.Append("              " + echo(examinfo.name) + "：考试人数" + echo(pager.total) + "人</strong>\r\n");
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
	ViewBuilder.Append("        	  <td>登录名</td>\r\n");
	ViewBuilder.Append("        	  <td>姓名</td>\r\n");
	ViewBuilder.Append("              <td>所在部门</td>\r\n");
	ViewBuilder.Append("              <td>考试得分</td>\r\n");
	ViewBuilder.Append("              <td>开始时间</td>\r\n");
	ViewBuilder.Append("              <td>考试用时</td>\r\n");
	ViewBuilder.Append("              <td>考试状态</td>\r\n");
	ViewBuilder.Append("              <td>是否阅卷</td>\r\n");
	ViewBuilder.Append("              <td width=\"110\">操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(ExamResult item in examresultlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid_" + echo(item.id) + "\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td>" + echo(item.username) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.realname) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.departname) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.score) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.status>=0)
	{
	ViewBuilder.Append("                  " + echo(item.examdatetime,"yyyy-MM-dd HH:mm:ss") + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                  ----\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.status>=0)
	{
	ViewBuilder.Append("                  " + echo(GetTime(item.utime)) + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                  ----\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.status>=1)
	{
	ViewBuilder.Append("              <span style=\"color:#1317fc\">已交卷</span> \r\n");
	}
	else if (item.status==0)
	{
	ViewBuilder.Append("              <span style=\"color:#00ff21\">未交卷</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <span style=\"color:#ff0000\">未考试</span>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.status==2)
	{
	ViewBuilder.Append("              <span style=\"color:#1317fc\">已阅卷</span>\r\n");
	}
	else if (item.status==1)
	{
	ViewBuilder.Append("              <span style=\"color:#00ff21\">未阅卷</span>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"javascript:DeleteExam(" + echo(item.id) + ")\">删除</a>&nbsp;|\r\n");

	if (item.id==0)
	{
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"javascript:alert('对不起，该考生尚未参加考试');\" target=\"_blank\">阅卷</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"" + echo(webpath) + "exam/examread.aspx?resultid=" + echo(item.id) + "\" target=\"_blank\">阅卷</a>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + echo(pager.total) + "条记录，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，" + echo(pager.pagesize) + "条每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + echo(pager.pagenum) + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("  <div id=\"showsearch\" style=\"display:none\">\r\n");
	ViewBuilder.Append("  <form id=\"frmsearch\" method=\"get\" name=\"frmsearch\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"examid\" id=\"examid\" value=\"" + echo(examid) + "\">\r\n");
	ViewBuilder.Append("  <table style=\"width:400px;height:250px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 姓名： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\"><input name=\"keyword\" type=\"text\" value=\"" + echo(keyword) + "\" id=\"keyword\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 部门： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\"><input name=\"deptname\" type=\"text\" value=\"" + echo(deptname) + "\" id=\"keyword\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 成绩： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">\r\n");
	ViewBuilder.Append("              <input name=\"score_start\" type=\"text\" value=\"" + echo(score_start) + "\" id=\"score_start\" style=\"height:21px;width:100px;\">至\r\n");
	ViewBuilder.Append("              <input name=\"score_end\" type=\"text\" value=\"" + echo(score_end) + "\" id=\"score_end\" style=\"height:21px;width:100px;\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 时间： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">\r\n");
	ViewBuilder.Append("              <input name=\"startdatetime\" type=\"text\" value=\"" + echo(startdatetime) + "\" id=\"score_start\" style=\"height:21px;width:100px;\">至\r\n");
	ViewBuilder.Append("              <input name=\"enddatetime\" type=\"text\" value=\"" + echo(enddatetime) + "\" id=\"score_end\" style=\"height:21px;width:100px;\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 状态： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">\r\n");
	ViewBuilder.Append("              <input id=\"status\" name=\"status\" "+(FPArray.Contain(status,-1)?echo("checked"):echo(""))+" value=\"-1\" type=\"checkbox\">未考试\r\n");
	ViewBuilder.Append("              <input id=\"status\" name=\"status\" "+(FPArray.Contain(status,0)?echo("checked"):echo(""))+" value=\"0\" type=\"checkbox\">未交卷\r\n");
	ViewBuilder.Append("              <input id=\"status\" name=\"status\" "+(FPArray.Contain(status,1)?echo("checked"):echo(""))+" value=\"1\" type=\"checkbox\">已交卷\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 排序： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">\r\n");
	ViewBuilder.Append("              <input id=\"orderby\" name=\"orderby\" "+(orderby==0?echo("checked"):echo(""))+" value=\"0\" type=\"radio\">默认\r\n");
	ViewBuilder.Append("              <input id=\"orderby\" name=\"orderby\" "+(orderby==1?echo("checked"):echo(""))+" value=\"1\" type=\"radio\">降序\r\n");
	ViewBuilder.Append("              <input id=\"orderby\" name=\"orderby\" "+(orderby==2?echo("checked"):echo(""))+" value=\"2\" type=\"radio\">升序\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td height=\"40\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnback\" value=\"取消\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("   </table>\r\n");
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
