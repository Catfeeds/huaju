<div class="rlist animated slideRight">
    <?php 
        //获取右侧推荐
        $c1 = \App\Models\ArticleCategory::find("434");
        $a1 = \App\Models\Article::ArticleList([
                'cate_id'=>434,
                'take'=>5,
                'is_top'=>1,
            ]);
        $c2 = \App\Models\ArticleCategory::find("435");
        $a2 = \App\Models\Article::ArticleList([
                'cate_id'=>435,
                'take'=>5,
                'is_top'=>1,
            ]);
        $c3 = \App\Models\ArticleCategory::find("436");
        $a3 = \App\Models\Article::ArticleList([
                'cate_id'=>436,
                'take'=>5,
                'is_top'=>1,
            ]);
     ?>
    <div class="item">
        <div class="title clearfix">
            <span class="icon1">{{$c1['title']}}</span>
            <a href="{{URL('category',$c1['id'])}}">更多</a>
        </div>
        <div class="nwslick">
            <dl class="slics">
                @foreach($a1 as $k=>$v)
                <dd>
                    <a href="{{URL('article',$v['id'])}}" >
                        <img src="{{asset($v['img'])}}" alt="{{$v['alt']}}">
                        <span>{{$v['title']}}</span>
                    </a>
                </dd>
                @endforeach
            </dl>
        </div>
    </div>
    <div class="item">
        <div class="title clearfix">
            <span class="icon2">{{$c2['title']}}</span>
        </div>
        <ul class="couser">
            @foreach($a2 as $k=>$v)
            <li>
                <a  href="{{URL('article',$v['id'])}}" >{{$v['title']}}</a>
            </li>
            @endforeach
        </ul>
    </div>
    <div class="item">
        <div class="title clearfix">
            <span class="icon3">{{$c3['title']}}</span>
        </div>
        <ul class="hot">
            @foreach($a3 as $k=>$v)
            <li>
                <a href="{{URL('article',$v['id'])}}" >
                    <div class="wz">{{$v['title']}}</div>
                    <span>{{date("Y-m-d",strtotime($v['add_time']))}}3</span>
                </a>
            </li>
            @endforeach
        </ul>
    </div>
</div>