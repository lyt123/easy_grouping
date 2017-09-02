<?php

namespace App\Http\Controllers;

use App\Repository\ActivityJoinRepository;
use App\Repository\ActivityRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class activityController extends Controller
{
    public function __construct()
    {
        $this->middleware('must_login', ['except' => ['index']]);
    }

    /**
     * Des :添加活动
     * Auth:lyt123
     */
    public function store(Request $req)
    {
        $data = $req->except(['picture_paths']);

        $data['created_at'] = time();
        $data['user_id'] = session()->get('user.id');
        $data['time_start'] = strtotime($data['time_start']);

        $picture_paths = $req->get('picture_paths');
        DB::transaction(function () use ($data, $picture_paths, &$result) {
            $result = ActivityRepository::store($data);
            $picture_data = [];
            foreach($picture_paths as $key =>  $one_path){
                $picture_data[$key]['path'] = $one_path;
                $picture_data[$key]['type'] = 1;//1-activity_image
                $picture_data[$key]['foreign_id'] = $result['id'];
            }

            DB::table('picture')->insert($picture_data);
        });

        return success(['team_id' => $result['id']]);
    }

    public function index(Request $req)
    {
        $result = ActivityRepository::indexList($req->get('limit'));

        return success($result);
    }

    public function join(Request $req)
    {
        $data = $req->all();

        $data['user_id'] = session()->get('user.id');

        ActivityJoinRepository::checkExist(
            ['user_id' => $data['user_id'], 'activity_id' => $data['activity_id']],
            'tip.already_join', 1
        );

        if(ActivityJoinRepository::exceedNumberLimit($data['activity_id']))
            return fail('活动人数已满');

        $result = ActivityJoinRepository::store($data);

        return success($result);
    }

    public function show($id)
    {
        $result = ActivityRepository::detail($id);

        return success($result);
    }

    public function myCreate()
    {
        $result = ActivityRepository::myCreate();

        return success($result);
    }

    public function myJoin()
    {
        $result = ActivityJoinRepository::myJoin();

        return success($result);
    }
}
