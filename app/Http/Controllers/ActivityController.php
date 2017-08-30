<?php

namespace App\Http\Controllers;

use App\Repository\ActivityRepository;
use Illuminate\Http\Request;

class activityController extends Controller
{
    /**
     * Des :添加活动
     * Auth:lyt123
     */
    public function store(Request $req)
    {
        $data = $req->all();

        session()->put('user.id', '2157');

        $data['user_id'] = session()->get('user.id');
        $data['created_at'] = time();
        $data['time_start'] = strtotime($data['time_start']);

        $result = ActivityRepository::store($data);
        return success(['team_id' => $result['id']]);
    }

}
