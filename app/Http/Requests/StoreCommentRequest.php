<?php

namespace App\Http\Requests;


class StoreCommentRequest extends Request
{
    public function rules()
    {
        $rules = [
            'content' => ['required', 'between:1,2000'],
        ];
        return $rules;
    }

    public function messages()
    {
        return [
            'content' => '评论内容须在1-2000字符',
        ];
    }
}