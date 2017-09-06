<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

abstract class Request extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function response(array $errors)
    {
        return fail($errors, 422, 'Request Validator');
    }
}
