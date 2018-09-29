@extends('home.layouts.app')
@section('style')
    @parent
@endsection
@section('content')
    @if(!empty($info['banner']))
    <div class="conBanner2 pc_box" style="background-image: url({{asset($info['banner'])}});">
        <div class="conText">
            <div class="txt">
                <h4>{{$info['title']}}</h4>
                <h1>{{$info['title2']}}</h1>
                <div class="time">
                    <span>{{date('Y · m · d',strtotime($info['activity_time']))}}</span>
                    <span> 中国 {{$info['CityTo']['region_name']}}</span>
                </div>
                @if($info['activity_time2'] > date("Y-m-d H:i:s")&&$info['is_apply']==1)
                    <a @if(!empty($info['url'])) href="{{$info['url']}}" @endif class="baoming @if(empty($info['url'])) apply @endif"></a>
                @endif
            </div>
        </div>
    </div>
    @endif
    @if(!empty($info['mobile_banner']))
    <div class="conBanner2 mobile_box" >
        <img src="{{asset($info['mobile_banner'])}}">
        <div class="conText">
            <div class="txt">
                <h4>{{$info['title']}}</h4>
                <h1>{{$info['title2']}}</h1>
                <div class="time">
                    <span>{{date('Y · m · d',strtotime($info['activity_time']))}}</span>
                    <span> 中国 {{$info['CityTo']['region_name']}}</span>
                </div>
                @if($info['activity_time2'] > date("Y-m-d H:i:s")&&$info['is_apply']==1)
                    <a @if(!empty($info['url'])) href="{{$info['url']}}" @endif class="baoming @if(empty($info['url'])) apply @endif"></a>
                @endif
            </div>
        </div>
    </div>
    @endif
    <div class="markts">
        <div class="mitem mi-tem fadeInUp wow">
            <div class="mar-title">活动背景</div>
            <div class="text content_con">
                {!!$info['content']!!}
            </div>
        </div>
        <div class="mitem mi-teb fadeInUp wow">
            <div class="mar-title">演讲内容</div>
            <dl>
                @foreach($info['MoreActivityMany1'] as $v)
                <dd>
                    <div class="pic">
                        <img src="{{asset($v['image'])}}" >
                    </div>
                    <h4>{{$v['title']}}</h4>
                    <div class="text">{!!nl2br($v['desc'])!!}</div>
                    @if(!empty($v['file'])&&$info['activity_time2'] < date("Y-m-d H:i:s"))
                    <a href="{{asset($v['file'])}}">下载演讲稿</a>
                    @endif
                </dd>
                @endforeach
            </dl>
        </div>
        @if($info['activity_time2'] > date("Y-m-d H:i:s"))
        <div class="mitem mi-teg fadeInUp wow">
            <div class="mar-title">合作伙伴</div>
            <div class="mar-trhee clearfix">
                <ul>
                    @foreach($info['MoreActivityMany2'] as $k=>$v)
                    @if($k%2==0)
                    <li>
                        <div class="col">
                            <div class="pt" style="background-image: url({{asset($v['image'])}});"></div>
                            <h6>{{$v['desc']}}</h6>
                            <h3>{{$v['title']}}</h3>
                        </div>
                        <div class="cos">
                            <img src="{{asset('resources/home/images/ssf.jpg')}}">
                        </div>
                    </li>
                    @else
                    <li>
                        <div class="cos">
                            <img src="{{asset('resources/home/images/ssf.jpg')}}">
                        </div>
                        <div class="col">
                            <div class="pt" style="background-image: url({{asset($v['image'])}});"></div>
                            <h6>{{$v['desc']}}</h6>
                            <h3>{{$v['title']}}</h3>
                        </div>
                    </li>
                    @endif
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="mitem mi-teh fadeInUp wow">
            <div class="mar-title">会议议程</div>
            <div class="table">
                {!!$info['content2']!!}
            </div>
        </div>
        <div class="mitem mi-tei fadeInUp wow">
            <div class="mar-title">参会指引</div>
            <div class="teiBox clearfix">
                <div class="pic " >
                    <img src="{{asset($info['img2'])}}">
                    <!-- <div id="allmap" class="allmap">
                        <img src="{{asset($info['img2'])}}">
                    </div> -->
                </div>
                <div class="text">
                    {!!nl2br($info['desc2'])!!}
                    <!-- <h4>时间：2018-2-4</h4>
                    <h4>酒店：万豪大酒店</h4>
                    <h4>地址：广州市天河区华富路28号</h4>
                    <h4>地铁：3号线 体育路站</h4>
                    <h4>公交：84路、793路 体育路站</h4> -->
                </div>
            </div>
        </div>
        <div class="fade"></div>
        <div class="iWant">
            <a @if(!empty($info['url'])) href="{{$info['url']}}" @endif class="@if(empty($info['url'])) apply @endif">我要参会</a>
            <dvi class="close iconfont">
                &#xe628;
            </dvi>
        </div>
        @else
        <?php 
        if(!empty($info['news_related'])){
            $info['article'] = \App\Models\Article::ArticleList([
                'id_in'=>explode(",",$info['news_related']),
                'paginate'=>0,
            ]);
        }else{
            $info['article'] = array();
        }
        ?>
        <div class="mitem mi-tec">
            <div class="mar-title">专题报道</div>
            <div class="bdlist">
                <dl class="clearfix">
                    @foreach($info['article'] as $v)
                    <dd>
                        <a href="{{URL('article',$v['id'])}}">
                            <div class="pic">
                                <img  src="{{asset($v['img'])}}" alt="{{$v['alt']}}">
                            </div>
                            <h4>{{$v['title']}}</h4>
                            <div class="text">{!!nl2br($v['desc'])!!}</div>
                            <div class="txt">
                                <span>{{$v['editor']}} </span>
                                <span>{{date('Y-m-d',strtotime($v['add_time']))}} </span>
                            </div>
                        </a>
                    </dd>
                    @endforeach
                </dl>
            </div>
        </div>
        <div class="mitem mi-ted">
            <div class="mar-title">精彩瞬间</div>
            <div class="mphotos my-simple-gallery clearfix" id="mphotos">
                @foreach($info['MoreImageMany'] as $k=>$v)
                <img src="{{asset($v['image'])}}" itemprop="thumbnail" alt="" class="pic_btn" data-src="{{asset($v['image'])}}" itemprop="contentUrl" data-size="" data-title="{{$v['title']}}" / >

                {{--@if($k%8==0)
                <div class="pf clearfix">
                @endif
                @if($k%8==3)
                <div class="pr clearfix">
                @endif
                    @if(in_array($k%8,[0,3]))
                    <div class="left" @if($k%8==0) style="background-image: url({{asset($v['image'])}});" @endif>
                    @endif
                    @if(in_array($k%8,[1,5]))
                    <div class="right">
                    @endif
                        @if(in_array($k%8,[1,3,5]))
                        <div class="top" style="background-image: url({{asset($v['image'])}});">
                        @endif
                        @if(in_array($k%8,[2,4,7]))
                        <div class="bot" style="background-image: url({{asset($v['image'])}});">
                        @endif
                        @if(in_array($k%8,[6]))
                        <div class="center" style="background-image: url({{asset($v['image'])}});">
                        @endif
                        <figure itemscope itemtype="">
                            <a class="pic_btn" data-src="{{asset($v['image'])}}" itemprop="contentUrl" data-size="" data-title="{{$v['title']}}" >
                                <img src="{{asset($v['image'])}}" itemprop="thumbnail" alt="" / >
                            </a>
                        </figure>
                        @if($k%8!=0)
                        </div>
                        @endif
                    @if(in_array($k%8,[0,2,4,7])||count($info['MoreImageMany'])-1==$k)
                    </div>
                    @endif
                @if(in_array($k%8,[2,7])||count($info['MoreImageMany'])-1==$k)
                </div>
                @endif--}}
                @endforeach
            </div>
        </div>
        <div class="mitem mi-tef">
            <div class="mar-title">合作伙伴</div>
            <div class="mibox">
                <dl class="clearfix">
                    @foreach($info['MoreActivityMany2'] as $k=>$v)
                    <dd>
                        <div class="box"><img src="{{asset($v['image'])}}"></div>
                    </dd>
                    @endforeach
                </dl>
            </div>
        </div>
        @endif
    </div>
    <div class="sign-up-mark"></div>
    <div class="sign-up-first">
        <div class="title clearfix">
            <span>填写报名信息</span>
            <i class="iconfont"></i>
        </div>
        <div class="main-box">
            <div class="forms">
                <form method="POST" action="{{URL('apply-save')}}">
                    {{ csrf_field() }}
                    <div class="mx">
                        <label>姓　　名</label>
                        <input type="text" name="name[]">
                    </div>
                    <div class="mx">
                        <label>手　　机</label>
                        <input type="text" name="phone[]">
                    </div>
                    <div class="mx">
                        <label>邮　　箱</label>
                        <input type="text" name="email[]"  class="long">
                    </div>
                    <div class="mx">
                        <label>公　　司</label>
                        <input type="text" name="gongsi[]" class="long">
                    </div>
                    <div class="mx" >
                        <label>验 证 码</label>
                        <input type="text" name="code" class="ver-code">
                        <div class="img yzm">{!!captcha_img()!!}</div>
                        <button type="button" class="yzm">刷新</button>
                    </div>
                    <div class="mz">
                        <input type="button" name="submit" class="submit apply_submit" value="提交报名信息">
                    </div>
                    <input type="hidden" name="activity_id" value="{{$info['id']}}">
                </form>
            </div>
            <div class="many-people">
                温馨提示：多人报名，请点击 <span>这里</span>
            </div>
        </div>
    </div>
    <div class="many-sign">
        <div class="title clearfix">
            <span>填写报名信息</span>
            <i class="iconfont"></i>
        </div>
        <div class="mang-main">
            <form method="POST" action="{{URL('apply-save')}}">
                {{ csrf_field() }}
                <div class="my clearfix">
                    <label>选择类型</label>
                    <div class="check active clearfix">
                        同一公司 
                        <input type="radio" name="gongsi_type" value="1" class="gongsi_type" checked="true">
                    </div>
                    <div class="check clearfix">
                        不同公司   
                        <input type="radio" name="gongsi_type" value="2" class="gongsi_type">
                    </div>
                </div>
                <div class="my clearfix">
                    <label>填写信息</label>
                    <div class="adlist clearfix">
                        <div class="inlists mCustomScrollbar clearfix">
                            <div class="item clearfix">
                                <div class="inputlist clearfix">
                                    <input type="text" name="gongsi[]" placeholder="公司" class="gongsi">
                                    <input type="text" name="name[]" placeholder="姓名" class="ad1">
                                    <input type="text" name="phone[]" placeholder="手机号" class="ad1">
                                    <input type="text" name="email[]" placeholder="邮箱" class="ad3">
                                    <div class="add-btn iconfont">
                                        &#xe605;
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="my" >
                    <label>验 证 码</label>
                    <input type="text" name="code" class="ver-code">
                    <div class="img yzm">{!!captcha_img()!!}</div>
                    <button type="button" class="yzm">刷新</button>
                </div>
                <div class="mz">
                    <input type="button" name="submit" class="submit apply_submit" value="提交报名信息">
                </div>
                <input type="hidden" name="activity_id" value="{{$info['id']}}">
            </form>
        </div>
    </div>
    <div class="qrCode">
        <div class="title clearfix">
            <span>温馨提示</span>
            <i class="iconfont"></i>
        </div>
        <div class="qrmain">
            @if(!empty($info['ewm']))
            <div class="pic">
                <img src="{{asset($info['ewm'])}}">
            </div>
            @endif
            <span>扫一扫，关注“{{$info['title']}}”微信号，最新消息早知道~~</span>
        </div>
    </div>
    <div class="pic_fix_bg"></div>
    <div class="pic_fix">
        <div class="img"><img src=""></div>
        <div class="text">高端会员制电商平台品志获数千万Pre-A轮融资，上川创投基金投资</div>
    </div>
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="pswp__bg"></div>
        <div class="pswp__scroll-wrap">
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>
            <div class="pswp__ui pswp__ui--hidden">
                <div class="pswp__top-bar">
                    <div class="pswp__counter"></div>
                    <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
                    <!-- <button class="pswp__button pswp__button--share" title="Share"></button> -->
                    <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                    <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                          <div class="pswp__preloader__cut">
                            <div class="pswp__preloader__donut"></div>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div> 
                </div>
