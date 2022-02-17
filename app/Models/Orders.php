<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    use HasFactory;

    protected $fillable = [
        'email',
        'name',
        'products_id'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'products_id');
    }

}
