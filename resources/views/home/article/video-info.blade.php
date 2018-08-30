@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @include('home.layouts.top_banner')
    @include('home.layouts.sub_nav')
    <div class="main">
        <div class="layout clearfix">
            <div class="news_det">
                <div class="tit">
                    <h3>{{$info['title']}}</h3>
                    <p>编辑：{{$info['editor']}}　　人气：{{$info['click']}}　　发表时间：{{$info['add_time']}}</p>
                </div>
                <div class="con contain_con">
                    @if(!empty($info['video']))
                        <iframe frameborder="0" style="width: 100%;height: 550px;" src="{{asset($info['video'])}}" allowfullscreen></iframe>
                    @endif
                    {!!$info['content']!!}
                    @include('home.layouts.share_box')
                </div>
                @include('home.layouts.pagebox')
            </div>
            <div class="news_det2">
                <div class="tit">最新视频</div>
                <ul>
                    @foreach($art_1 as $v)
                    <li><a href="{{URL('article',[$v['id']])}}">
                        <h3 title="{{$v['title']}}">{{$v['title']}}</h3>
                        <span>{{date("Y-m-d",strtotime($v['add_time']))}}</span>
                        <p class="dot" title="{!!nl2br($v['desc'])!!}">{!!nl2br($v['desc'])!!}</p>
                    </a></li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
@endsection
@section('script')
    @parent
@endsection