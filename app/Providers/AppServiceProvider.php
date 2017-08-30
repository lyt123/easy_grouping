<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public static $sql_listen = [];

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //        error_reporting(E_ALL ^ E_NOTICE);//设置错误级别
        if(env('APP_DEBUG', false)) {
            \DB::listen(function($sql, $binding, $time) {

                $status = [
                    'sql' => $sql,
                    'binding' => json_encode($binding),
                    'time' => $time.'ms'
                ];
                self::$sql_listen[] = $status;
            });
        }
    }
}
