<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderCustomer extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function CusToUser()
    {
        return $this->belongsTo('App\Models\User', 'userId', 'id');
    }
}
