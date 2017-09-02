<?php

namespace App\Http\Controllers;

use App\Repository\UserRepository;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function __construct()
    {
        //测试用
        session()->put('user.id', random_int(1, 1000));
    }

    public function login(Request $req)
    {
        $data = $req->only('openid');

        if($result = UserRepository::read(['where' => $data], true)){
            session()->put('user.id', $result['id']);
        } else {
            return fail('openid不存在');
        }

        return success($result);
    }
}
