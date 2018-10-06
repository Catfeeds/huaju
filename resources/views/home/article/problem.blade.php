@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @include('home.layouts.top_banner')
    @include('home.layouts.sub_nav')
    <div class="main">
        <div class="layout clearfix">
            <div class="lnav">
                <div class="tit">问题分类</div>
                <ul>
                    @foreach($two_category as $k=>$v)
                    <li class="@if(isset($v)&&trim($v['id'],"/")==$cate_info['id']) on @endif" ><a href="{{url('category',$v['id'])}}" title="{{$v['title']}}"><i>{{$v['title']}}</i></a></li>
                    @endforeach
                </ul>
            </div>
            <div class="main_r">
                <div class="tit">{{$cate_info['title']}}</div>
                <ul class="all_q">
                    @foreach($article_list as $v)
                    <li>
                        <div class="top"><em></em>{{$v['title']}}</div>
                        <div class="con contain_con">
                            {!!$v['content']!!}
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
@endsection
@section('script')
    @parent
    <script>
        $(document).ready(function(){
            $('.all_q li .top').on('click',function(){
                $(this).siblings().stop(false,true).slideToggle().parents('li').toggleClass('on');
                $(this).parents('li').siblings().removeClass('on').find('.con').fadeInUp();
            })
        });
    </script>
@endsection