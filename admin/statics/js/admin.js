//删除
function Delete() {
    return confirm('您确认要删除吗？删除后将无法进行恢复。');
}

function PageBack(backurl)
{
    window.location.href = backurl;
}

//设置导航栏
function PageNav(navstr) {
    var pageurl = '<a href="desktop.aspx" target="mainframe" class="daohanglink">后台桌面</a>';
    if (navstr != '') {
        var navs = navstr.split("|");
        for (var i = 0; i < navs.length; i++) {
            var na = navs[i].split(",");
            if (na[1] == '' || na[1] == '#') {
                pageurl += '<a href="' + na[1] + '" class="daohanglink">' + na[0] + '</a>';
            }
            else {
                pageurl += '<a href="' + na[1] + '" target="mainframe" class="daohanglink">' + na[0] + '</a>';
            }
        }
    }

    $("#pagenav", window.parent.frames["topframe"].document).html(pageurl)
}

//设置导航栏
function LeftNav(navstr) {
    var pageurl = '<a href="global/sysmenumanage.aspx" target="mainframe">菜单管理</a>';

    if (navstr != '') {
        var navs = navstr.split(",");
        pageurl = '<a href="' + navs[1] + '" target="mainframe">' + navs[0] + '</a>';
    }

    $("#leftnav", window.parent.frames["topframe"].document).html(pageurl)
}

// 输出FLASH
function WriteFlash(url,width,height){
    document.write('<object id="MyFlash" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="' + width + '" height="' + height + '">');
    document.write('<param name="movie" value="' + url + '">');
    document.write('<param name="wmode" value="opaque">');
    document.write('<param name="menu" value="false">');
    document.write('<param name="quality" value="high">');
    document.write('<embed src="' + url + '" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="' + width + '" height="' + height + '"></embed>');
    document.write('</object>');
}

//选项卡
function setTab(name, cursel, n) {
    for (i = 1; i <= n; i++) {
        var menu = document.getElementById(name + i);
        var con = document.getElementById("con_" + name + "_" + i);
        menu.className = i == cursel ? "active" : "normal";
        con.style.display = i == cursel ? "block" : "none";
    }
}