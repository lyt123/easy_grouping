<?php

namespace App\Repository;

use App\Models\ActivityJoin;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ActivityJoinRepository extends BaseRepository
{
    const MODEL = ActivityJoin::class;

    public static function exceedNumberLimit($id)
    {
        $join_number = static::setCondition(['activity_id' => $id])->count();

        $number_limit = DB::table('activity')->where(['id' => $id])->get(['number_limit'])[0]->number_limit;

        return $join_number >= $number_limit;
    }

    public static function myJoin()
    {
        return static::setCondition(['user_id' => session('user.id')])
            ->withCertain('activity')
            ->get();
    }

}