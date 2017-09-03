<?php
namespace App\Repository;

use App\Models\Activity;

class ActivityRepository extends BaseRepository
{
    const MODEL = Activity::class;

    public static function indexList($limit)
    {
        return static::setCondition(['is_public' => 1, 'deleted_at' => 0])->withCertain('user')
            ->paginate($limit)->toArray();
    }

    public static function detail($id)
    {
        return static::setCondition(['id' => $id])
            ->withCertain('picture', [], ['foreign_id' => $id])
            ->withCertain('user')
            ->withCertain('activity_user')
            ->with(['comment' => function ($query) {
                $query->where(['type' => 1])
                    ->join('user', 'comment.user_id', '=', 'user.id')
                    ->select('comment.*', 'user.user_name', 'user.head_path');
            }])
            ->first();
    }

    public static function myCreate()
    {
        return static::setCondition(['user_id' => session()->get('user.id')])
            ->with('user')
            ->get();
    }
}