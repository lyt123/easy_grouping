<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCommentRequest;
use App\Repository\CommentRepository;
use App\Repository\CommonRepository;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function __construct()
    {
        $this->middleware('must_login', ['only' => ['store']]);
    }

    public function store(StoreCommentRequest $req)
    {
        $data = $req->all();

        $data['user_id'] = session()->get('user.id');

        $data['created_at'] = time();

        $data['type'] = CommonRepository::typeToNumber($data['type']);

        $result = CommentRepository::store($data);
        return success($result);
    }
}
