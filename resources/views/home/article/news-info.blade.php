@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($top_category['img']))
    <div class="conBanner pc_box" style="background-image: url({{asset($top_category['img'])}});"></div>
    @endif
    @if(!empty($cate_info['mobile_banner']))
    <div class="conBanner mobile_box" ><img src="{{asset($cate_info['mobile_banner'])}}"></div>
    @endif
    <div class="newslist">
        <div class="ndetail">
            @include('home.layouts.location')
            <div class="nmain">
                <div class="title">
                    {{$info['title']}}
                </div>
                <div class="timesw clearfix">
                    <span>
                        <i class="iconfont">&#xe627;</i>
                        {{date("Y-m-d H:i",strtotime($info['add_time']))}}
                    </span>
                    <span class="praise @if(in_array($info['id'],explode(",",Cookie::get('praise')))) on @endif"  data-id="{{$info['id']}}">
                        <i class="iconfont">&#xe64a;</i>
                        <font id="click">{{$info['click']}}</font>
                    </span>
                    <span  class="bdsharebuttonbox">
                    <a  class="bds_more" data-cmd="more" ><i class="iconfont share_con" data-bdText="{!!nl2br($v['title'])!!}" data-bdDesc="{!!nl2br($v['desc'])!!}" data-bdUrl="{{URL('article',$v['id'])}}" data-bdPic="{{asset($v['img'])}}">&#xe610;</i>分享</a>
                    </span>
                </div>
                <div class="content">
                    <div class="contxt content_con">
                        {!!$info['content']!!}
                    </div>
                </div>
            </div>
            @if($art_1&&$art_1->count())
            <div class="ninfo">
                <div class="tag">相关信息</div>
                <div class="inlink">
                    @foreach($art_1 as $k=>$v)
                    <a href="{{URL('article',$v['id'])}}" >{{$v['title']}}</a>
                    @endforeach
                </div>
            </div>
            @endif
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
    <script type="text/javascript">
        $(".newslist").on("click",".praise",function(){
            if(!$(this).is(".on")){
                _this = $(this);
                var id = _this.attr("data-id");
                _this.addClass("on");
                _this.find("font").html(parseInt(_this.find("font").html())+1);
                $.ajax({
                    headers: {
                      'X-CSRF-TOKEN': $("meta[name='csrf-token']").attr("content")
                    },
                    url: "{{URL('praise')}}/"+id,
                    type:"POST",
                    data:"",
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        // longPolling();
                    },
                    success: function (res) {
                        
                    }
                });
            }
        })
    </script>
@endsection