<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
use Illuminate\Routing\Route as IlluminateRoute;
use App\Helper\CaseInsensitiveUriValidator;
use Illuminate\Routing\Matching\UriValidator;

$validators = IlluminateRoute::getValidators();
$validators[] = new CaseInsensitiveUriValidator;
IlluminateRoute::$validators = array_filter($validators, function($validator) {
    return get_class($validator) != UriValidator::class;
});
Route::get('/test', function () {
    echo 'heeh';
});

Route::get('/', function () {
    return view('welcome');
});

Route::get('/user/activity/myCreate', 'ActivityController@myCreate');
Route::get('/user/activity/myJoin', 'ActivityController@myJoin');
Route::post('/user/activity/join', 'ActivityController@join');
Route::resource('/user/activity', 'ActivityController');


Route::post('/common/upload', 'CommonController@upload');

Route::resource('/user/comment', 'CommentController');

Route::resource('/logo', 'LogoController');

Route::post('/user/login', 'UserController@login');
Route::post('/user/updateUserInfo/{id}', 'UserController@updateUserInfo');
Route::resource('/user', 'UserController');

