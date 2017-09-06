<?php

namespace App\Http\Requests;


class StoreActivityRequest extends BaseActivityRequest
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return $this->commonRules();
    }
}