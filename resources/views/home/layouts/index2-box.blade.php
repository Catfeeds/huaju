@if($index2_box['template']=='index2-gaishu')
	<div class="case-item " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="bdian content_con animated slideLeft">
			{!!$index2_box['content']!!}
		</div>
	</div>
@elseif($index2_box['template']=='index2-gongneng')
	<div class="case-item ys " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="prolist">
			<ul>
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<h4>{{$b_v['title']}}</h4>
					<div class="text">
						{!!nl2br($b_v['desc'])!!}
					</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-youshi')
	<div class="case-item " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="caseys">
			<ul class="clearfix">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<div class="text">
						<h3>{{$b_v['title']}}</h3>
						<div class="txt">
							{!!nl2br($b_v['desc'])!!}
						</div>
					</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-changjing')
	<div class="case-item ys " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="scenario">
			@if(!empty($index2_box['cat_desc']))
			<h4>{!!nl2br($index2_box['cat_desc'])!!}</h4>
			@endif
			<ul class="scenariolist clearfix">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<div class="text">
						<h4>{{$b_v['title']}}</h4>
					</div>
					<div class="txt">
						{!!nl2br($b_v['desc'])!!}
					</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-anli')
	<div class="case-item " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="caseslist">
			<ul class="cliset clearfix">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<h4>{{$b_v['title']}}</h4>
					<div class="text">
						{!!nl2br($b_v['desc'])!!}
					</div>
					<span>{{date("Y-m-d",strtotime($b_v['add_time']))}}</span>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-liaojie')
	<div class="case-item " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="understand">
			<ul class="stand">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<div class="text">
						<h4>{{$b_v['title']}}</h4>
						<div class="txt">
							{!!nl2br($b_v['desc'])!!}
						</div>
					</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-tongdian')
	<div class="case-item " id="a_{{$index2_box_k}}">
		<div class="casetitle ">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="serv">
			<div class="serv-box clearfix">
				<div class="pic animated slideLeft" style="background-image: url({{asset($index2_box['img'])}})">
				</div>
				<div class="text content_con animated slideRight">
					{!!$index2_box['content']!!}
				</div>
			</div>
		</div>
	</div>
@elseif($index2_box['template']=='index2-xiaoyi')
	<div class="case-item ys " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="benefit">
			<ul class="benefitlist clearfix">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideLeft" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<h4>{{$b_v['title']}}</h4>
					<div class="text">
						{!!nl2br($b_v['desc'])!!}
					</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-fuwu-jishu')
	<div class="case-item " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="serive">
			@if(!empty($index2_box['cat_desc']))
				<h4>{!!nl2br($index2_box['cat_desc'])!!}</h4>
			@endif
			<ul>
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<h1>{{$b_v['title']}}</h1>
					<div class="text">
						{!!nl2br($b_v['desc'])!!}
					</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-fuwu-bianxian')
	<div class="case-item ys " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="serive">
			@if(!empty($index2_box['cat_desc']))
				<h4>{!!nl2br($index2_box['cat_desc'])!!}</h4>
			@endif
			<div class="datalist clearfix">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<div class="serdata animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<div class="text">
						<h5>{{$b_v['title']}}</h5>
						<div class="content_con">
							{!!$b_v['content']!!}
						</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</div>
@elseif($index2_box['template']=='index2-architecture')
	<div class="bnitem "  id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="band">
			<ul class="clearfix">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<div class="pic">
						<img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}">
					</div>
					<div class="text">
						<h4>{{$b_v['title']}}</h4>
						<h6>{!!$b_v['content']!!}</h6>
						<div class="pt">
							<img src="{{asset($b_v['img2'])}}" alt="{{$b_v['alt2']}}">
						</div>
					</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@elseif($index2_box['template']=='index2-course')
	<div class="cnitem " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="devlist">
			<ul>
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideLeft" data-time="{{($b_k+1)*100}}">
					<span>{{date("Y年m月d日",strtotime($b_v['add_time']))}}</span>
					{!!nl2br($b_v['desc'])!!}
				</li>
				@endforeach
			</ul>
			<a >查看更多历程</a>
		</div>
	</div>
@elseif($index2_box['template']=='index2-honor')
	<div class="dnitem " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			<span style="color: #fff">{{$index2_box['title']}}</span>
			<i class="rt"></i>
		</div>
		<?php 
		$honro = \App\Models\ArticleCategory::where("parent_id",$index2_box['id'])->take(3)->get();
		foreach($honro as $v){
			$v['article'] = \App\Models\Article::ArticleList([
	            'cate_id'=>$v['id'],
	        ]);
		}
		?>
		<div class="honor clearfix">
			<div class="left animated slideLeft">
				@foreach($honro as $h_k=>$h_v)
				@if($h_k < 2)
				<div class="ltop">
					<h4>{{$h_v['title']}}</h4>
					<dl class="slikc1 stop">
						@foreach($h_v['article'] as $b_v)
						<dd><img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}"></dd>
						@endforeach
					</dl>
				</div>
				@endif
				@endforeach
			</div>
			<div class="right animated slideRight">
				@foreach($honro as $h_k=>$h_v)
				@if($h_k > 1)
				<h4>{{$h_v['title']}}</h4>
				<dl class="slikc1 srt">
					@foreach($h_v['article'] as $b_v)
					<dd><img src="{{asset($b_v['img'])}}" alt="{{$b_v['alt']}}"></dd>
					@endforeach
				</dl>
				@endif
				@endforeach
			</div>
		</div>
	</div>
