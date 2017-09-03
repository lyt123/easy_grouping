<?php
namespace App\Repository;

use App\Models\Picture;

class PictureRepository extends BaseRepository
{
    const MODEL = Picture::class;

    public static function recyclePicture($type, $forergn_id, $picture_paths_array)
    {
        $pictures = static::read(['where' => ['type' => $type, 'foreign_id' => $forergn_id]]);

        //删除旧的图片数据
        foreach ($pictures as $picture) {
            if (!in_array($picture['path'], $picture_paths_array)) {
                static::destroyData(['id' => $picture['id']], false);
            }
        }

        //增加新的图片
       if($new_pictures = array_diff($picture_paths_array, array_column($pictures, 'path'))){
           $picture_data = [];
           foreach ($new_pictures as $key => $one_path) {
               $picture_data[$key]['path'] = $one_path;
               $picture_data[$key]['type'] = $type;
               $picture_data[$key]['foreign_id'] = $forergn_id;
           }

           static::setCondition([])->insert($picture_data);
       }

    }
}