<?php

namespace App\Http\Controllers;

use App\Repository\UserRepository;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function __construct()
    {

    }

    public function store(Request $req)
    {
        $data = $req->all();
        $data['head_path'] = env('BASE_URL') . '\upload\img\head_path\default.jpg';
        $data['user_name'] = '佚名';

        UserRepository::checkExist(['email' => $data['email']], '邮箱已被注册', 1);

        $data['password'] = password_hash($data['password'], PASSWORD_BCRYPT);

        return success(UserRepository::store($data));
    }

    public function login(Request $req)
    {
        $data = $req->all();

        UserRepository::checkExist(['email' => $data['email']], '账号不存在');

        $result = UserRepository::read(['where' => ['email' => $data['email']]], true);
        if (password_verify($data['password'], $result['password'])) {
            session()->put('user.id', $result['id']);
        } else {
            return fail('密码错误');
        }

        unset($result['password']);
        return success($result);
    }

    public function updateUserInfo(Request $req, $id)
    {
        $data = $req->except('head_path');

        //防止登录的用户修改其他用户
        if ($id != session()->get('user.id')) {
            return fail('非法操作');
        }

        if ($req->hasFile('head_path')) {
            $data['head_path'] = env('BASE_URL') . $this->uploadImg([
                    'key' => 'head_path',
                    'path' => 'head_path/',
                ], $req);
        }

        return success(UserRepository::updateData($data, $id));
    }
}
