<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;

class CommonController extends Controller
{
    public function __construct()
    {
        $this->middleware('must_login', ['only' => ['upload']]);
    }
    /**
     * Des :上传文件
     * Auth:lyt123
     * param: type = 'image', name = 'xxx', xxxx(图片的字段名称)
     */
    public function upload(Request $request)
    {
        $config = [];
        if ($request->get('type') == 'image') {
            $config['allow_extensions'] = ['jpg', 'png', 'gif'];
            $config['size'] = 2097152;
            $config['name'] = $request->get('name');
            $config['save_path'] = 'upload/activity/'.
                session()->get('user.id') . '/' ;
        }

        //判断文件存在
        if (!$request->hasFile($config['name'])) {
            abort(404, trans('tips.empty_file'));
            return null;
        }

        $file = $request->file($config['name']);

        //判断文件是否上传成功
        if (!$file->isValid())
            abort(500);

        //检查文件类型
        $extension = $file->getClientOriginalExtension();
        if ($extension && !in_array($extension, $config['allow_extensions']))
            abort(403, trans('tips.refuse_extension'));

        //限制文件上传大小
        if ($file->getSize() > $config['size'])
            abort(403, trans('tips.exceed_size'));

        //归类存放文件
        $file_name = md5(random_bytes(4)) . '.' . $extension;
        $request->file($config['name'])->move($config['save_path'], $file_name);

        return success($config['save_path'] . $file_name);
    }
}