<?php
namespace App\Repository;

class CommonRepository
{
    private static $type_nember = [
        'activity' => 1
    ];
    public static function typeToNumber($type)
    {
        return static::$type_nember[$type];
    }
}