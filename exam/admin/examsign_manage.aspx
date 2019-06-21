<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Exam.Controller.examsign_manage" %>
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
	ViewBuilder.Append("<title>考试报名审核</title>\r\n");
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
	ViewBuilder.Append("          $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_delete\").click(function () {\r\n");
	ViewBuilder.Append("          if (confirm(\"你确定要删除吗？删除后将无法恢复。\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("          }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_audit\").click(function () {\r\n");
	ViewBuilder.Append("          if (confirm(\"你确定通过审核吗？\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"audit\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("          }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_unaudit\").click(function () {\r\n");
	ViewBuilder.Append("          if (confirm(\"你确定取消审核吗？\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"unaudit\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("          }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnexport\").click(function () {\r\n");
	ViewBuilder.Append("          $(\"#action\").val(\"export\");\r\n");
	ViewBuilder.Append("          $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btnsearch\").click(function () {\r\n");
	ViewBuilder.Append("          index = $.layer({\r\n");
	ViewBuilder.Append("            type: 1,\r\n");
	ViewBuilder.Append("            shade: [0],\r\n");
	ViewBuilder.Append("            fix: false,\r\n");
	ViewBuilder.Append("            title: '报名搜索',\r\n");
	ViewBuilder.Append("            maxmin: false,\r\n");
	ViewBuilder.Append("            page: { dom: '#showsearch' },\r\n");
	ViewBuilder.Append("            area: ['400px', '220px']\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("          layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("          $(\"#frmsearch\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#pagesize\").change(function () {\r\n");
	ViewBuilder.Append("          window.location.href = \"examsign_manage.aspx?sortid=" + echo(sortid) + "&examid=" + echo(examid) + "&pagesize=\"+$(this).val();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"考试报名审核," + echo(pageurl) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
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
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"btn_delete\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/have.png) 2px 6px no-repeat\"><a id=\"btn_audit\" href=\"#\">审核通过</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/no.png) 2px 6px no-repeat\"><a id=\"btn_unaudit\" href=\"#\">审核不通过</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/xls.gif) 2px 6px no-repeat\"><a id=\"btnexport\" href=\"#\">导出</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(webpath) + "" + echo(sitepath) + "/admin/images/report.png) 2px 6px no-repeat\"><a id=\"btnsearch\" href=\"#\">搜索</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pageurl) + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/return.gif) 2px 6px no-repeat\"><a href=\"exammanage.aspx?sortid=" + echo(sortid) + "\">返回</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\">\r\n");
	ViewBuilder.Append("              <strong>\r\n");
	ViewBuilder.Append("                考试报名审核\r\n");
	ViewBuilder.Append("              </strong>\r\n");
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
	ViewBuilder.Append("            <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("            <td>准考证号</td>\r\n");
	ViewBuilder.Append("        	  <td>姓名</td>\r\n");
	ViewBuilder.Append("        	  <td>性别</td>\r\n");
	ViewBuilder.Append("            <td>身份证号</td>\r\n");
	ViewBuilder.Append("            <td>手机号</td>\r\n");
	ViewBuilder.Append("            <td>工作单位</td>\r\n");
	ViewBuilder.Append("            <td>报名时间</td>\r\n");
	ViewBuilder.Append("            <td width=\"60\">审核状态</td>\r\n");
	ViewBuilder.Append("            <td width=\"60\">操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(ExamSignInfo item in examsignlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid_" + echo(item.id) + "\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.ikey) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");
	ViewBuilder.Append("                <a href=\"../examsign_audit.aspx?id=" + echo(item.id) + "\" target=\"_blank\">" + echo(item.signer["uname"]) + "</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.signer["sex"]) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.signer["idcard"]) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.signer["mobile"]) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.signer["company"]) + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm") + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("                 <span style=\"color:#808080\">未审核</span>\r\n");
	}
	else if (item.status==2)
	{
	ViewBuilder.Append("                 <span style=\"color:#1317fc\">已通过</span>\r\n");
	}
	else if (item.status==3)
	{
	ViewBuilder.Append("                 <span style=\"color:#ff0000\">未通过</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                 未提交\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"../examsign_audit.aspx?id=" + echo(item.id) + "\" target=\"_blank\">查看</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + echo(pager.total) + "条记录，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，\r\n");
	ViewBuilder.Append("         <select id=\"pagesize\" name=\"pagesize\" style=\"width:50px;\">\r\n");
	ViewBuilder.Append("           <option value=\"20\" "+(pager.pagesize==20?echo("selected"):echo(""))+">20</option>\r\n");
	ViewBuilder.Append("           <option value=\"50\" "+(pager.pagesize==50?echo("selected"):echo(""))+">50</option>\r\n");
	ViewBuilder.Append("           <option value=\"100\" "+(pager.pagesize==100?echo("selected"):echo(""))+">100</option>\r\n");
	ViewBuilder.Append("           <option value=\"200\" "+(pager.pagesize==200?echo("selected"):echo(""))+">200</option>\r\n");
	ViewBuilder.Append("           <option value=\"300\" "+(pager.pagesize==300?echo("selected"):echo(""))+">300</option>\r\n");
	ViewBuilder.Append("           <option value=\"500\" "+(pager.pagesize==500?echo("selected"):echo(""))+">500</option>\r\n");
	ViewBuilder.Append("           <option value=\"1000\" "+(pager.pagesize==1000?echo("selected"):echo(""))+">1000</option>\r\n");
	ViewBuilder.Append("         </select>\r\n");
	ViewBuilder.Append("         条每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + echo(pager.pagenum) + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("  <div id=\"showsearch\" style=\"display:none\">\r\n");
	ViewBuilder.Append("  <form id=\"frmsearch\" method=\"get\" name=\"frmsearch\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"examid\" id=\"examid\" value=\"" + echo(examid) + "\">\r\n");
	ViewBuilder.Append("  <table style=\"width:400px;height:180px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 姓名： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\"><input name=\"uname\" type=\"text\" value=\"" + echo(uname) + "\" id=\"uname\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 手机号： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\"><input name=\"mobile\" type=\"text\" value=\"" + echo(mobile) + "\" id=\"mobile\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 身份证号： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\"><input name=\"idcard\" type=\"text\" value=\"" + echo(idcard) + "\" id=\"idcard\" style=\"height:21px;width:250px;\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width:80px;text-align:right;height:30px;\"> 审核状态： </td>\r\n");
	ViewBuilder.Append("            <td align=\"left\">\r\n");
	ViewBuilder.Append("              <input name=\"status\" type=\"checkbox\" "+(FPArray.Contain(status,0)?echo("checked"):echo(""))+" value=\"0\" id=\"status0\">未提交\r\n");
	ViewBuilder.Append("              <input name=\"status\" type=\"checkbox\" "+(FPArray.Contain(status,1)?echo("checked"):echo(""))+" value=\"1\" id=\"status1\">未审核\r\n");
	ViewBuilder.Append("              <input name=\"status\" type=\"checkbox\" "+(FPArray.Contain(status,2)?echo("checked"):echo(""))+" value=\"2\" id=\"status2\">已通过\r\n");
	ViewBuilder.Append("              <input name=\"status\" type=\"checkbox\" "+(FPArray.Contain(status,3)?echo("checked"):echo(""))+" value=\"3\" id=\"status3\">未通过\r\n");
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
