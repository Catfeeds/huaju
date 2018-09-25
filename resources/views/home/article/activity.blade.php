@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    <?php 
        $banner = ads_image(26);
        $mobile_banner = ads_image(33);
    ?>
    @if($banner)
    <dl class="conBanner pc_box">
        @foreach($banner as $v)
        <a @if(!empty($v['url'])) href="{{$v['url']}}" @endif><dd style="background-image: url({{asset($v['image'])}})"></dd></a>
        @endforeach
    </dl>
    @endif
    @if($mobile_banner)
    <dl class="conBanner mobile_box">
        @foreach($mobile_banner as $v)
        <a @if(!empty($v['url'])) href="{{$v['url']}}" @endif><dd><img src="{{asset($v['image'])}}"></dd></a>
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
                <div class="mcate">
                    <form method="get" id="logo_form" action="{{url("activity")}}">
                        @csrf
                        <select name="search_type" id="selectValue">
                            <option value="1" >全部</option>
                            <option value="2" @if(request()->search_type==2) selected="selected" @endif>应用</option>
                            <option value="3" @if(request()->search_type==3) selected="selected" @endif> 时间</option>
                        </select>
                        <div class="ssearch">
                            <input type="text" name="keyword" value="{{request()->keyword}}" id="result" @if(request()->search_type==3) style="display:none;" @endif>
                            <div class="time_box" @if(request()->search_type==3) style="display:block;" @endif>
                                <input type="text" name="start_time" value="{{request()->start_time}}" class="time"><span class="zg"> - </span><input type="text" name="end_time" value="{{request()->end_time}}" class="time">
                            </div>
                            <input type="hidden" name="activity_type" value="{{request()->activity_type}}">
                            <input type="submit" class="submit" value="搜索">
                        </div>
                    </form>
                </div>
                <div id="calendar"></div>
                
            </div>
        </div>
        <div class="martlist">
            <ul class="clearfix">
                @foreach($activity_list as $k=>$v)
                <li class="wow fadeInUp" data-wow-delay="{{($k+1)/10}}s">
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
                                <div class="time data @if($v['activity_time2']<date('Y-m-d H:i:s')) data_no @endif">时间：
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
            // $('.time_box').datepicker({autoclose:true});
            $.fn.datepicker.dates['cn'] = {   //切换为中文显示
                days: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
                daysShort: ["日", "一", "二", "三", "四", "五", "六", "七"],
                daysMin: ["日", "一", "二", "三", "四", "五", "六", "七"],
                months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                today: "今天",
                clear: "清除"
            };
            $('.time_box .time').each(function() {
                $(this).datepicker({
                    autoclose: true, //自动关闭
                    beforeShowDay: $.noop,    //在显示日期之前调用的函数
                    calendarWeeks: false,     //是否显示今年是第几周
                    clearBtn: false,          //显示清除按钮
                    daysOfWeekDisabled: [],   //星期几不可选
                    endDate: Infinity,        //日历结束日期
                    forceParse: true,         //是否强制转换不符合格式的字符串
                    format: 'yyyy-mm-dd',     //日期格式
                    keyboardNavigation: true, //是否显示箭头导航
                    language: 'cn',           //语言
                    minViewMode: 0,
                    orientation: "auto",      //方向
                    rtl: false,
                    startDate: -Infinity,     //日历开始日期
                    startView: 0,             //开始显示
                    todayBtn: false,          //今天按钮
                    todayHighlight: false,    //今天高亮
                    weekStart: 0              //星期几是开始
                });
            });


            // $("#calendar").ionCalendar({
            //     lang: 'zh-cn',
            //     format: 'YYYY-MM-DD',
            //     onClick: function (date) {
            //         $('#result').val(date)
            //         $('#calendar').hide()
            //     }
            // });
            $('#selectValue').change(function(event){
                if($(this).val() == 3){
                    $('#result').hide()
                    $('.time_box').show()
                }else{
                    $('#result').show()
                    $('.time_box').hide()
                }
            })
            // $('.conBanner').slick({
            //     dots: false,
            //     autoplay: true
            // })

        })
    </script>
@endsection