@extends('home.layouts.app')
@section('style')
@parent
@endsection
@section('content')
<div class="login" style="background-image: url({{asset('resources/home/images/loginbg.jpg')}})">
    <div class="txt">
        <div class="loginbox clearfix">
            <div class="text">数据治理技术与服务提供商</div>
            <div class="showbox">
                <div class="login-item">
                    <div class="changePwd">修改密码</div>           
                </div>
                <div class="logins active">
                    <form method="POST" id="logo_form" action="{{URL('password-reset')}}">
                        @csrf
                        <div class="mz clearfix">
                            <label>手机号码</label>
                            <input type="text" name="phone" datatype="*,m" nullmsg="请输入手机号码" errormsg="请输入手机号码" value="{{old('phone')}}" id="reset-phone">
                        </div>
                        <div class="mz clearfix">
                            <label style="line-height: normal">短信验证码</label>
                            <input type="text" name="verify_code" datatype="*" nullmsg="请输入短信验证码" value="{{old('verify_code')}}" class="text50">
                            <input class="get-msg text50" id="reset-get-code" value="获取验证码" type="button">
                        </div>
                        <div class="mz clearfix">
                            <label>新密码</label>
                            <input type="password" name="password" datatype="*" nullmsg="请输入新密码">
                        </div>
                        <div class="mz clearfix">
                            <label style="line-height: normal">再输入新密码</label>
                            <input type="password" name="password_confirmation" datatype="*" recheck="password" errormsg="您两次输入的密码不一致！">
                        </div>
                        <input type="submit" class="submit" value="提交">
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
        tiptype:function(msg,o){
            if(o.type==3){
                layer.msg(msg,{icon:2});
            }
        },
        // btnSubmit:".loginin-btn",
        beforeSubmit:function(date){
            var formData=$("#logo_form").serialize();
            var form_url=$("#logo_form").attr('action');
            $.ajax({
              type: "POST",
              url:form_url,
              data:formData,
              success:function(data){
                if(data.code==200){
                    layer.msg(data.message,{icon:1});
                    window.location.replace("{{URL('login')}}");
                }else{
                    layer.msg(data.message,{icon:2});
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
            return false;
        },
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
                        layer.msg(data.message+data.data.captcha);
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
        $(".get-msg").val("")
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