(function ($) {
    var register={
        init : function(){
            $this=this;
            // click 注册按钮
            $(document).on("click","#register_submit",function(){
                $this.submit();
            });

            // click 注册按钮
            $(document).on("click", "#login", function () {
                window.location.href = "login.aspx";
            });
            
            //blur 密码输入框
            $(document).on("blur","#password",function(){
                var password = $("#password").val();

                if(password==""){
                    $("#password_msg").html("密码不能为空");
                    return;
                }

                if(!/^\w{6,}$/.test(password)){
                    $("#password_msg").html("密码错误,格式为6-16位字母数字");
                    return;
                }

                $("#password_msg").html("");
            });
        },
        //刷新图形验证码
        refreshCaptcha : function(){
            $(".code-word").html('<img src="' + webPath + 'plugins/verify/verify.aspx?refesh=' + new Date() + '"' +
                ' alt="点击刷新验证码" width="60" height="35" onclick="register.refreshCaptcha()">');
        },
        //提交注册
        submit : function(){
            var username = $.trim($("#username").val());
            var password = $("#password").val();
            var repeat = $("#repeat").val();
            var realname = $("#realname").val();
            var departid = $("#departid").val();
            var email = $("#email").val();
            var mobile = $("#mobile").val();

            if (!username || username == "") {
                layer.msg("用户名不能为空", 2);
                return;
            }

            if(password==""){
                layer.msg("密码不能为空", 2);
                return;
            }

            if(!/^\w{6,}$/.test(password)){
                layer.msg("密码错误,格式为6-16位字母数字", 2);
                return;
            }

            if (password != repeat)
            {
                layer.msg("两次输入密码不一样", 2);
                return;
            }

            if (realname == "") {
                layer.msg("真实姓名不能空", 2);
                return;
            }

            if(!$("#register_submit").hasClass("ajax")){
            	$("#register_submit").addClass("ajax");
            }else{
            	return;
            }

            var dataInfo = {
                username: username,
                realname: realname,
                repeat:repeat,
                password: password,
                email: email,
                mobile: mobile,
                departid: departid
            };
            
            if($('#register_submit').hasClass('disable'))
            	return;
            $('#register_submit').addClass('disable');

            $.ajax({
                url: webPath + "common/api/reg_acount.aspx",
                data: dataInfo,
                type: "post",
                dataType: "json",
                success: function (data) {
                    if (data.errcode == 0) {
                        layer.msg(data.errmsg,0,2);
                        LoadIndex();
                    }
                    else if (data.errcode == 1) {
                        layer.msg(data.errmsg,0,2);
                        LoadIndex();
                    }
                    else {
                        $("#register_submit").removeClass("disable");
                        layer.msg(data.errmsg, 2);
                    }
                },
                error: function (resp, err, msg) {//异常，执行失败回调函数
                	$("#register_submit").removeClass("disable");
                	layer.msg('服务器异常', 2);
                },
                complete: function(){
                }
            })
        }
    };
    window.register=register;
    $(document).ready(function(){
        register.init();
		window.Login = register;
    });
})(jQuery)
var bar = 0;
function LoadIndex(){
    bar = bar + 4;
    if (bar < 40) {
        setTimeout("LoadIndex()", 100);
    }
    else {
        location.href = rootPath + "index.aspx";
    }
}