@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($cate_info['img']))
    <div class="conBanner pc_box" style="background-image: url({{asset($cate_info['img'])}});"></div>
    @endif
    @if(!empty($cate_info['mobile_banner']))
    <div class="conBanner mobile_box"><img src="{{asset($cate_info['mobile_banner'])}}"></div>
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