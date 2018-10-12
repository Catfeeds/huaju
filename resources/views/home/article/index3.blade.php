@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($top_category['img']))
    <div class="conBanner" style="background-image: url({{asset($top_category['img'])}});"></div>
    @endif
    @if(!empty($top_category['mobile_banner']))
    <div class="conBanner mobile_box" ><img src="{{asset($top_category['mobile_banner'])}}"></div>
    @endif
    <div class="nav-height" id="navHeight">
        <div class="aboutbtn nav-wrap sub_nav"  id="nav-wrap">
            <ul class="clearfix">
                @foreach($sub_nav as $k=>$v)
                <li>
                    <a data-id="a_{{$k}}" href="{{URL('category',[$v['id']])}}" @if($v['id']==$cate_info['id']) class="active" @endif>{{$v['title']}}</a>
                </li>
                @endforeach
            </ul>
        </div>
        <div class="aboutbtn nav-wrap"  id="nav-wrap" style="position:static;opacity: 0;">
            <ul class="clearfix">
                @foreach($sub_nav as $k=>$v)
                <li>
                    <a data-id="a_{{$k}}" href="{{URL('category',[$v['id']])}}" @if($v['id']==$cate_info['id']) class="active" @endif>{{$v['title']}}</a>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="casedetail">
        @include('home.layouts.index2-box',['index2_box'=>$cate_info,'index2_box_k'=>1])
    </div>
@endsection
@section('script')
    @parent
    <script type="text/javascript">
        var el3 = document.getElementById('navHeight'); 
        $(window).scroll(function() {
            if(el3.getBoundingClientRect().top<=$('.header').height()){
                $(el3).find(".sub_nav").css({"position":"fixed","top":$('.header').height()});
            }else{
                $(el3).find(".sub_nav").css({"position":"absolute","top":0});
            }
            
        });
    </script>
@endsection