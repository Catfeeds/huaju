<div class="nav">
    <div class="layout">
        <ul class="clearfix">
        	@foreach($sub_category as $k=>$v)
            <li class="@if(isset($v)&&in_array($v['id'],$cate_tree_on)) on @endif" ><a href="{{url('category',$v['id'])}}" title="{{$v['title']}}">{{$v['title']}}</a></li>
            @endforeach
        </ul>
    </div>
</div>