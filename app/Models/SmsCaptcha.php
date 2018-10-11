<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Request;
class SmsCaptcha extends Model
{
	public $timestamps = false;
    protected $table = 'sms_captcha';

    public function smsSend($phone){
        //验证码发送
        $ip = Request::getClientIp();
        $count = SmsCaptcha::where('add_time',">",strtotime(date('Y-m-d')))->where(function($query){
        	$query->where('phone',$phone)->orWhere('ip',$ip);
        })->count();
        if($count>10){
        	//每天10次验证码
        	return false;
        }
        $count = SmsCaptcha::where('add_time',">",time()-60)->where(function($query){
            $query->where('phone',$phone)->orWhere('ip',$ip);
        })->count();
        if($count){
            //60秒内重复请求
            return false;
        }
        
        $add_arr = new SmsCaptcha;
        $add_arr->phone = $phone;
        $add_arr->add_time = time();
        $add_arr->captcha = mt_rand(1000,9999);
        $add_arr->ip = $ip;
        $add_arr->save();
        //发送邮件
        $sms = sms_send($phone,"您的验证码为".$add_arr->captcha."，在30分钟内有效。如非本人操作请忽略本短信。");
        if(!$sms){
            //发送失败
            return false;
        }
        return $add_arr;
    }
    
}
