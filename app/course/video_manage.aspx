<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Course.Controller.video_manage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Course.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>课程视频管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"css/exam.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/tab.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery-1.8.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	string navurl = "course_manage.aspx";
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,navurl)) + "|" + echo(courseinfo.name) + "," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.sprite').click(function () {   // 获取所谓的父行\r\n");
	ViewBuilder.Append("            $(this).toggleClass(\"sprite-selected\");  // 添加/删除图标\r\n");
	ViewBuilder.Append("            $('.child_' + $(this).attr('id')).toggle();  // 隐藏/显示所谓的子行\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.sprite-selected').click(function () {   // 获取所谓的父行\r\n");
	ViewBuilder.Append("            if ($(this).attr('class') == 'sprite-selected')\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                $(this).attr('class','sprite');\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                $(this).attr('class', 'sprite-selected');\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $('.child_' + $(this).attr('id')).toggle();  // 隐藏/显示所谓的子行\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btndisplay').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"display\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteChapter(chapterid) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要删除该章节吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#chapterid\").val(chapterid);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function SaveDisplay(chapterid) {\r\n");
	ViewBuilder.Append("        $(\"#action\").val(\"display\");\r\n");
	ViewBuilder.Append("        $(\"#chapterid\").val(chapterid);\r\n");
	ViewBuilder.Append("        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function DeleteVideo(videoid) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要删除该视频吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete_video\");\r\n");
	ViewBuilder.Append("            $(\"#videoid\").val(videoid);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"chapterid\" id=\"chapterid\" value=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"videoid\" id=\"videoid\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/add.gif) 2px 6px no-repeat\"><a href=\"chapter_add.aspx?courseid=" + echo(courseid) + "\">添加章节</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + echo(pagename) + "?courseid=" + echo(courseid) + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + echo(adminpath) + "statics/images/return.gif) 2px 6px no-repeat\"><a href=\"course_manage.aspx?sortid=" + echo(sortid) + "\">返回</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\">\r\n");
	ViewBuilder.Append("               视频管理：" + echo(courseinfo.name) + "\r\n");
	ViewBuilder.Append("              </li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");

	loop__id=0;
	foreach(ChapterInfo item in chapterlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr style=\"color:#1317fc;\" class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"50\" align=\"center\">序号</td>\r\n");
	ViewBuilder.Append("        	    <td align=\"left\" valign=\"middle\">" + echo(item.name) + "</td>\r\n");
	ViewBuilder.Append("              <td width=\"265\" style=\"text-align:left;\">&nbsp;\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"video_add.aspx?chapterid=" + echo(item.id) + "\">添加内容</a>&nbsp;|\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"chapter_add.aspx?id=" + echo(item.id) + "\">编辑章节</a>&nbsp;|\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"javascript:DeleteChapter(" + echo(item.id) + ")\">删除章节</a>&nbsp;|\r\n");
	ViewBuilder.Append("              <a style=\"color:#1317fc;\" href=\"javascript:SaveDisplay(" + echo(item.id) + ")\">保存排序</a>&nbsp;\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	int topicnum = 0;

	loop__id=0;
	foreach(VideoInfo video in GetVideoList(courseid,item.id))
	{
	loop__id++;
	 topicnum = topicnum+1;
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td width=\"50\" align=\"center\">\r\n");
	ViewBuilder.Append("                  <input id=\"display_" + echo(video.id) + "\" name=\"display_" + echo(video.id) + "\" style=\"text-align:center;width:36px;\" value=\"" + echo(topicnum) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">" + echo(video.name) + "</td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">&nbsp;\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"video_add.aspx?id=" + echo(video.id) + "\">编辑内容</a>&nbsp;|\r\n");
	ViewBuilder.Append("              <a style=\"color: #1317fc\" href=\"javascript:DeleteVideo(" + echo(video.id) + ")\">删除内容</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
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
