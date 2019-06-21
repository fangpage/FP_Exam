<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.watermarkset" %>
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
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>上传图片配置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            PageNav(\"上传图片配置,global/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">上传图片配置</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("            <td class=\"tdbg\">\r\n");
	ViewBuilder.Append("            <table cellspacing=\"0\" cellpadding=\"3\" width=\"100%\" border=\"0\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 图片最大宽度：</td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"attachimgmaxwidth\" type=\"text\" value=\"" + echo(sysconfiginfo.attachimgmaxwidth) + "\" id=\"attachimgmaxwidth\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 图片最大高度：</td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"attachimgmaxheight\" type=\"text\" value=\"" + echo(sysconfiginfo.attachimgmaxheight) + "\" id=\"attachimgmaxheight\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 格式图片质量：</td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"attachimgquality\" type=\"text\" value=\"" + echo(sysconfiginfo.attachimgquality) + "\" id=\"attachimgquality\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 图片缩略宽度：</td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"thumbnailwidth\" type=\"text\" value=\"" + echo(sysconfiginfo.thumbnailwidth) + "\" id=\"thumbnailwidth\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 图片缩略高度：</td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"thumbnailheight\" type=\"text\" value=\"" + echo(sysconfiginfo.thumbnailheight) + "\" id=\"thumbnailheight\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 启用水印功能： </td>\r\n");
	ViewBuilder.Append("                    <td><input id=\"allowwatermark\" name=\"allowwatermark\" type=\"radio\" \r\n");

	if (sysconfiginfo.allowwatermark==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">是<input id=\"allowwatermark\" name=\"allowwatermark\" type=\"radio\" \r\n");

	if (sysconfiginfo.allowwatermark==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">否</td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 水印图片文件：</td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"watermarkpic\" type=\"text\" value=\"" + echo(sysconfiginfo.watermarkpic) + "\" id=\"watermarkpic\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 水印透明程度： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input name=\"watermarkopacity\" type=\"text\" value=\"" + echo(sysconfiginfo.watermarkopacity) + "\" id=\"watermarkopacity\" style=\"height:21px;width:400px;\"></td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"> 选择水印位置： </td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\">\r\n");
	ViewBuilder.Append("                     <table width=\"256\" height=\"207\" border=\"0\" background=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/flower.jpg\">\r\n");
	ViewBuilder.Append("                          <tr>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">\r\n");
	ViewBuilder.Append("                              <b>#1</b></td>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==2)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"2\">\r\n");
	ViewBuilder.Append("                              <b>#2</b></td>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==3)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"3\">\r\n");
	ViewBuilder.Append("                              <b>#3</b></td>\r\n");
	ViewBuilder.Append("                          </tr>\r\n");
	ViewBuilder.Append("                          <tr>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==4)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"4\">\r\n");
	ViewBuilder.Append("                              <b>#4</b></td>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==5)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"5\">\r\n");
	ViewBuilder.Append("                              <b>#5</b></td>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==6)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"6\">\r\n");
	ViewBuilder.Append("                              <b>#6</b></td>\r\n");
	ViewBuilder.Append("                          </tr>\r\n");
	ViewBuilder.Append("                          <tr>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==7)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"7\">\r\n");
	ViewBuilder.Append("                              <b>#7</b></td>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==8)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"8\">\r\n");
	ViewBuilder.Append("                              <b>#8</b></td>\r\n");
	ViewBuilder.Append("                            <td width=\"33%\" align=\"center\"><input type=\"radio\" id=\"watermarkstatus\" name=\"watermarkstatus\" \r\n");

	if (sysconfiginfo.watermarkstatus==9)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"9\">\r\n");
	ViewBuilder.Append("                              <b>#9</b></td>\r\n");
	ViewBuilder.Append("                          </tr>\r\n");
	ViewBuilder.Append("                        </table>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                  <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                    <td height=\"25\"><input type=\"submit\" name=\"btnSave\" value=\"保存\" id=\"btnSave\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                  </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("              </table></td>\r\n");
	ViewBuilder.Append("          </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      <br>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
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
