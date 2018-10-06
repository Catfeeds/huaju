@extends('home.layouts.app')
@section('style')
    @parent
    <style type="text/css">
        .map{width: 465px;height: 260px;}
        .map img{width: auto;}
    </style>
@endsection
@section('content')
    @include('home.layouts.top_banner')
    <div class="main">
        <div class="con_1">
            <div class="layout">
                <div class="ser_tit">Contact us<p>联系方式</p></div>
                <div class="clearfix">
                    <div class="fl">
                        <div class="tit">{{ConfigGet('contact_title')}}</div>
                        <ul>
                            <li style="background-image: url(/resources/home/images/ic16.png);">{URL('/')}</li>
                            <li style="background-image: url(/resources/home/images/ic17.png);">{{ConfigGet('address')}}</li>
                            <li style="background-image: url(/resources/home/images/ic18.png);">传真：{{ConfigGet('fax')}}</li>
                            <li style="background-image: url(/resources/home/images/ic19.png);">售后服务热线：{{ConfigGet('hotline')}}</li>
                            <li style="background-image: url(/resources/home/images/ic20.png);">邮箱地址：{{ConfigGet('mail')}}</li>
                            <li style="background-image: url(/resources/home/images/ic21.png);">国内工程热线：{{ConfigGet('tel')}}</li>
                        </ul>
                    </div>
                    <div class="mid"><img src="{{asset(ConfigGet('ewm'))}}"><p>{{ConfigGet('ewm_text')}}</p></div>
                    <div class="map" id="allmap"></div>
                </div>
                <a href="{{asset(ConfigGet('jd_url'))}}" class="linkbox">
                    <p>{{asset(ConfigGet('jd_title'))}}<em>{{asset(ConfigGet('jd_url'))}}</em></p>
                </a>
            </div>
        </div>
        <div class="con_2">
            <div class="layout">
                <div class="ser_tit">Online feedback<p>在线反馈</p></div>
                <form>
                    <div class="clearfix">
                        <input type="text" class="text fl" placeholder="您的名字" />
                        <input type="text" class="text fr" placeholder="您的邮箱" />
                    </div>
                    <div class="clearfix">
                        <input type="text" class="text fl" placeholder="联系方式" />
                        <input type="text" class="text fr" placeholder="您的地址" />
                    </div>
                    <textarea placeholder="您的地址"></textarea>
                    <input type="submit" class="button" value="提交" />
                </form>
            </div>
        </div>
    </div>
@endsection
@section('script')
    @parent
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=bSv9XQuYb5f96dyfqHkxG26hhMy9VQlY"></script>
    <script type="text/javascript">
        // 百度地图API功能
        var map = new BMap.Map("allmap");
        var point = new BMap.Point(113.345216,23.182376);
        var marker = new BMap.Marker(point);  // 创建标注

        map.addOverlay(marker);              // 将标注添加到地图中
        map.centerAndZoom(point,16);
        map.enableScrollWheelZoom(true);
        var opts = {
          title : "" , // 信息窗口标题
          enableMessage:true,//设置允许信息窗发送短息
          // message:"亲耐滴，晚上一起吃个饭吧？戳下面的链接看下地址喔~"
        }
        var infoWindow = new BMap.InfoWindow("{{ConfigGet('contact_title')}}", opts);  // 创建信息窗口对象 
        marker.addEventListener("click", function(){          
            map.openInfoWindow(infoWindow,point); //开启信息窗口
        });
    </script>
@endsection