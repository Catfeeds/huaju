<?php

namespace App\Admin\Controllers;

use App\Models\ArticleCategory;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class ArticleCategoryController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('文章');
            $content->description('分类');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('文章');
            $content->description('分类');
            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('文章');
            $content->description('分类');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        // return Admin::grid(ArticleCategory::class, function (Grid $grid) {
        //     $grid->id('ID')->sortable();

        //     $grid->created_at();
        //     $grid->updated_at();
        //     $grid->actions(function ($actions) {
        //         $actions->append('<a href=""><i class="fa fa-eye"></i></a>');
        //     });
        // });
        return ArticleCategory::tree(function ($tree) {
            $tree->branch(function ($branch) {
                // return "{$branch['id']} - {$branch['title']} ";
                if($branch['template']=='index2-fuli'){
                    // <a href="/admin/article?cate_id={$branch['id']}"><i class="fa fa-book"></i></a>
                    // <a href="/admin/more-image?cate_id=2&more_id={$branch['id']}"><i class="fa fa-image"></i></a>
                    return <<<EOT
                    {$branch['id']} - {$branch['title']} 
                    <span class="pull-right dd-nodrag">
                    <a href="/admin/more-image?cate_id=2&more_id={$branch['id']}"><i class="fa fa-image"></i></a>
                    <a href="/admin/article-category/{$branch['id']}/edit"><i class="fa fa-edit"></i></a>
                    <a href="javascript:void(0);" data-id="{$branch['id']}" class="tree_branch_delete"><i class="fa fa-trash"></i></a>
                    </span>
EOT;
                }else{
                    return <<<EOT
                    {$branch['id']} - {$branch['title']} 
                    <span class="pull-right dd-nodrag">
                    <a href="/admin/article-category/{$branch['id']}/edit"><i class="fa fa-edit"></i></a>
                    <a href="javascript:void(0);" data-id="{$branch['id']}" class="tree_branch_delete"><i class="fa fa-trash"></i></a>
                    </span>
EOT;
                }
            });
        });
        // return ArticleCategory::tree();
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(ArticleCategory::class, function (Form $form) {

            // $form->display('id', 'ID');
            
            $form->text('title', '名称')->rules('required');
            $form->text('title2', '名称2');
            $form->text('en_title','英文名称');
            // $form->text('video','视频链接');
            $form->file('file','资料上传')->move('/uploads/article/'.date('Ymd'));
            $form->select('template', '模版')->options(trans('template.template'));
            // $form->text('url', '链接标识')->help('不可输入中文，必须英文标签，这里输入的标签会影响访问链接');
            $form->select('parent_id', '所属分类')->options(ArticleCategory::selectOptions());

            //首页新闻关联
            $news_related_list = ArticleCategory::select("article.id","article.title")->where("template","news")->leftjoin("article","article.cate_id","=","article_category.id")->get();
            $news_related_list = optionsDate($news_related_list);
            $form->multipleSelect('news_related',"首页新闻关联")->options($news_related_list);


            $form->textarea('cat_desc', '描述')->rows(3);
            $form->editor('content', '内容');
            $form->text('seo_title', 'seo title');
            $form->text('seo_keywords', 'seo keywords');
            $form->text('seo_description', 'seo description');
            $form->image('img', '图片')->move('/uploads/article/'.date('Ymd'))->uniqueName()->help('产品OR方案OR服务OR新闻OR案例 图片尺寸1920 X 335<br/>　人才OR简介 图片尺寸1920 X 335<br/>　实习生计划 图片尺寸700 X 503');
            $form->text('alt', '图片alt');
            $form->image('img2', '图片2')->move('/uploads/article/'.date('Ymd'))->uniqueName()->help("服务图片尺寸370 X 207<br/>　方案图片尺寸285 X 215");
            $form->text('alt2', '图片2alt');
            $form->image('mobile_banner', '手机banner')->move('/uploads/article/'.date('Ymd'))->uniqueName();

            // $form->display('created_at', '创建日期');
            // $form->display('updated_at', '更新日期');
            $form->saving(function (Form $form) {
                if($form->file){
                    $form->file = upload_file($form->file,'/uploads/course_ware/'.date('Ymd')."/",$form->file->getClientOriginalName());
                }

                $width = trans('template.cate_width.'.$form->template)>0?trans('template.cate_width.'.$form->template):null;
                $height = trans('template.cate_height.'.$form->template)>0?trans('template.cate_height.'.$form->template):null;
                if($width>0||$height>0){
                    $form->img = Image($form->img,$width,$height,"uploads/article/".date("Ymd")."/");
                }

                $width = trans('template.cate2_width.'.$form->template)>0?trans('template.cate2_width.'.$form->template):null;
                $height = trans('template.cate2_height.'.$form->template)>0?trans('template.cate2_height.'.$form->template):null;
                if($width>0||$height>0){
                    $form->img2 = Image($form->img2,$width,$height,"uploads/article/".date("Ymd")."/");
                }

                $caregory_info = ArticleCategory::find($form->parent_id);
                $width = trans('template.cate_p2_width.'.$caregory_info['template'])>0?trans('template.cate_p2_width.'.$caregory_info['template']):null;
                $height = trans('template.cate_p2_height.'.$caregory_info['template'])>0?trans('template.cate_p2_height.'.$caregory_info['template']):null;
                if($width>0||$height>0){
                    $form->img2 = Image($form->img2,$width,$height,"uploads/article/".date("Ymd")."/");
                }

            });
            $form->saved(function (Form $form) {
                //链接推送
                baidu_url(env('APP_URL').'/list-'.$form->id.'-1.html');
            });
        });
    }
}
