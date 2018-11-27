<?php

namespace App\Imports;

use App\User;
use App\Role;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new User([
            'nombre'     => $row[0],
            'rut'     => $row[1],
            'email'    => $row[2], 
            'universidad'     => $row[3],
            'carrera'     => $row[4],
            'rol'     => $row[5],
            'password' => Hash::make($row[6]),
        ]);
        // $role = "Alumno";
        // $user->assignRole($role);
    }
}
