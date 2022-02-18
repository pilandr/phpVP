<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use HasFactory;
    protected $table = 'settings';

    protected $fillable = [
        'name',
        'value'
    ];

    public static function getByNameField(string $name)
    {
        return self::query()->where('name', '=', $name)->first();
    }
}
