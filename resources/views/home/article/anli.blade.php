@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($top_category['img']))
    <div class="conBanner pc_box" style="background-image: url({{asset($top_category['img'])}});"></div>
    @endif
    @if(!empty($top_category['mobile_banner']))
    <div class="conBanner mobile_box"><img src="{{asset($top_category['mobile_banner'])}}"></div>
    @endif
    <div class="market">
        <div class="marketTop clearfix">
            <ul class="m-btn2 clearfix">
                <li class=" @if(isset($top_category)&&$top_category['id']==$cate_info['id']) on @endif">
                    <a href="{{url('category',$top_category['id'])}}">{{$top_category['title']}}</a>
                </li>
                @foreach($sub_category as $k=>$v)
                <li class=" @if(isset($v)&&$v['id']==$cate_info['id']) on @endif" >
                    <a href="{{url('category',$v['id'])}}" title="{{$v['title']}}">{{$v['title']}}</a>
                </li>
                @endforeach
            </ul>
            <div class="ser-ach clearfix">
                <div class="mcate">
                    <form method="get" action="">
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
            </div>
        </div>
        <dl class="caelise">
            @foreach($article_list as $k=>$v)
            <dd class="wow fadeInUp">
                <div class="pic">
                    <img src="{{asset($v['img'])}}" alt="{{$v['alt']}}">
                </div>
                <div class="text">
                    <h4>{{$v['title']}}</h4>
                    <div class="txt">{!!nl2br($v['desc'])!!}</div>
                    <div class="td">
                        <span>所属应用：{{$v['ArticleCategoryTo']['title']}}</span>
                        <span> 所属行业：{{$v['title2']}}</span>
                    </div>
                    <i class="shouchang iconfont @if(isset($v['is_collection'])&&$v['is_collection']) on @endif" id="{{$v['id']}}"></i>
                    <!-- <a class="shouchang @if(isset($v['is_collection'])&&$v['is_collection']) on @endif" id="{{$v['id']}}">收藏</a> -->
                    @if(!empty($v['file']))
                    <a href="{{URL('download-save',[$v['id']])}}" class="down_btn">了解详情</a>
                    @endif
                </div>
            </dd>
            @endforeach
        </dl>
        @include('home.layouts.page',['page'=>$article_list])
    </div>
    <div class="fade" ></div>
    <div class="showBox">
        <div class="title">用户登录<i class="iconfont">&#xe628;</i></div>
        <div class="txt clearfix">
            <div class="td">
                <form method="POST" id="logo_form" action="{{URL('login')}}">
                    @csrf
                    <div class="mx">
                        <label>用户名</label>
                        <input type="text" name="name" datatype="*" nullmsg="请输入用户名">
                    </div>
                    <div class="mx">
                        <label>密　码</label>
                        <input type="password" name="password"  datatype="*" nullmsg="请输入密码">
                    </div>
                    <div class="mx">
                        <input type="submit" name="submit" value="登  录" class="submit">
                        <a href="{{URL('/password-reset')}}">忘记密码</a>
                    </div>
                </form>
            </div>
            <div class="tx">
                <div class="pic">
                    <img src="{{asset('resources/home/images/xi.jpg')}}">
                </div>
                <h5>如您还未注册账号请先<a href="{{URL('/register')}}">注册</a></h5>
            </div>
        </div>
    </div>
    <div class="fide"></div>
    <input type="hidden" id="user_id" value="{{Auth::check()->id}}">
@endsection
@section('script')
    @parent
    <script type="text/javascript">
        $(".shouchang").click(function(){
            var id = $(this).attr("id");
            _this = $(this);
            $.ajax({
              type: "post",
              url:"{{URL('collection-save')}}",
              data:'id='+id+"&type=4",
              headers: {
                'X-CSRF-TOKEN': $("meta[name='csrf-token']").attr("content")
              },
              success:function(data){
                if(data.code==200){
                    layer.msg(data.message,{icon:1});
                    _this.addClass("on");
                }else{
                    layer.msg(data.message,{icon:2});
                }
              },
              error:function(data){
                var obj = new Function("return" + data.responseText)();
                obj = obj.errors;
                var msg='';
                for (var prop in obj){
                    tx = obj[prop]+"<br/>";
                    console.log(msg.indexOf(tx));
                    if(msg.indexOf(tx)==-1){
                        msg += obj[prop]+"<br/>";
                    }
                }
                layer.msg(msg,{icon:2});
              }
            });
        })
    </script>
    <script>
        $(function () {
            // $("#calendar").ionCalendar({
            //     lang: 'zh-cn',
            //     format: 'YYYY-MM-DD',
            //     onClick: function (date) {
            //         $('#result').val(date)
            //         $('#calendar').hide()
            //     }
            // });
            // $('#selectValue').change(function(event){
            //     if($(this).val() == 3){
            //         $('#calendar').show()
            //     }
            // })
            $('.conBanner').slick({
                dots: false,
                autoplay: true
            })
            $(".down_btn").click(function(){
                if(!$('#user_id').val()>0){
                    $('.showBox,.fide').fadeIn()
                    return false;
                }
            })
            $('.showBox .title i').click(function(){
                $('.showBox,.fide').fadeOut()
            })
        })
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
        $('#selectValue').change(function(event){
            if($(this).val() == 3){
                $('#result').hide()
                $('.time_box').show()
            }else{
                $('#result').show()
                $('.time_box').hide()
            }
        })
        $("#logo_form").Validform({
            showAllError:false,
            tiptype:function(msg,o){
                if(o.type==3){
                    layer.msg(msg,{icon:2});
                }
            },
            beforeSubmit:function(date){
                var formData=$("#logo_form").serialize();
                var form_url=$("#logo_form").attr('action');
                $.ajax({
                  type: "POST",
                  url:form_url,
                  data:formData,
                  success:function(data){
                    $('#user_id').val(1);
                    $(".loginBtn").addClass('active');
                    $('.showBox,.fide').fadeOut()
                  },
                  error:function(data){
                    var obj = new Function("return" + data.responseText)();
                    obj = obj.errors;
                    var msg='';
                    for (var prop in obj){
                        tx = obj[prop]+"<br/>";
                        console.log(msg.indexOf(tx));
                        if(msg.indexOf(tx)==-1){
                            msg += obj[prop]+"<br/>";
                        }
                    }
                    layer.msg(msg,{icon:2});
                  }
                });
                return false;
            },
        });
    </script>
@endsection