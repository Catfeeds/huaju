@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($cate_info['img']))
    <div class="abusbanner pc_box" style="background-image: url({{asset($cate_info['img'])}})"></div>
    <div class="abusbanner2 mobile_box" ><img src="{{asset($cate_info['mobile_banner'])}}"></div>
    @endif
    <div class="nav-height" id="navHeight">
        <div class="aboutbtn nav-wrap"  id="nav-wrap">
            <ul class="clearfix">
                @foreach($cate_list as $k=>$v)
                <li>
                    <a href="#a_{{$k}}" @if($k==0) class="active" @endif>{{$v['title']}}</a>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="casedetail">
        @foreach($cate_list as $k=>$v)
            @include('home.layouts.index2-box',['index2_box'=>$v,'index2_box_k'=>$k])
        @endforeach
    </div>
@endsection
@section('script')
    @parent
    <script type="text/javascript">
        var navHeight= $("#navHeight").offset().top; 
        var navFix=$("#nav-wrap"); 
        $(window).scroll(function(){ 
            if($(this).scrollTop()>navHeight){ 
                navFix.addClass("navFix"); 
            } 
            else{ 
                navFix.removeClass("navFix"); 
            } 
            }) 
        $('.nav-wrap').navScroll({
          // mobileDropdown: true,
          // mobileBreakpoint: 768,
          scrollSpy: true
        });
    </script>
@endsection