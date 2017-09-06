<?php

namespace App\Http\Requests;


class JoinActivityRequest extends Request
{
    public function rules()
    {
        return [
            //joiner_name存在此字段时要求此字段不为空且最长为50字符
            'joiner_name' => 'sometimes|required|max:50',
            'joiner_phone' => 'sometimes|required|regex:/^\d{11}$/',
            'joiner_company' => 'sometimes|required|between:1,100',
            'joiner_job' => 'sometimes|required|between:1,100',
        ];
    }

    public function messages()
    {
        return [
            'joiner_name' => '姓名须在1-50字符之间',
            'joiner_phone' => '手机号必须为11位',
            'joiner_company' => '公司须在1-100字符之间',
            'joiner_job' => '职务须在1-100字符之间',
        ];
    }
}