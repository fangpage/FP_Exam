<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.index" %>
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
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta content=\"IE=edge,chrome=1\" http-equiv=\"X-UA-Compatible\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<frameset rows=\"118,*\" cols=\"*\" framespacing=\"0\" frameborder=\"no\" border=\"0\" screen_capture_injected=\"true\">\r\n");
	ViewBuilder.Append("  <frame id=\"topframe\" name=\"topframe\" scrolling=\"No\" noresize=\"noresize\" src=\"top.aspx\">\r\n");
	ViewBuilder.Append("  <frameset id=\"attachucp\" name=\"attachucp\" framespacing=\"0\" border=\"0\" frameborder=\"no\" cols=\"198,9,*\" rows=\"*\">\r\n");
	ViewBuilder.Append("    <frame id=\"leftframe\" name=\"leftframe\" scrolling=\"auto\" noresize=\"\" border=\"0\" src=\"" + echo(lefturl) + "\">\r\n");
	ViewBuilder.Append("    <frame id=\"switchframe\" name=\"switchframe\" scrolling=\"no\" border=\"0\" noresize=\"\" src=\"swich.aspx\">\r\n");
	ViewBuilder.Append("    <frame id=\"mainframe\" name=\"mainframe\" scrolling=\"yes\" noresize=\"\" border=\"0\" src=\"" + echo(righturl) + "\">\r\n");
	ViewBuilder.Append("  </frameset>\r\n");
	ViewBuilder.Append("</frameset>\r\n");
	ViewBuilder.Append("<noframes>\r\n");
	ViewBuilder.Append("</noframes>\r\n");
	ViewBuilder.Append("</html>\r\n");
	Response.Write(ViewBuilder.ToString());
}
</script>
