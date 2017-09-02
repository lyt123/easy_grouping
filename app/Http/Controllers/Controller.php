<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

abstract class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $upload_root = 'upload/';

    /**
     * Des :上传图片
     * Auth:lyt123
     */
    public function uploadImg(array $config = [
        'key' => '',
        'path' => '',
        'save_name' => '',
        'max_size' => 0
    ], Request $req)
    {
        $config['allow_extensions'] = ['jpg', 'png'];
        $config['path'] = 'img/'.$config['path'];
        if(!isset($config['max_size'])) $config['max_size'] = 2097152;
        if(!isset($config['save_name'])) $config['save_name'] = '';

        return $this->uploadAFile($config, $req);
    }

    public function uploadAFile(array $config = [
        'key' => '',
        'path' => '',
        'save_name' => '',
        'allow_extensions' => [],
        'max_size' => 0
    ], Request $req)
    {
        if(!$file = $req->file($config['key'])) abort(422, '没有文件被上传');
        if(!$file->isValid()) abort(422, $file->getErrorMessage());

        $extension = $file->getClientOriginalExtension();
        $save_name = $config['save_name'].str_random(8).'.'.$extension;

        if($extension && !in_array($extension, $config['allow_extensions']))
            abort(422, '文件格式不允许');

        if($file->getSize() > $config['max_size'])
            abort(422, '文件超过允许大小');

        $path = $this->upload_root.$config['path'];

        $file->move($path, $save_name);

        return $path.$save_name;
    }
}
