@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    <?php 
        $banner = ads_image(31,1);
        $mobile_banner = ads_image(34,1);
    ?>
    @if(!empty($banner[0]['image']))
    <div class="conBanner pc_box" style="background-image: url({{asset($banner[0]['image'])}});"></div>
    @endif
    @if(!empty($mobile_banner[0]['image']))
    <div class="conBanner mobile_box"><img src="{{asset($mobile_banner[0]['image'])}}"></div>
    @endif
    <div class="download-main clearfix">
        <ul class="sildebar">
            <li>
                <a class="slide" href="{{URL('download-list')}}">
                    <span>下载</span>
                    <span>记录</span>
                </a>
            </li>
            <li>
                <a class="slide" href="{{URL('collection-list')}}">
                    <span>我的</span>
                    <span>收藏</span>
                </a>
            </li>
            <li>
                <a class="slide" href="{{URL('user-password-edit')}}">
                    <span>修改</span>
                    <span>密码</span>
                </a>
            </li>
            <li>
                <a class="slide" href="{{URL('logout')}}">
                    <span>退出</span>
                </a>
            </li>
        </ul>
        <div class="dcontent" style="display: block">
            <table>
                <tr class="title">
                    <th class="num">序号</th>
                    <th class="name">资料名称</th>
                    <th class="cate">所属类别</th>
                    @if(isset($download))
                    <th class="time">下载时间</th>
                    @else
                    <th class="time">收藏时间</th>
                    @endif
                    <th class="ctrl">操作</th>
                </tr>
                @foreach($list as $k=>$v)
                <tr>
                    <th class="num">{{$k+1}}</th>
                    @if($v['type']==3)
                    <th class="name">{{$v['ArticleCategoryTo']['title']}}</th>
                    <th class="time">{{$v['ArticleCategoryTo']['title'] or ''}}</th>
                    @elseif($v['type']==2)
                    <th class="name">{{$v['ActivityTo']['title']}}</th>
                    <th class="time">活动</th>
                    @else
                    <th class="name">{{$v['ArticleTo']['title']}}</th>
                    <th class="time">{{$v['ArticleTo']['ArticleCategoryTo']['title'] or ''}}</th>
                    @endif
                    <th class="cate">{{$v['updated_at']}}</th>
                    <th class="ctrl">
                        @if(isset($download))
                        <a href="{{URl('download-save',[$v['article_id'],$v['type']])}}" class="downloadt">下载</a>
                        <a data-href="{{URl('download-del',[$v['id']])}}" class="del">删除</a>
                        @else
                            @if($v['type']==4)
                            <a href="{{URl('download-save',[$v['article_id']])}}" class="downloadt">查看</a>
                            @elseif($v['type']==3)
                            <a href="{{URl('category',[$v['article_id']])}}" class="downloadt">查看</a>
                            @elseif($v['type']==2)
                            <a href="{{URl('activity',[$v['article_id']])}}" class="downloadt">查看</a>
                            @elseif($v['type']==1)
                            <a href="{{URl('article',[$v['article_id']])}}" class="downloadt">查看</a>
                            @endif
                        <a data-href="{{URl('collection-del',[$v['id']])}}" class="del">删除</a>
                        @endif
                    </th>
                </tr>
                @endforeach
            </table>
        </div>
        @include('home.layouts.page',['page'=>$list])
    </div>
@endsection
@section('script')
    @parent
    <script type="text/javascript">
        $(".del").on("click",function(){
            var _this = $(this);
            layer.msg('确定删除么？', {
              time: 0 //不自动关闭
              ,btn: ['删除', '取消']
              ,yes: function(index){
                layer.close(index);
                window.location.href=_this.attr("data-href");
              }
            });
        })
    </script>
@endsection