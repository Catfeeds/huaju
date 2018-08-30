@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
<?php 
$banner = ads_image(25);
 ?>
@if(isset($banner)&&$banner->count())
<div class="banner">
    <dl class="slicks">
        @foreach($banner as $v)
        <dd style="background-image: url({{asset($v['image'])}})">
            <div class="txt">
                <div class="title">{{$v['title']}}</div>
                <div class="text">{{$v['desc']}}</div>
                @if(!empty($v['url'])&&!empty($v['btn_title']))
                <a href="{{$v['url']}}"  class="more">{{$v['btn_title']}}
                    <i class="iconfont">&#xe649;</i>
                </a>
                @endif
            </div>
        </dd>
        @endforeach
    </dl>
</div>
@endif
<?php 
    //获取推荐文章
    $a1 = \App\Models\Article::ArticleList([
        'cate_id'=>432,
        'take'=>5,
        'is_top'=>1,
    ]);
?>
<div class="in-news">
    <dl class="nslick">
        @foreach($a1 as $k=>$v)
        <dd class="animated slideUp" data-time="{{($k+1)*100}}">
            <a href="{{URL('article',$v['id'])}}" >
                <div class="title">{{$v['title']}}</div>
                <div class="time">{{date("Y-m-d",strtotime($v['add_time']))}}</div>
                <div class="text">{!!nl2br($v['desc'])!!}</div>
            </a>
        </dd>
        @endforeach
    </dl>
</div>
<?php 
    //获取产品
    $procude = \App\Models\ArticleCategory::find(409);
    $procude['child'] =  \App\Models\ArticleCategory::where("parent_id",409)->get();
    foreach($procude['child'] as $v){
        $v['child'] = \App\Models\ArticleCategory::where("parent_id",$v['id'])->get();
    }
    $p_k = 0;
?>
<div class="in-pro">
    <div class="com-title">{{$procude['title']}}</div>
    <div class="pro-con">
        <div class="pic animated slideRight" style="background-image: url({{asset($procude['img'])}})"></div>
        <ul class="catelist clearfix">
            @foreach($procude['child'] as $c_v)
                @foreach($c_v['child'] as $k=>$v)
                    @if($p_k < 9)
                    <li class="animated slideUp" data-time="{{($p_k+1)*100}}">
                        <a href="{{URL('category',$v['id'])}}" >
                            <div class="icon">
                                <span></span>
                                <img src="{{asset($v['img2'])}}" alt="{{$v['alt2']}}">
                            </div>
                            <div class="txt">
                                <div class="tag">{{$v['title']}}</div>
                                <div class="text" id="dot1">{!!nl2br($v['cat_desc'])!!}</div>
                            </div>
                        </a>
                    </li>
                    <?php $p_k++; ?>
                    @endif
                @endforeach
            @endforeach
        </ul>
    </div>
</div>
<?php 
    //获取方案
    $case = \App\Models\ArticleCategory::find(419);
    $case['child'] =  \App\Models\ArticleCategory::where("parent_id",419)->get();
    foreach($case['child'] as $v){
        $v['child'] = \App\Models\ArticleCategory::where("parent_id",$v['id'])->get();
    }
?>
<div class="in-case">
    <div class="com-title">{{$case['title']}}</div>
    <div class="caseBox clearfix">
        @if(isset($case['child']['0']))
        <ul class="case-nav">
            @foreach($case['child']['0']['child'] as $k=>$v)
            @if($k < 3)
            <li class="animated slideLeft" data-time="{{($k+1)*100}}">
                <a href="{{url('category',$v['id'])}}" title="{{$v['title']}}">{{$v['title']}}</a>
            </li>
            @endif
            @endforeach
        </ul>
        @endif
        @if(isset($case['child']['1']))
        <dl class="catePic">
            @foreach($case['child']['1']['child'] as $k=>$v)
            @if($k < 6)
            <dd class="animated slideUp" data-time="{{($k+1)*100}}">
                <a href="{{url('category',$v['id'])}}" title="{{$v['title']}}">
                    <div class="pic">
                        <img src="{{asset($v['img2'])}}" alt="{{$v['alt2']}}">
                    </div>
                    <div class="text">
                        <em></em>
                        <span>{{$v['title']}}</span>
                    </div>
                </a>
            </dd>
            @endif
            @endforeach
        </dl>
        @endif
    </div>
</div>
<?php 
    //获取服务
    $server = \App\Models\ArticleCategory::find(428);
    $server['child'] =  \App\Models\ArticleCategory::where("parent_id",428)->get();
    foreach($server['child'] as $v){
        if(!empty($v['news_related'])){
            $v['article'] = \App\Models\Article::ArticleList([
                'id_in'=>explode(",",$v['news_related']),
                'take'=>3,
            ]);
        }else{
            $v['article'] = array();
        }
        
    }
?>
<div class="in-serivce">
    <div class="com-title">{{$server['title']}}</div>
    <dl class="serlist clearfix">
        @foreach($server['child'] as $k=>$v)
        @if($k < 3)
        <dd class="animated slideUp" data-time="{{($k+1)*100}}">
            <div class="pic">
                <img src="{{asset($v['img2'])}}" alt="{{$v['alt2']}}">
            </div>
            <div class="text">
                <div class="texts-top">
                    <div class="title">{{$v['title']}}</div>
                    <div class="txt">{!!nl2br($v['cat_desc'])!!}</div>
                </div>
                <div class="texts-bot">
                    @foreach($v['article'] as $a_v)
                    <div class="ques">
                        <i class="iconfont">&#xe880;</i>
                        <a href="{{URL('article',$a_v['id'])}}" >{{$a_v['title']}}</a>
                    </div>
                    @endforeach
                </div>
            </div>
        </dd>
        @endif
        @endforeach
    </dl>
</div>
@endsection
@section('script')
    @parent
    <script>
$(document).ready(function() {

    $('.slicks').slick({
        dots: false,
        autoplay: true
    })
    $("#dot1").dotdotdot({
        watch: "window",

    });
    $('.nslick').slick({
        dots: true,
        arrows: false,
        slidesToShow: 3,
        responsive: [{
                breakpoint: 960,
                settings: {
                    slidesToShow: 2,
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                }
            }
        ]
    })
    $('.serlist').slick({
        dots: false,
        arrows: true,
        slidesToShow: 3,
        responsive: [{
                breakpoint: 960,
                settings: {
                    slidesToShow: 2,
                    arrows: true,
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    arrows: true,
                }
            }
        ]
    })
});
</script>
@endsection