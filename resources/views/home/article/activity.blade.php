@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    <?php 
        $banner = ads_image(26);
    ?>
    @if($banner)
    <dl class="conBanner">
        @foreach($banner as $v)
        <a @if(!empty($v['url'])) href="{{$v['url']}}" @endif><dd style="background-image: url({{asset($v['image'])}})"></dd></a>
        @endforeach
    </dl>
    @endif
    <div class="market">
        <div class="marketTop clearfix">
            <ul class="m-btn clearfix">
                <li>
                    <a href="{{url("activity")}}">全部活动</a>
                </li>
                <li>
                    <a href="{{url("activity")}}?activity_type=1">即将开始活动</a>
                </li>
                <li>
                    <a href="{{url("activity")}}?activity_type=2">已结束活动</a>
                </li>
            </ul>
            <div class="ser-ach clearfix">
                <form method="get" id="logo_form" action="{{url("activity")}}">
                @csrf
                <div class="mcate">
                    <select name="search_type" id="selectValue">
                        <option value="1" >全部</option>
                        <option value="2" @if(request()->search_type==2) selected="selected" @endif>应用</option>
                        <option value="3" @if(request()->search_type==3) selected="selected" @endif> 时间</option>
                    </select>
                    <div class="ssearch">
                        <form>
                            <input type="text" name="keyword" value="{{request()->keyword}}" id="result">
                            <input type="hidden" name="activity_type" value="{{request()->activity_type}}">
                            <input type="submit" class="submit" value="搜索">
                        </form>
                    </div>
                </div>
                <div id="calendar"></div>
                </form>
            </div>
        </div>
        <div class="martlist">
            <ul class="clearfix">
                @foreach($activity_list as $k=>$v)
                <li class="animated zoomIn">
                    <a href="{{URL("activity",$v['id'])}}">
                        <div class="pic">
                            <img src="{{asset($v['img'])}}" alt="{{$v['alt']}}">
                        </div>
                        <div class="text">
                            <h4>{{$v['title']}}</h4>
                            <div class="td clearfix">
                                <div class="time">地区：
                                    <span>{{$v['CityTo']['region_name']}}</span>
                                </div>
                                <div class="time data">时间：
                                    <span>{{date('Y-m-d',strtotime($v['activity_time']))}}</span>
                                </div>
                            </div>
                            <div class="txt">{!!nl2br($v['desc'])!!}</div>
                        </div>
                    </a>
                </li>
                @endforeach
            </ul>
            @include('home.layouts.page',['page'=>$activity_list])
        </div>
    </div>
@endsection
@section('script')
    @parent
    <script>
        $(function () {
            $("#calendar").ionCalendar({
                lang: 'zh-cn',
                format: 'YYYY-MM-DD',
                onClick: function (date) {
                    $('#result').val(date)
                    $('#calendar').hide()
                }
            });
            $('#selectValue').change(function(event){
                if($(this).val() == 3){
                    $('#calendar').show()
                }
            })
            $('.conBanner').slick({
                dots: false,
                autoplay: true
            })

        })
    </script>
@endsection