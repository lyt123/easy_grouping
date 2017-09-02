<?php

namespace App\Models;

class ActivityJoin extends BaseModel
{
    protected $table = 'user_activity';

    protected $guarded = ['id'];

    public $timestamps = false;

    public function activity()
    {
        return $this->hasOne(Activity::class, 'id', 'activity_id');
    }

}