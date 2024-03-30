<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['title','image_url','description','problem_solution', 'features'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
