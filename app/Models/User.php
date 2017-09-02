<?php
/* User:lyt123; Date:2017/8/31; QQ:1067081452 */

namespace App\Models;

class User extends BaseModel
{
    protected $table = 'user';

    protected $guarded = ['id'];

    public $timestamps = false;

//    public function user()
//    {
//        return $this->belongsTo('App\Models\User');
//    }
}