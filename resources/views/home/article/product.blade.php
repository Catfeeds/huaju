@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($cate_info['img']))
    <div class="conBanner pc_box" style="background-image: url({{asset($cate_info['img'])}});">
        <div class="banBox">
            <table>
                <tr>
                    <td>
                        <h1>{{$cate_info['title']}}</h1>
                        <h4>{!!$cate_info['cat_desc']!!}</h4>
                        <div class="link">
                            <a href="{{ConfigGet('kefu_url')}}">咨询客服</a>
                            @if(!empty($cate_info['file']))
                            <a href="{{URl('download-save',[$cate_info['id'],3])}}">下载资料</a>
                            @endif
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    @endif
    @if(!empty($cate_info['mobile_banner']))
    <div class="conBanner mobile_box">
        <img src="{{asset($cate_info['mobile_banner'])}}">
        <div class="banBox">
            <table>
                <tr>
                    <td>
                        <h1>{{$cate_info['title']}}</h1>
                        <h4>{!!$cate_info['cat_desc']!!}</h4>
                        <div class="link">
                            <a href="{{ConfigGet('kefu_url')}}">咨询客服</a>
                            @if(!empty($cate_info['file']))
                            <a href="{{URl('download-save',[$cate_info['id'],3])}}">下载资料</a>
                            @endif
                        </div>
                    </td>
                </tr>
            </table>
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