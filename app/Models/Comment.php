<?php
/* User:lyt123; Date:2017/8/30; QQ:1067081452 */

namespace App\Models;

class Comment extends BaseModel
{
    protected $table = 'comment';

    protected $guarded = ['id'];

    public $timestamps = false;

    public function user()
    {
        $this->belongsTo(User::class);
    }
}