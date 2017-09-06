<?php

namespace App\Http\Requests;


class BaseActivityRequest extends Request
{
    public function commonRules()
    {
        $rules = [
            'time_start' => ['regex:/^[0-9]{4}-(((0[13578]|(10|12))-(0[1-9]|[1-2][0-9]|3[0-1]))|(02-(0[1-9]|[1-2][0-9]))|((0[469]|11)-(0[1-9]|[1-2][0-9]|30)))\\s+([0-1]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$/'],
            'time_continue' => ['regex:/^[0-9]{1}\.[05]{1}$/'],
            'user_phone' => ['sometimes|required|regex:/^\d{11}$/'],
            //用正则不好，不同编码之间应区别对待。因为mysql中的字符现在是指量的多少，而不是字节的多少了
            //'address' => ['required', 'regex:/^.{1,250}$/'],
            //laravel的between是有对编码进行检测的
            'address' => ['required', 'between:1,255'],
            //内容应改成匹配任意字符
            'content' => ['required', 'between:1,2000'],
            'number_limit' => ['regex:/^5{1}0{2}$|^[1-4]{1}[0-9]{2}$|^[1-9]{1}[0-9]{1}$|^[1-9]$/'],
            'is_public' => 'in:1,2',
            'name' => ['required', 'between:1,50']
        ];
        return $rules;
    }

    public function messages()
    {
        return [
            'name.required' => '活动名称不能为空',
            'name.regex' => '活动名称长度须在1-50个字符',
            'is_public.in' => ':attribute 必须为以下中的一个 :values',
            'number_limit' => '人数必须在1到500之间',
            'content.required' => '活动内容不能为空',
            'content.regex' => '内容须在1-2000个字符',
            'address.required' => '活动内容不能为空',
            'address.regex' => '地址长度须在1-255个字符',
            'user_phone.regex' => '手机号码需为11个字符',
            'time_continue.regex' => '持续时间需为[0-9].0或[0-9].5的格式',
            'time_start.regex' => '开始时间格式需为xxxx-xx-xx xx:xx:xx',
        ];
    }
}