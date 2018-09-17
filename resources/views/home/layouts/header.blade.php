@section('header')
    <div class="header">
        <div class="header-feixd clearfix">
            <div class="headerbox">
                <a href="/" class="logo">
                    <img src="{{asset(ConfigGet('logo'))}}">
                </a>
                <div class="nav">
                    <ul class="clearfix">
                        @foreach(nav(1) as $k=>$v)
                        <li>
                            <span>
                                <a @if(!empty($v['url'])) href="{{$v['url']}}" @endif @if($v['is_blank']) target="_blank" @endif title="{{$v['title']}}"  >{{$v['title']}}</a>
                                @if(count($v['child']))
                                <!-- <i class="iconfont">&#xe720;</i> -->
                                @endif
                            </span>
                            @if(count($v['child']))
                            <div class="seconed clearfix">
                                @foreach($v['child'] as $v2)
                                @if(count($v2['child']))
                                <dl>
                                    <dt>{{$v2['title']}}</dt>
                                    @foreach($v2['child'] as $v3)
                                    <dd >
                                        <a @if(!empty($v3['url'])) href="{{$v3['url']}}" @endif @if($v3['is_blank']) target="_blank" @endif title="{{$v3['title']}}"  >{{$v3['title']}}</a>
                                    </dd>
                                    @endforeach
                                </dl>
                                @else
                                <a @if(!empty($v2['url'])) href="{{$v2['url']}}" @endif @if($v2['is_blank']) target="_blank" @endif title="{{$v2['title']}}" class="n2  " >{{$v2['title']}}</a>
                                @endif
                                @endforeach
                            </div>
                            @endif
                        </li>
                        @endforeach
                    </ul>
                </div>
                <a href="{{url('download-list')}}" class="loginBtn iconfont @if(Auth::check()) active @endif">&#xe60a;</a>
                <!-- <div class="searchBtn iconfont">&#xe61e;</div> -->
                <div class="serach">
                    <form method="get" id="search" action="{{url("search")}}">
                        @csrf
                        <input type="submit" name="" class="submit iconfont"  value="&#xe61e;">
                        <input type="text" name="keyword" class="text">
                    </form>
                    <div class="sbtn iconfont">&#xe61e;</div>
                </div>
            </div>
            <div class="m-nav">
                <i></i>
            </div>
            <div class="msbtn iconfont">&#xe61e;</div>
        </div>
    </div>
@show