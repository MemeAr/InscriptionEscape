<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teams extends Model
{
  protected $table = 'team';

  protected $fillable = ['id', 'user_id', 'team_number'];

}