@elseif($index2_box['template']=='index2-contact-us')
	<div class="contact " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="contbox clearfix">
			<div class="map contact_map animated slideLeft" id="contact_map">
				
			</div>
			<div class="txt content_con animated slideRight">
				{!!$index2_box['content']!!}
			</div>
		</div>
	</div>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=bSv9XQuYb5f96dyfqHkxG26hhMy9VQlY"></script>
	<script type="text/javascript">
	    // 百度地图API功能
	    var map = new BMap.Map("contact_map");
	    var point = new BMap.Point(113.335537,23.142098);
	    var marker = new BMap.Marker(point);  // 创建标注

	    map.addOverlay(marker);              // 将标注添加到地图中
	    map.centerAndZoom(point,16);
	    map.enableScrollWheelZoom(true);
	    var opts = {
	      title : "" , // 信息窗口标题
	      enableMessage:true,//设置允许信息窗发送短息
	      // message:"亲耐滴，晚上一起吃个饭吧？戳下面的链接看下地址喔~"
	    }
	    var infoWindow = new BMap.InfoWindow("华矩科技广州总部", opts);  // 创建信息窗口对象 
	    marker.addEventListener("click", function(){          
	        map.openInfoWindow(infoWindow,point); //开启信息窗口
	    });
	</script>
@elseif($index2_box['template']=='index2-fuli')
	<div class="initem " id="a_{{$index2_box_k}}">
		<div class="slide animated slideRight">
			<div class="slidebox clearfix ">
				<dl class="slideslick">
					@foreach($index2_box['MoreImageMany'] as $m_v)
					<dd><img src="{{asset($m_v['image'])}}" alt="{{$m_v['alt']}}"></dd>
					@endforeach
				</dl>
				<div class="tmain">
					@foreach($index2_box['article'] as $b_k=>$b_v)
					@if($b_k < 2)
					<div class="tds">
						<div class="small">{{$v['title']}}</div>
						<div class="big">{!!nl2br($b_v['desc'])!!}</div>
					</div>
					@endif
					@endforeach
				</div>
			</div>
		</div>
	</div>
@elseif($index2_box['template']=='index2-sihhui-zhaopin')
	<div class="hnitem " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="hseui clearfix">
			<div class="hseuibox clearfix animated slideUp">
				<dl class="hsebtn">
					<dt>职位</dt>
					@foreach($index2_box['article'] as $b_k=>$b_v)
					<dd @if($b_k==0) class="active" @endif>{{$v['title']}}</dd>
					@endforeach
				</dl>
				<div class="zis clearfix">
					@foreach($index2_box['article'] as $b_k=>$b_v)
					<div class="join" @if($b_k==0) style="display: block;" @endif>
						<div class="zisbox clearfix">
							<div class="pag1">
								<h4>岗位职责</h4>
								<div class="td">{!!nl2br($b_v['desc'])!!}</div>
							</div>
							<div class="pag1">
								<h4>职位要求</h4>
								<div class="td">{!!nl2br($b_v['desc2'])!!}</div>
							</div>
						</div>
						<a href="{{ConfigGet('hr_url')}}">直达HR</a>
					</div>
					@endforeach
				</div>
			</div>
		</div>
	</div>
@elseif($index2_box['template']=='index2-zhaoping-shijisheng')
	<div class="gnitem " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="goods clearfix">
			<div class="ptc animated slideLeft" style="background-image: url({{asset('resources/home/images/goods.jpg')}});"></div>
			<div class="td animated slideRight clearfix">
				<div class="text">
					@foreach($index2_box['article'] as $b_k=>$b_v)
					@if( $b_k < 5)
					<div class="tdas" @if($b_k!=0) style="display:none;" @endif>
						<h4>职位要求</h4>
						<div class="asb">{!!nl2br($b_v['desc'])!!}</div>
						<a href="{{ConfigGet('hr_url')}}">直达HR</a>
					</div>
					@endif
					@endforeach
					<div class="btns clearfix">
						@foreach($index2_box['article'] as $b_k=>$b_v)
						@if($b_k < 2)
						<div class="btne btsou @if($b_k==0) active @endif" index="{{$b_k}}">{{$b_v['title']}}</div>
						@endif
						@endforeach
					</div>
				</div>
				<div class="btnlist">
					@foreach($index2_box['article'] as $b_k=>$b_v)
					@if($b_k > 1 && $b_k < 5)
					<div class="btnex btsou" index="{{$b_k}}">{{$b_v['title']}}</div>
					@endif
					@endforeach
				</div>
			</div>
		</div>
	</div>
@elseif($index2_box['template']=='index2-shixijidi')
	<div class="fnitem " id="a_{{$index2_box_k}}">
		<div class="casetitle">
			<i class="lt"></i>
			{{$index2_box['title']}}
			<i class="rt"></i>
		</div>
		<div class="bigdata">
			<div class="text">{!!nl2br($index2_box['cat_desc'])!!}</div>
			<ul class="datalisx clearfix">
				@foreach($index2_box['article'] as $b_k=>$b_v)
				<li class="animated slideUp" data-time="{{($b_k+1)*100}}">
					<h3 style="background-image: url({{asset($b_v['img'])}});">{{$b_v['title']}}</h3>
					<div class="td content_con">{!!$b_v['content']!!}</div>
				</li>
				@endforeach
			</ul>
		</div>
	</div>
@endif