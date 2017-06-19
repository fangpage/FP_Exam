$(function () {
    $(".deskIcon").find("li").hover(function () {
        $(this).addClass("desktop_icon_over");
    },
    function () {
        $(this).removeClass("desktop_icon_over");
    })
    .click(function () {
        var title = this.getAttribute("title");
        var href = this.getAttribute("path"), target = this.getAttribute("target");

        if (target == "_blank") {
            window.open(href);
        }
        else if(target == "_self")
        {
            window.location.href = href;
        }
        else
        {
            var winwidth = this.getAttribute("winwidth"), winheight = this.getAttribute("winheight");

            if (winwidth == 0) {
                winwidth = 650;
            }

            if (winheight == 0) {
                winheight = 500;
            }

            if (href != "") {
                $.layer({
                    type: 2,
                    shade: [0],
                    fix: false,
                    title: title,
                    maxmin: false,
                    iframe: { src: href },
                    area: [winwidth, winheight]
                });
            }
        }
    })
})
