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
                            <input type="tel" name="phone" value="{{old('phone')}}" datatype="*,m" nullmsg="请输入手机号" errormsg="请输入手机号" ajaxurl="{{url('unique-user')}}">
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
    })
</script>
@endsection
