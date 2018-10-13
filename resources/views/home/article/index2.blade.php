@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($cate_info['img']))
    <div class="conBanner pc_box" style="background-image: url({{asset($cate_info['img'])}})"></div>
    @endif
    @if(!empty($cate_info['mobile_banner']))
    <div class="conBanner mobile_box" ><img src="{{asset($cate_info['mobile_banner'])}}"></div>
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
        <div class="aboutbtn nav-wrap" style="position:static;opacity: 0;">
            <ul class="clearfix">
                @foreach($sub_nav as $k=>$v)
                <li>
                    <a data-id="a_{{$k}}" href="{{URL('category',[$v['id']])}}" @if($v['id']==$cate_info['id']) class="active" @endif>{{$v['title']}}</a>
                </li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="casedetail index2">
        @foreach($cate_list as $k=>$v)
            @include('home.layouts.index2-box',['index2_box'=>$v,'index2_box_k'=>$k])
        @endforeach
    </div>
@endsection
@section('script')
    @parent
    <script type="text/javascript">
        $("#a_0").show();
        // $("#navHeight a").click(function(){
        //     $(".index2").children("div").hide();
        //     $("#"+$(this).attr('data-id')).show();
        //     $("#navHeight a").removeClass("active");
        //     $(this).addClass("active");
        //     $(window).trigger("resize");
        //     $('.stop').slick('unslick');
        //     $('.stop').slick({
        //         dots: false,
        //         slidesToShow:2,
        //         responsive: [
        //             {
        //               breakpoint: 768,
        //               settings: {
        //                 slidesToShow: 2,
        //                 slidesToScroll: 2
        //               }
        //             }
        //           ]
        //     });
            
        //     $('.srt').slick('unslick');
        //     $('.srt').slick({
        //             dots: false,
        //             slidesToShow:2,
        //             responsive: [
        //                 {
        //                   breakpoint: 768,
        //                   settings: {
        //                     slidesToShow:1,
        //                     slidesToScroll: 1
        //                   }
        //                 },
        //                 {
        //                   breakpoint: 460,
        //                   settings: {
        //                     slidesToShow: 1,
        //                     slidesToScroll: 1
        //                   }
        //                 }
        //               ]
        //         });
        // })
        var el3 = document.getElementById('navHeight'); 
        $(window).scroll(function() {
            if(el3.getBoundingClientRect().top<=$('.header-feixd').height()){
                $(el3).find(".sub_nav").addClass("fix");
                // $(el3).find(".sub_nav").css({"position":"fixed","top":$('.header-feixd').height()});
            }else{
                $(el3).find(".sub_nav").removeClass("fix");
                // $(el3).find(".sub_nav").css({"position":"absolute","top":'25px'});
            }
            
        });
        $(".index2 .wow").removeClass("wow")
        // var navHeight= $("#navHeight").offset().top; 
        // var navFix=$("#nav-wrap"); 
        // $(window).scroll(function(){ 
        //     if($(this).scrollTop()>navHeight){ 
        //         navFix.addClass("navFix"); 
        //     } 
        //     else{ 
        //         navFix.removeClass("navFix"); 
        //     } 
        //     }) 
        // $('.nav-wrap').navScroll({
        //   // mobileDropdown: true,
        //   // mobileBreakpoint: 768,
        //   scrollSpy: true
        // });
        
    </script>
@endsection