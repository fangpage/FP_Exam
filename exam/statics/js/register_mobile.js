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

            //click getSms 获取验证码
            $(document).on("click", "#getSms", function () {
                var self = $(this);

                if (self.hasClass('sending'))
                    return;

                var mobile = $.trim($("#mobile").val());

                if (!mobile || mobile == "") {
                    layer.msg("手机号码不能为空。", 2);
                    return;
                }

                if (!/^1[0-9]{10}$/.test(mobile)) {
                    layer.msg("手机号格式不正确。", 2);
                    return;
                }
                
                self.html('努力发送中...').addClass('sending');
                $.post(webPath + 'plugins/verify/smsverify.aspx', {
                    type: 'sms_cert',
                    mobile: mobile
                }, function (data) {
                    if (data.errcode == 0) {
                        self.html('<i>60</i>秒后重新获取短信');
                        var timer = setInterval(function () {
                            var second_obj = self.find('i'),
                                    second = parseInt(second_obj.text());
                            second--;
                            if (0 == second) {
                                timer = null;
                                self.html('免费获取验证码').removeClass('sending');
                            } else {
                                second_obj.text(second);
                            }
                        }, 1000);
                    } else {
                        layer.msg(data.errmsg, 2, 1);
                        self.html('免费获取验证码').removeClass('sending');
                    }
                }, 'json');
            });
        },
        //刷新图形验证码
        refreshCaptcha : function(){
            $(".code-word").html('<img src="' + webPath + 'plugins/verify/verify.aspx?refesh=' + new Date() + '"' +
                ' alt="点击刷新验证码" width="60" height="35" onclick="register.refreshCaptcha()">');
        },
        //提交注册
        submit : function(){
            var mobile = $.trim($("#mobile").val());
            var password = $("#password").val();
            var repeat = $("#repeat").val();
            var realname = $("#realname").val();
            var departid = $("#departid").val();
            var smsverify = $("#smsverify").val();

            if (!mobile||mobile == "") {
                layer.msg("请先输入手机号", 2);
                return;
            }

            if (!/^09\d{8}|1[3,4,5,7,8]\d{9}$/.test(mobile)) {
                layer.msg("手机号格式不正确", 2);
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

            if ($("#smsverify")) {
                if (smsverify == "") {
                    layer.msg("短信验证码不能为空", 2);
	                return;
	            }
            }

            if(!$("#register_submit").hasClass("ajax")){
            	$("#register_submit").addClass("ajax");
            }else{
            	return;
            }

            var dataInfo = {
                mobile : mobile,
                smsverify: smsverify,
                password: password,
                realname: realname,
                departid: departid
            };
            
            if($('#register_submit').hasClass('disable'))
            	return;
            $('#register_submit').addClass('disable');

            $.ajax({
                url: webPath + "common/api/reg_mobile.aspx",
                data: dataInfo,
                type: "post",
                dataType: "json",
                success: function (data) {
                    if (data.errcode == 0) {
                        layer.msg(data.errmsg, 0, 2);
                        LoadIndex();
                    }
                    else
                    {
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
function LoadIndex() {
    bar = bar + 4;
    if (bar < 20) {
        setTimeout("LoadIndex()", 100);
    }
    else {
        location.href = rootPath + "index.aspx";
    }
}