@section('footer')
    <div class="footer clearfix">
        <div class="footebox clearfix">
            <div class="fo-item aboutsUs">
                <div class="f-title">关于我们
                    <i class="iconfont">&#xe605;</i>
                </div>
                <div class="td">
                    <div class="text">
                        <?php 
                            $about = \App\Models\ArticleCategory::find(459);
                        ?>
                        {!!nl2br($about['cat_desc'])!!}
                    </div>
                    <div class="txt clearfix">
                        <div class="code">
                            <div class="pic">
                                <img src="{{asset(ConfigGet('ewm'))}}">
                            </div>
                            <span>华矩科技</span>
                        </div>
                        <div class="code">
                            <div class="pic">
                                <img src="{{asset(ConfigGet('ewm2'))}}">
                            </div>
                            <span>大数据学院</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fo-item contants">
                <div class="f-title">联系我们
                    <i class="iconfont">&#xe605;</i>
                </div>
                <div class="td">
                    <div class="text">
                        {{ConfigGet('address')}}
                    </div>
                    <div class="txt clearfix">
                        <div class="code">
                            <div class="tag">技术方案咨询</div>
                            <div class="col">
                                <i class="iconfont">&#xe7a5;</i>
                                <span>{{ConfigGet('tel')}}</span>
                            </div>
                            <div class="col">
                                <i class="iconfont">&#xe6f2;</i>
                                <span>{{ConfigGet('mail')}}</span>
                            </div>
                        </div>
                        <div class="code">
                            <div class="tag">市场与媒体合作</div>
                            <div class="col">
                                <i class="iconfont">&#xe7a5;</i>
                                <span>{{ConfigGet('tel2')}}</span>
                            </div>
                            <div class="col">
                                <i class="iconfont">&#xe6f2;</i>
                                <span>{{ConfigGet('mail2')}}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php 
                $mt_cate = \App\Models\ArticleCategory::find("433");
                $mt_article = \App\Models\Article::ArticleList([
                    'cate_id'=>433,
                    'take'=>2,
                    'is_top'=>1,
                ]);
            ?>
            <div class="fo-item mdeia">
                <div class="f-title">{{$mt_cate['title']}}
                    <i class="iconfont">&#xe605;</i>
                </div>
                <div class="td">
                    <div class="txt clearfix">
                        @foreach($mt_article as $k=>$v)
                        <div class="code">
                            <a href="{{URL('article',$v['id'])}}">
                                <div class="wz">{{$v['title']}}</div>
                                <span class="time">{{date("Y-m-d",strtotime($v['add_time']))}}</span>
                            </a>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="fo-item important">
                <div class="f-title">重要活动
                    <i class="iconfont">&#xe605;</i>
                </div>
                <div class="td">
                    <div class="txt clearfix">
                        <ul>
                            <?php 
                                $activity = \App\Models\Activity::ActivityList([
                                    'take'=>9,
                                    'is_top'=>1,
                                ]);
                            ?>
                            @foreach($activity as $v)
                            <li>
                                <a href="{{URL("activity",$v['id'])}}">
                                    <img src="{{asset($v['img'])}}" alt="{{$v['alt']}}">
                                </a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="foter">
        {{ConfigGet('copyright')}}
        <span><a href="http://www.miitbeian.gov.cn" target="_blank">{{ConfigGet('beian')}}</a></span>
    </div>
    <div id="toTop" class="iconfont">
        <a class="iconfont" index="0">&#xe6f2;</a>
        <a class="iconfont" index="1">&#xe635;</a>
        <a class="iconfont" index="2">&#xe726;</a>
        <span class="bdsharebuttonbox">
            <a class="iconfont bds_more" data-cmd="more">&#xe610;</a>
        </span>
        @if(isset($collection_id)&&$collection_id>0)
            <a class="iconfont shouchang2 @if(isset($collection_on)&&$collection_on>0) icon-yduixingxingshixin @else icon-yduixingxingkongxin @endif" data-id={{$collection_id}} data-type='{{$collection_type}}'></a>
        @endif
        <a class="iconfont" id="tops">&#xe60f;</a>
        <div class="sa sa1">
            {!!nl2br(ConfigGet('r_mail'))!!}
        </div>
        <div class="sa sa2">
            {!!nl2br(ConfigGet('r_tel'))!!}
        </div>
        <div class="sa sa3">
            <img src="{{asset(ConfigGet('ewm3'))}}">
            <span>华矩微信服务号</span>
        </div>
    </div>
    <div class="fade"></div>
    <script>
    var config_c = {
        bdText : '',
        bdDesc : '',
        bdUrl : '{{URL('/')}}',
        bdPic : '',
    };
    $(".newslist").on("mouseover",".share_con",function(){
        _this = $(this);
        config_c = {
            bdText:_this.attr("data-bdText"),
            bdDesc:_this.attr("data-bdDesc"),
            bdUrl:_this.attr("data-bdUrl"),
            bdPic:_this.attr("data-bdPic"),
        };
    })
    window._bd_share_config = {
        common : {
            bdText : '',
            bdDesc : '',
            bdUrl : '{{URL('/')}}',
            bdPic : '',
            onBeforeClick:function(cmd,config){
                return config_c;
            },
        },
        share : [{
            "bdSize" : 16,
        }],
    }
    with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];
    $(".shouchang2").click(function(){
        var id = $(this).attr("data-id");
        var type = $(this).attr("data-type");
        _this = $(this);
        $.ajax({
          type: "post",
          url:"{{URL('collection-save')}}",
          data:'id='+id+"&type="+type,
          headers: {
            'X-CSRF-TOKEN': $("meta[name='csrf-token']").attr("content")
          },
          success:function(data){
            if(data.code==200){
                layer.msg(data.message,{icon:1});
                _this.removeClass("icon-yduixingxingkongxin").addClass("icon-yduixingxingshixin");
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
@show