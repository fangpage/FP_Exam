var resultid, isvideo, outs = 0, isNeedSkip = false;
$(function () {
    var pos = 0, image = [];
    $(window).scroll(function () {
        var wst = $(window).scrollTop() >= 67, hbx = $(".hbx1:eq(0)"), hbx2 = hbx.nextAll(".hbx2,.wp"), fixed = hbx.hasClass("fixed"), rnav = $(".rnav"), niceback = window.niceback || function () { };
        if (wst) {
            if (!fixed) {
                hbx.addClass("fixed");
                hbx.after("<div class='hbx1 _hbx1_'/>");
                hbx2.addClass("hbx2_f");
                rnav.size() && rnav.addClass("rnavf") && $(window).resize(), niceback(true);;
            }
        } else {
            fixed && (hbx.removeClass("fixed") && $("._hbx1_").remove() && hbx2.removeClass("hbx2_f") && rnav.size() && rnav.removeClass("rnavf") && $(window).resize(), niceback(false));
        }
    });
    $(".rnav").size() && $(window).resize(function () {
        var rnav = $(".rnav"), fixed = rnav.hasClass("rnavf");
        if (fixed) {
            rnav.css("right", ($("body").width() - 960) / 2 + "px");
        } else {
            rnav.css("right", "");
        }
    });
    
    resultid=$("#resultid").val();
});

//提交重新阅卷
function ExamRepeatSave() {
    var ele = dialog1("正在提交阅卷，提交期间请不要做任何操作...", "selfsave");
    var options = {
        url: 'examrepeatpost.aspx', //提交给哪个执行
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1(data.errmsg, "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2");
                window.location.reload();
            }, 2000);
        },
        error: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1("阅卷提交失败! ", "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2");
            }, 3000);
        }
    };
    $('#testProcessForm').ajaxSubmit(options);
    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
}

//提交重新评分
function ExamScoreSave() {
    var ele = dialog1("正在重新评分，提交期间请不要做任何操作...", "selfsave");
    var options = {
        url: 'examreadpost.aspx?action=repeat', //提交给哪个执行
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1(data.errmsg, "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2");
                window.location.reload();
            }, 2000);
        },
        error: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1("阅卷提交失败! ", "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2");
            }, 3000);
        }
    };
    $('#testProcessForm').ajaxSubmit(options);
    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
}

//提交阅卷
function ExamReadSave() {
    var ele = dialog1("正在提交阅卷，提交期间请不要做任何操...", "selfsave");
    var options = {
        url: 'examreadpost.aspx?action=read', //提交给哪个执行
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1(data.errmsg, "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2"); 
                window.location.reload();
            }, 2000);
        },
        error: function (data) {
            dialog1(false, "selfsave");
            ele = dialog1("阅卷提交失败! ", "selfsave2");
            setTimeout(function () {
                dialog1(false, "selfsave2"); 
            }, 3000);
        }
    };
    $('#testProcessForm').ajaxSubmit(options);
    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
}

//弹出提示框
function dialog1(s,name){
	var ele = dialog1[name];
	if(!s){
		ele && ele.dialog("destroy") && ele.remove();
		dialog1[name] = null;
		return;
	}
	if (!ele) {
		ele = $("<div class='dialog1'>" + s + "</div>");
		$("body").append(ele);
		dialog1[name] = ele;
	}
	var st = $(window).scrollTop();
	ele.dialog({ draggable: false,closeText: "", disabled: true, title: false,minHeight: 20,minWidth: 100,position: ["center","center"] });
	$(window).scrollTop(st);
	return ele;
}

//点击选择答案时，保存答安，对于选持题和判断题来说
$(".dAn label").live("hover", function (event) {
    if (event.type == 'mouseover') {
        $(this).addClass("hv");
    } else {
        $(this).removeClass("hv");
    }
}).live("click", function () {
    var ipt = $(this).parent().find("label input");
    ipt.parent().removeClass("sd");
    ipt.filter(":checked").parent().addClass("sd");

    var fkid = ipt.attr("id").replace("answer_", "");

    var ids = new Array();

    $("input[id='answer_" + fkid + "']").each(function () {
        if ($(this).attr('checked'))
            ids.push($(this).val());
    });

    if (ids.length > 0) {
        $("#q_" + fkid).removeClass("bg3");
        $("#q_" + fkid).addClass("bg1");
    } else {
        $("#q_" + fkid).removeClass("bg1");
        $("#q_" + fkid).addClass("bg3");
    }
});


//setPosi(".addimg_bx");
/*弹框定位的封装函数*/
function setPosi(obj){
	var iW = document.documentElement.clientWidth,
		iH = $(obj).height(),
		iT = 0,
		iTop = document.documentElement.scrollTop || document.body.scrollTop,
		iClient = document.documentElement.clientHeight;
	if(window!=top){
		iClient = $(window.top).height(),
		iTop = $(window.top).scrollTop(),
		iT = $("#"+window.name,window.top.document).offset().top;
	}
	$(obj).css({
		"top":(iClient-iH)/2+(iTop-iT)+"px",
		"left":(iW-$(obj).width())/2+"px"
	});
}

//产生多个重复的字符,n为产生的个数
String.prototype.copyN = function (n) {
    var s = "";
    n = n || 1;
    for (var i = 0; i < n; i++) {
        s += this;
    }
    return s;
};
//格式化数字,n为最小长度，s为前导填充字符
Number.prototype.formatLen = function (n, s) {
    s = s || "0", n = n || 0;
    var l = String(this).length;
    if (n == 0 || l >= n) {
        return this + "";
    } else {
        return s.copyN(n - l) + this;
    }
};