@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($top_category['img']))
    <div class="conBanner" style="background-image: url({{asset($top_category['img'])}});"></div>
    @endif
    <div class="newslist">
        <div class="nlist">
            <div class="title">{{$cate_info['title'] or '搜索'}}</div>
            <ul>
                @foreach($article_list as $k=>$v)
                <li class="animated zoomIn">
                    <a href="{{URL('article',$v['id'])}}" >
                        <div class="tag">{{$v['title']}}</div>
                    </a>
                    <div class="txt clearfix">
                        <a href="{{URL('article',$v['id'])}}" >
                            <div class="pic">
                                <img src="{{asset($v['img'])}}" alt="{{$v['alt']}}">
                            </div>
                        </a>
                        <div class="text">
                            <div class="xtx">{!!nl2br($v['desc'])!!}</div>
                            <div class="timer clearfix">
                                <span>
                                    <i class="iconfont">&#xe64a;</i>{{$v['click']}}
                                </span>
                                <span  class="bdsharebuttonbox">
                                <a  class="bds_more" data-cmd="more" ><i class="iconfont share_con" data-bdText="{!!nl2br($v['title'])!!}" data-bdDesc="{!!nl2br($v['desc'])!!}" data-bdUrl="{{URL('article',$v['id'])}}" data-bdPic="{{asset($v['img'])}}">&#xe610;</i>分享</a>
                                </span>
                                <span>{{date("Y-m-d H:i",strtotime($v['add_time']))}}</span>
                            </div>
                        </div>
                        
                    </div>
                </li>
                @endforeach
            </ul>
            @include('home.layouts.page',['page'=>$article_list])
        </div>
        @include('home.layouts.news_r')
    </div>
@endsection
@section('script')
    @parent
    <style type="text/css">
    .newslist .bdshare-button-style0-16 .bds_more{color: #aab2bd!important;padding:0!important;margin:0!important;background: none!important;}
    .newslist .bdshare-button-style0-16 a, .newslist .bdshare-button-style0-16 .bds_more{line-height: inherit!important;font-size: 100%!important;}
    </style>
    
@endsection