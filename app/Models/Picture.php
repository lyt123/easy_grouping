<?php
/* User:lyt123; Date:2017/8/30; QQ:1067081452 */

namespace App\Models;

class Picture extends BaseModel
{
    protected $table = 'picture';

    protected $guarded = ['id'];

    public $timestamps = false;

    public $resourceFields = ['path'];
}