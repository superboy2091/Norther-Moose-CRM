<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Client extends Model
{
    use SoftDeletes;

    public $table = 'clients';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'country',
        'date',
        'status',
        'score',
        'company',
        'contact',
        'tel1',
        'tel2',
        'town',
        'area',
        'samples',
        'display',
        'prices',
        'brand',
        'comments',
        'email',
        'rank',
        'assigned',
        'created_at',
        'updated_at',
        'deleted_at',
        'status_id'
    ];

    public function projects()
    {
        return $this->hasMany(Project::class, 'client_id', 'id');
    }

    public function status()
    {
        return $this->belongsTo(ClientStatus::class, 'status_id');
    }
}
