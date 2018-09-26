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
        <div class="aboutbtn nav-wrap"  id="nav-wrap">
            <ul class="clearfix">
                @foreach($cate_list as $k=>$v)
                <li>
                    <a data-id="a_{{$k}}" @if($k==0) class="active" @endif>{{$v['title']}}</a>
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
        $("#navHeight a").click(function(){
            $(".index2").children("div").hide();
            $("#"+$(this).attr('data-id')).show();
            $("#navHeight a").removeClass("active");
            $(this).addClass("active");
            $(window).trigger("resize");
            $('.stop').slick('unslick');
            $('.stop').slick({
                dots: false,
                slidesToShow:2,
                responsive: [
                    {
                      breakpoint: 768,
                      settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                      }
                    }
                  ]
            });
            
            $('.srt').slick('unslick');
            $('.srt').slick({
                    dots: false,
                    slidesToShow:2,
                    responsive: [
                        {
                          breakpoint: 768,
                          settings: {
                            slidesToShow:1,
                            slidesToScroll: 1
                          }
                        },
                        {
                          breakpoint: 460,
                          settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                          }
                        }
                      ]
                });
        })

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