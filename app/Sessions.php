<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sessions extends Model
{
  protected $table = 'session';

  protected $fillable = ['id', 'teamnumber_id'];
}
