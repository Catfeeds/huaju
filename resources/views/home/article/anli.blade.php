@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($top_category['img']))
    <div class="conBanner" style="background-image: url({{asset($top_category['img'])}});"></div>
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
                    <form method="get" id="logo_form" action="">
                    @csrf
                    <div class="mcate ">
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
        </div>
        <dl class="caelise">
            @foreach($article_list as $k=>$v)
            <dd class="animated slideUp">
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
                    <a href="{{URL('download-save',[$v['id']])}}" >了解详情</a>
                    @endif
                </div>
            </dd>
            @endforeach
        </dl>
        @include('home.layouts.page',['page'=>$article_list])
    </div>
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