<?php

namespace App\Http\Controllers;

use App\Repository\LogoRepository;
use Illuminate\Http\Request;

class LogoController extends Controller
{
    public function __construct()
    {
        //测试用
        session()->put('user.id', '2157');
    }

    /**
     * Des :添加活动
     * Auth:lyt123
     */
    public function store(Request $req)
    {
        $data = $req->except('logo_image');

        if($req->hasFile('logo_image')) {
            $data['image_path'] = $this->uploadImg([
                'key' => 'logo_image',
                'path' => 'logo/',
            ], $req);
        }

        $result = LogoRepository::store($data);

        return success($result);
    }

    public function index(Request $req)
    {

    }


    public function show($id)
    {

    }


}
