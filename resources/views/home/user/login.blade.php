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
                    <a class="active">用户登录</a>
                    <a href="{{URL('register')}}">用户注册</a>
                </div>
                <div class="logins active">
                    <form method="POST" id="logo_form" action="{{URL('login')}}">
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
                        <span>
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
    @if(count($errors) > 0)
        var error = "";
        @foreach ($errors->all() as $error)
            error += "{{$error}}<br/>";
        @endforeach
        layer.msg(error,{icon:2});
    @endif
</script>
@endsection