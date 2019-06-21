$(function () {
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
    
    var isexam = parseInt($("#isexam").val());//是否在进行考试页面
    var examtime = parseInt($("#examtime").val() * 60);//考试时间多少分钟
    var flag = true;
});

//按钮提交练习
function submitTest() {
    var rc_pop = new Popup({
        contentType: 4,
        isReloadOnClose: false,
        width: 420,
        isAutoSize: true
    });
    rc_pop.setContent("title", "练习提交");
    rc_pop.setContent("alertCon", "<div class='mb20 bx1 bx1_p1 ft4'>\
			您确定要交卷了吗？\
		</div><div class='ta_c ft4 mb20'><a href='#' class='btnq1' onClick='submit()'>确定交卷</a><a href='#' class='btnq1 ml2 goOn'>继续答题</a></div>");
    rc_pop.build();
    rc_pop.show();
    $("#confirmConTxt .goOn").click(function () {
        rc_pop.close();
        return false;
    });
    $("#dialogYES").parent().remove();
    setPosi("#dialogBox");
    return rc_pop;
}

//提交试卷
function submit() {
    var ele = dialog1("正在提交试卷，提交期间请不要做任何操作", "selfsave");
    var form = $("#testProcessForm");
    form.submit();
}

//时间到提交试卷
function limitTimeSubmit() {
    var rc_pop = new Popup({
        contentType: 4,
        isReloadOnClose: false,
        width: 420,
        isAutoSize: true
    });

    rc_pop.setContent("alertCon", "<div class='ft8 ta_c mb10'>考试时间已到</div><div class='mb20 bx1 bx1_p1 ft4'>\
					    本次考试时间已到，你可以点击 <b>确定交卷</b> 完成本次考试。<span id='subTime' class='ft2'>10</span>秒钟后，系统将自动进行本次提交。\
				    </div><div class='ta_c ft4 mb20'><a href='#' class='btnq1' onClick='submit()'>确定交卷</a></div>");
    //10秒钟后提交
    var time = 10;
    var subCountdown = setInterval(function () {
        time = time - 1;
        $("#subTime").text(time);
        if (time == 0 || time < 0) {
            window.clearInterval(subCountdown);
            submit();
        }
    }, 1000);

    rc_pop.setContent("title", "在线考试系统");
    rc_pop.build();
    rc_pop.show();
    $("#dialogYES").parent().remove();
    $("#dialogClose").remove();
    setPosi("#dialogBox");
    return rc_pop;
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

//点击选择答案时
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

    var qid = $(this).attr("qid");

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