<?php
/* User:lyt123; Date:2017/8/30; QQ:1067081452 */

namespace App\Models;

class Activity extends BaseModel
{
    protected $table = 'activity';

    protected $guarded = ['id'];

    public $timestamps = false;
}