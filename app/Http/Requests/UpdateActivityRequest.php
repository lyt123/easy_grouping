<?php

namespace App\Http\Requests;


class UpdateActivityRequest extends BaseActivityRequest
{
    public function rules()
    {
        return $this->commonRules();
    }
}