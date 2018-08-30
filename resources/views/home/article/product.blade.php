@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($cate_info['img']))
    <div class="conBanner" style="background-image: url({{asset($cate_info['img'])}});">
        <div class="banBox">
            <h1>{{$cate_info['title']}}</h1>
            <h4>{!!$cate_info['cat_desc']!!}</h4>
            <div class="link">
                <a href="{{ConfigGet('kefu_url')}}">咨询客服</a>
                @if(!empty($cate_info['file']))
                <a href="{{asset($cate_info['file'])}}">下载资料</a>
                @endif
            </div>
        </div>
    </div>
    @endif
    <div class="casedetail">
        @foreach($cate_list as $v)
            @include('home.layouts.index2-box',['index2_box'=>$v,'index2_box_k'=>$k])
        @endforeach
    </div>
@endsection
@section('script')
    @parent
@endsection