@extends('home.layouts.app')
@section('style')
@parent
@endsection
@section('content')
<script type="text/javascript">
    function form_tab(type){
        if(type==1){
            $("#logo_form").show();
            $("#logo_form2").hide();
        }else{
            $("#logo_form2").show();
            $("#logo_form").hide();
        }
    }
</script>
<div class="login" style="background-image: url({{asset('resources/home/images/loginbg.jpg')}})">
    <div class="txt">
        <div class="loginbox clearfix">
            <div class="text">数据治理技术与服务提供商</div>
            <div class="showbox">
                <div class="login-item">
                    <a class="active">用户登录</a>
                    <a href="{{URL('register')}}">用户注册</a>
                </div>
                <div class="logins active">
                    <div class="clearfix radio_box">
                        <label><input type="radio" name="type" value="1" class="radio" onclick="form_tab(1)" @if(old('type')==null||old('type')==1) checked='checked' @endif>密码登录</label>
                        <label><input type="radio" name="type" value="2" class="radio" onclick="form_tab(2)" @if(old('type')==2) checked='checked' @endif>短信登录</label>
                    </div>
                    <form method="POST" id="logo_form" action="{{URL('login')}}" @if(old('type')==2) style="display:none;" @endif>
                        @csrf
                        <div class="mz clearfix">
                            <label>用户名</label>
                            <input type="text" name="name" datatype="*" nullmsg="请输入用户名" value="{{old('name')}}">
                        </div>
                        <div class="mz clearfix">
                            <label>密 码</label>
                            <input type="password" name="password" datatype="*" nullmsg="请输入密码" >
                        </div>
                        <input type="submit" class="submit" value="登录">
                        <input type="hidden" name="type" value="1">
                        <span>
                            <a href="{{URL('password-reset')}}">忘记密码</a>
                        </span>
                    </form>
                    <form method="POST" id="logo_form2" action="{{URL('login2')}}"  @if(old('type')==null||old('type')==1) style="display:none;" @endif>
                        @csrf
                        <div class="mz clearfix">
                            <label>手机号</label>
                            <input type="text" name="phone" id="reset-phone" datatype="*,m" nullmsg="请输入手机号" value="{{old('phone')}}">
                        </div>
                        <div class="mz clearfix dxyzm">
                            <label>短信验证码</label>
                            <input type="text" name="verify_code" datatype="*" nullmsg="请输入短信验证码" value="{{old('verify_code')}}" class="text50">
                            <input class="get-msg text50" id="reset-get-code" value="获取验证码" type="button">
                        </div>
                        <input type="submit" class="submit" value="登录">
                        <input type="hidden" name="type" value="2">
                        <span style="visibility:hidden;">
                            <a href="{{URL('password-reset')}}">忘记密码</a>
                        </span>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
@parent
<script type="text/javascript">
    $("#logo_form").Validform({
        // tiptype:3,
        showAllError:false,
        tipSweep:true,
        tiptype:function(msg,o){
            if(o.type==3){
                layer.msg(msg,{icon:2});
            }
        }
        // btnSubmit:".loginin-btn",
        // beforeSubmit:function(date){
            // submit();
            // return false;
        // }
    });
    $("#logo_form2").Validform({
        // tiptype:3,
        showAllError:false,
        tipSweep:true,
        tiptype:function(msg,o){
            if(o.type==3){
                layer.msg(msg,{icon:2});
            }
        }
        // btnSubmit:".loginin-btn",
        // beforeSubmit:function(date){
            // submit();
            // return false;
        // }
    });

    var t=60;
    $(".get-msg").click(function(){
        var phone = $("#reset-phone").val();
        if($(".get-msg").attr('is')!=false){
            $(".get-msg").attr("is",false);
            $.ajax({
                type: "POST",
                url:"{{URL('password-reset-sms-send')}}",
                data:"phone="+phone,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success:function(data){
                    if(data.code==200){
                        // alert(data.message+data.data.captcha);
                        layer.msg(data.message);
                        t=60;
                        captcha_up();
                    }else{
                        layer.msg(data.message,{icon:2});
                        // layer.msg(data.message);
                        // alert(data.message);
                    }
                },
                error:function(data){
                  var obj = new Function("return" + data.responseText)();
                  obj = obj.errors;
                  var msg='';
                  for (var prop in obj){
                      tx = obj[prop]+"<br/>";
                      console.log(msg.indexOf(tx));
                      if(msg.indexOf(tx)==-1){
                          msg += obj[prop]+"<br/>";
                      }
                  }
                  layer.msg(msg,{icon:2});
                }
            });
        }
    })
    function captcha_up(){
        $(".get-msg").val(t)
        sint = setInterval(function(){
          $(".get-msg").val(t--);
          if(t<=0){
            $(".get-msg").attr("is",true);
            $(".get-msg").val("获取验证码");
            clearInterval(sint);
          }
        },1000)
    }

    @if(count($errors) > 0)
        var error = "";
        @foreach ($errors->all() as $error)
            error += "{{$error}}<br/>";
        @endforeach
        layer.msg(error,{icon:2});
    @endif
</script>
@endsection