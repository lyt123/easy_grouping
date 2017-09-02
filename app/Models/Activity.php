<?php
/* User:lyt123; Date:2017/8/30; QQ:1067081452 */

namespace App\Models;

class Activity extends BaseModel
{
    protected $table = 'activity';

    protected $guarded = ['id'];

    public $timestamps = false;

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function activity_user()
    {
        return $this->belongsToMany(User::class, 'user_activity');
    }

    public function comment()
    {
        return $this->hasMany(Comment::class, 'foreign_id');
    }

    public function picture()
    {
        return $this->hasMany(Picture::class, 'foreign_id');
    }
}