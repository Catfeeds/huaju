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
                    <a href="{{URL('login')}}">用户登录</a>
                    <a class="active">用户注册</a>
                </div>
                <div class="logins active">
                    <form method="POST" id="register_form" action="{{URL('register')}}">
                        @csrf
                        <div class="mz clearfix">
                            <label>用户名</label>
                            <input type="text" name="name" datatype="*6-20" nullmsg="请输入用户名" value="{{old('name')}}" ajaxurl="{{url('unique-user')}}">
                        </div>
                        <div class="mz clearfix">
                            <label>密 码</label>
                            <input type="password" name="password" datatype="*6-20" nullmsg="请输入密码" ajaxurl="{{url('unique-user')}}">
                        </div>
                        <div class="mz clearfix">
                            <label>邮 箱</label>
                            <input type="email" name="email" value="{{old('email')}}" datatype="*,e" nullmsg="请输入邮箱" errormsg="请输入邮箱" ajaxurl="{{url('unique-user')}}">
                        </div>
                        <div class="mz clearfix">
                            <label>手机号</label>
                            <input type="tel" name="phone" value="{{old('phone')}}" id="reset-phone" datatype="*,m" nullmsg="请输入手机号" errormsg="请输入手机号" ajaxurl="{{url('unique-user')}}">
                        </div>
                        <div class="mz clearfix dxyzm">
                            <label style="line-height: normal">短信验证码</label>
                            <input type="text" name="verify_code" datatype="*" nullmsg="请输入短信验证码" value="{{old('verify_code')}}" class="text50">
                            <input class="get-msg text50" id="reset-get-code" value="获取验证码" type="button">
                        </div>
                        <input type="submit" class="submit" value="注      册">
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
    $(function(){
        var _token = $('meta[name="csrf-token"]').attr('content');
        $("#register_form").Validform({
            // tiptype:3,
            showAllError:false,
            tipSweep:true,
             "_token":_token,
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
        @if(count($errors) > 0)
            var error = "";
            @foreach ($errors->all() as $error)
                error += "{{$error}}<br/>";
            @endforeach
            layer.msg(error,{icon:2});
        @endif

        var t=60;
        $(".get-msg").click(function(){
            var phone = $("#reset-phone").val();
            if($(".get-msg").attr('is')!=false){
                $(".get-msg").attr("is",false);
                $.ajax({
                    type: "POST",
                    url:"{{URL('register-sms-send')}}",
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
    })
</script>
@endsection
