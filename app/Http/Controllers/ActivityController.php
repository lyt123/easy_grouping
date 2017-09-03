<?php

namespace App\Http\Controllers;

use App\Repository\ActivityJoinRepository;
use App\Repository\ActivityRepository;
use App\Repository\CommonRepository;
use App\Repository\PictureRepository;
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
            foreach ($picture_paths as $key => $one_path) {
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
//        $result = ActivityRepository::indexList($req->get('limit'));

//        return success($result);
        echo 'hehe';
    }

    public function join(Request $req)
    {
        $data = $req->all();

        $data['user_id'] = session()->get('user.id');

        ActivityJoinRepository::checkExist(
            ['user_id' => $data['user_id'], 'activity_id' => $data['activity_id']],
            'tip.already_join', 1
        );

        if (ActivityJoinRepository::exceedNumberLimit($data['activity_id']))
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

    public function update(Request $req, $id)
    {
        $data = $req->except(['picture_paths']);
        $data['time_start'] = strtotime($data['time_start']);

        //统一管理图片回收,不合理。图片的上传跟活动的添加还是不要分开两个接口会好一点
        //这里的transaction是没意义的，失败也不会回退，所以我加了一个false参数在updateData上，原因我还没弄明白
        DB::transaction(function () use ($id, $req, $data){
            PictureRepository::recyclePicture(
                CommonRepository::typeToNumber('activity'),
                $id,
                $req->get('picture_paths')
            );
            ActivityRepository::updateData($data, $id, false);
        });

        return success();
    }

    public function destroy($id)
    {
        //真正删除：
       /* DB::transaction(function () use ($id) {
            ActivityRepository::destroyData(['id' => $id]);

            PictureRepository::destroyData(['type' => CommonRepository::typeToNumber('activity'), 'foreign_id' => $id]);
        });*/

        //这里并不真正删除，只是将它的deleted_at字段设为当前时间
        return success(ActivityRepository::updateData(['deleted_at' => time()], $id));
    }
}