<!--                    <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                </button>
                <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                </button> -->
                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    @parent
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Ap3151yQ5GQUrLtFLcMMNwEMqSUlVGWV"></script>
    <script type="text/javascript">
        @if($info['activity_time2'] > date("Y-m-d H:i:s")&&!empty($info['address']))
        // 百度地图API功能
        // var city = "{{$info['CityTo']['region_name']}}";
        // var title = "{{$info['address']}}";
        // var address = "{{$info['address']}}";
        // var map = new BMap.Map("allmap");
        // var myCity = new BMap.LocalCity();
        // var myGeo = new BMap.Geocoder();
        
        // // 将地址解析结果显示在地图上,并调整地图视野
        // myGeo.getPoint(address, function(point){
        //     if (point) {
        //         var map = new BMap.Map("allmap");
        //         var myCity = new BMap.LocalCity();
        //         map.enableScrollWheelZoom(true);
        //         map.clearOverlays();
        //         map.centerAndZoom(point, 20);
        //         var marker=new BMap.Marker(point)
        //         map.addOverlay(marker);
        //         map.addControl(new BMap.OverviewMapControl());
        //         map.addControl(new BMap.NavigationControl());
        //         var opts = {
        //           title : "" , // 信息窗口标题
        //           enableMessage:true,//设置允许信息窗发送短息
        //         }
        //         var infoWindow = new BMap.InfoWindow(title, opts);  // 创建信息窗口对象 
        //         marker.addEventListener("click",function(e){
        //             map.openInfoWindow(infoWindow,point); //开启信息窗口
        //         });
        //     }else{
        //         // alert("您选择地址没有解析到结果!");
        //     }
        // },city);
        // $(".map .icon-butongguodechacha").click(function(){
        //     $(".map").hide();
        // })
        @endif
    </script>
    <script>
    $(function(){
        //瀑布流
        var items = $("#mphotos").children();
        // 定义每一列之间的间隙 为10像素
        var gap = 10;
        window.onload = function() {
            // 一进来就调用一次
            waterFall();
            // 封装成一个函数
            function waterFall() {
                var window_w = parseInt($(window).width());
                var pageWidth = parseInt($("#mphotos").width());
                if(window_w<=768){
                    box_w = pageWidth-30
                    //手机版两列平等
                    var columns = 2;
                    var i1 = 0.5*box_w;
                    var i2 = 0.5*box_w;
                }else{
                    box_w = pageWidth-50
                    //ipad,电脑板4列30%,20%
                    var columns = 4;
                    var i1 = 0.3*box_w;
                    var i2 = 0.2*box_w;
                }
                var arr = [];
                for (var i = 0; i < items.length; i++) {
                    if (i < columns) {
                        // 2- 确定第一行
                        items[i].style.top = 0;
                        if(i>0){
                            if(i%2==0){
                                l = items[i-1].offsetLeft+i2;
                            }else{
                                l = items[i-1].offsetLeft+i1;
                            }
                        }else{
                            l = 0;
                        }
                        if(i%2==0){
                            items[i].style.left = (l + gap) + 'px';
                            items[i].style.width = i1 + 'px';
                        }else{
                            items[i].style.left = (l + gap) + 'px';
                            items[i].style.width = i2 + 'px';
                        }
                        arr.push(items[i].offsetHeight);
                    } else {
                        // 其他行
                        // 3- 找到数组中最小高度  和 它的索引
                        var minHeight = arr[0];
                        var index = 0;
                        for (var j = 0; j < arr.length; j++) {
                            if (minHeight > arr[j]) {
                                minHeight = arr[j];
                                index = j;
                            }
                        }
                        // 4- 设置下一行的第一个盒子位置
                        // top值就是最小列的高度 + gap
                        items[i].style.top = arr[index] + gap + 'px';
          
                        // left值就是最小列距离左边的距离
                        if(items[index].offsetWidth>=i1-2){
                            items[i].style.left = items[index].offsetLeft + 'px';
                            items[i].style.width = i1 + 'px';
                        }else{
                            items[i].style.left = items[index].offsetLeft + 'px';
                            items[i].style.width = i2 + 'px';
                        }

                        
                        // 5- 修改最小列的高度 
                        // 最小列的高度 = 当前自己的高度 + 拼接过来的高度 + 间隙的高度
                        arr[index] = arr[index] + items[i].offsetHeight + gap;
                    }
                }
                var maxHeight = arr[0];
                var index = 0;
                for (var j = 0; j < arr.length; j++) {
                    if (maxHeight < arr[j]) {
                        maxHeight = arr[j];
                    }
                }
                $("#mphotos").height(maxHeight);
                $("#mphotos").css("opacity",1);
            }
            // 页面尺寸改变时实时触发
            window.onresize = function() {
                waterFall();
            };
        };


        $(".pic_btn").click(function(){
            $(".pic_fix_bg").show();
            $(".pic_fix").show();
            $(".pic_fix img").attr('src',$(this).attr("data-src"));
            $(".pic_fix .text").html($(this).attr("data-title"));
        })
        $(".pic_fix_bg").click(function(){
            $(".pic_fix_bg").hide();
            $(".pic_fix").hide();
        })
        $('.iWant .close').click(function(){
            $('.iWant').fadeOut()
        })

        $('.apply').click(function(){
            $('.sign-up-first').show()
            $('.iWant').addClass('on')
            $('.sign-up-mark').show()
            return false
        })
        // var input = `<div class="inputlist clearfix">
        //                 <input type="text" name="gongsi[]" placeholder="公司" class="gongsi">
        //                 <input type="text" name="name[]" placeholder="姓名" class="ad1">
        //                 <input type="text" name="phone[]" placeholder="手机号" class="ad1">
        //                 <input type="text" name="email[]" placeholder="邮箱" class="ad3">
        //                 <div class="add-btn iconfont">
        //                     -
        //                 </div>
        //             </div>`;
        var input = '<div class="inputlist clearfix"> <input type="text" name="gongsi[]" placeholder="公司" class="gongsi"> <input type="text" name="name[]" placeholder="姓名" class="ad1"> <input type="text" name="phone[]" placeholder="手机号" class="ad1"> <input type="text" name="email[]" placeholder="邮箱" class="ad3"> <div class="add-btn iconfont remove-btn"> &#xe6d3; </div> </div>';

        $(".many-sign").on("click",".remove-btn",function(){
            $(this).parents(".inputlist").remove();
        })
        $('.add-btn').click(function(){
            $(".inlists .item ").append(input);
            gongsi_type();
        })

        

        $('.many-people span').click(function(){
            $('.sign-up-first').hide()
            $('.many-sign').show()
        })

        // $('.mang-main .mz .submit').click(function(){
        //     $('.many-sign').hide()
        //     $('.qrCode').show()
        //     return false
        // })
        // $('.main-box .forms .mz .submit').click(function(){
        //     $('.sign-up-first').hide()
        //     $('.qrCode').show()
        //     return false
        // })

        $('.sign-up-first .title i,.many-sign .title i,.qrCode .title i').click(function(){
            $('.sign-up-first').hide()
            $('.many-sign').hide()
            $('.sign-up-mark').hide()
            $('.iWant').removeClass('on')
            $('.qrCode').hide()
        })

        $('.check').click(function(){
            if($(this).hasClass('active')){
                $(this).removeClass('active')
                $(this).children('input').prop('checked',false)
            }else{
                $(this).addClass('active')
                $(this).find('input').prop('checked',true)
                $(this).siblings().removeClass('active')
                $(this).siblings().find('input').prop('checked',false)
            }
            gongsi_type();
        })
        function gongsi_type(){
            var gongsi_type = $("input[name='gongsi_type']:checked").val();
            if(gongsi_type==1){
                $(".inputlist").eq(0).siblings().find('.gongsi').hide();
            }else{
                $(".inputlist").find('.gongsi').show();
            }
        }
    })
    </script>
    <script type="text/javascript">
        
        $(window).load(function(){
            auto_data_size()
        })
        function auto_data_size(){
            var imgss= $(".my-simple-gallery img");
                $(".my-simple-gallery img").each(function() {
                var imgs = new Image();
                imgs.src=$(this).attr("src");
                w = imgs.width,
                h =imgs.height;
                $(this).parent("a").attr("data-size","").attr("data-size",w+"x"+h); 
            })
        }auto_data_size()
    </script>

    <script type="text/javascript">
        var initPhotoSwipeFromDOM = function(gallerySelector) {
        var parseThumbnailElements = function(el) {
            var thumbElements = el.childNodes,
                numNodes = thumbElements.length,
                items = [],
                figureEl,
                childElements,
                linkEl,
                size,
                item;
            for(var i = 0; i < numNodes; i++) {
                figureEl = thumbElements[i];
                if(figureEl.nodeType !== 1) {
                    continue;
                }
                linkEl = figureEl.children[0]; // <a> element
                size = linkEl.getAttribute('data-size').split('x');
                item = {
                    src: linkEl.getAttribute('href'),
                    w: parseInt(size[0], 10),
                    h: parseInt(size[1], 10)
                };
                if(figureEl.children.length > 1) {
                    item.title = figureEl.children[1].innerHTML; 
                }
                if(linkEl.children.length > 0) {
                    item.msrc = linkEl.children[0].getAttribute('src');
                } 
                item.el = figureEl;
                items.push(item);
            }
            return items;
        };
        var closest = function closest(el, fn) {
            return el && ( fn(el) ? el : closest(el.parentNode, fn) );
        };
        var onThumbnailsClick = function(e) {
            e = e || window.event;
            e.preventDefault ? e.preventDefault() : e.returnValue = false;
            var eTarget = e.target || e.srcElement;
            var clickedListItem = closest(eTarget, function(el) {
                return el.tagName === 'FIGURE';
            });
            if(!clickedListItem) {
                return;
        }
        var clickedGallery = clickedListItem.parentNode,
            childNodes = clickedListItem.parentNode.childNodes,
            numChildNodes = childNodes.length,
            nodeIndex = 0,
            index;
            for (var i = 0; i < numChildNodes; i++) {
                if(childNodes[i].nodeType !== 1) { 
                    continue; 
                }
                if(childNodes[i] === clickedListItem) {
                    index = nodeIndex;
                    break;
                }
                nodeIndex++;
            }
            if(index >= 0) {
                openPhotoSwipe( index, clickedGallery );
            }
            return false;
        };
        var photoswipeParseHash = function() {
            var hash = window.location.hash.substring(1),
            params = {};
            if(hash.length < 5) {
                return params;
            }
            var vars = hash.split('&');
            for (var i = 0; i < vars.length; i++) {
                if(!vars[i]) {
                    continue;
                }
                var pair = vars[i].split('=');  
                if(pair.length < 2) {
                    continue;
                }           
                params[pair[0]] = pair[1];
            }
            if(params.gid) {
                params.gid = parseInt(params.gid, 10);
            }
            if(!params.hasOwnProperty('pid')) {
                return params;
            }
            params.pid = parseInt(params.pid, 10);
            return params;
        };
        var openPhotoSwipe = function(index, galleryElement, disableAnimation) {
            var pswpElement = document.querySelectorAll('.pswp')[0],
                gallery,
                options,
                items;
            items = parseThumbnailElements(galleryElement);
            options = {
                index: index,
                galleryUID: galleryElement.getAttribute('data-pswp-uid'),
                getThumbBoundsFn: function(index) {
                    var thumbnail = items[index].el.getElementsByTagName('img')[0], // find thumbnail
                        pageYScroll = window.pageYOffset || document.documentElement.scrollTop,
                        rect = thumbnail.getBoundingClientRect(); 
                    return {x:rect.left, y:rect.top + pageYScroll, w:rect.width};
                },
               historyEnabled: false,
               focus: false 
            };
            if(disableAnimation) {
                options.showAnimationDuration = 0;
            }
            gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, items, options);
            gallery.init();
        };
        var galleryElements = document.querySelectorAll( gallerySelector );
        for(var i = 0, l = galleryElements.length; i < l; i++) {
            galleryElements[i].setAttribute('data-pswp-uid', i+1);
            galleryElements[i].onclick = onThumbnailsClick;
        }
        var hashData = photoswipeParseHash();
        if(hashData.pid > 0 && hashData.gid > 0) {
            openPhotoSwipe( hashData.pid - 1 ,  galleryElements[ hashData.gid - 1 ], true );
        }
    }
        // initPhotoSwipeFromDOM('.my-simple-gallery');

    </script>
    <script type="text/javascript">
        $(".yzm").click(function(){
            $(".yzm").find("img").attr('src',"{{captcha_src()}}"+Math.random());
        })
        $(".icon-shuaxin").click(function(){
            $(".yzm").find("img").attr('src',"{{captcha_src()}}"+Math.random());
        })
        $(".apply_submit").click(function(){
          var formData=$(this).parents("form").serialize();
          var form_url=$(this).parents("form").attr('action');
          if($(".apply_submit").attr('is')!="false"){
            $(".apply_submit").attr("is","false");
            $.ajax({
              type: "POST",
              url:form_url,
              data:formData,
              success:function(data){
                if(data.code==200){
                    layer.msg(data.message,{icon:1});
                    $('.sign-up-first').hide();
                    $('.many-sign').hide();
                    $('.qrCode').show();
                }else{
                    $(".yzm").find("img").attr('src',"{{captcha_src()}}"+Math.random());
                    layer.msg(data.message,{icon:2});
                }
                $(".apply_submit").attr("is","true");
              },
              error:function(data){
                $(".yzm").find("img").attr('src',"{{captcha_src()}}"+Math.random());
                var obj = new Function("return" + data.responseText)();
                obj = obj.errors;
                var msg='';
                $(".apply_submit").attr("is","true");
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
          }
        })
    </script>
@endsection