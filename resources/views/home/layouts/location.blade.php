<div class="clumb">
    当前位置：
    <a href="/">首页</a>
    @foreach($location as $k=>$v)
	> <a @if(!empty($v['url'])) href="{{$v['url']}}" @endif>{{$v['title']}}</a>
    @endforeach
</div>