<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable, HasRoles;

    public function roles()
    {
        return $this->belongsToMany('App\Role');
    }

    
    protected $fillable = [
        'rut','rol', 'nombre', 'email', 'password', 'universidad', 'carrera'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
}
