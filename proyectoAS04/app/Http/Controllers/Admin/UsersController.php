<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Role;
use App\User;
use App\Universidad;
use App\Carreras;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Mail;
use App\Imports\UsersImport;
use Maatwebsite\Excel\Facades\Excel;
use Storage;

class UsersController extends Controller
{

    public function index(Request $request)
    {
        $request->user()->authorizeRoles(['Administrador','Coordinador','Profesor']);
        $keyword = $request->get('search');
        $perPage = 15;

        if (!empty($keyword)) {
            $users = User::where('nombre', 'LIKE', "%$keyword%")->orWhere('email', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $users = User::latest()->paginate($perPage);
        }

        return view('admin.users.index', compact('users'));
    }


    public function create(Request $request)
    {
        $request->user()->authorizeRoles(['Administrador','Coordinador','Profesor']);
        $roles = Role::select('id', 'name', 'label')->get();
        $universidades = Universidad::all();
        $carreras = Carreras::all();
        $roles = $roles->pluck('label', 'name');

        return view('admin.users.create', compact('roles', 'universidades', 'carreras'));
    }


    public function store(Request $request)
    {
        $this->validate(
            $request,
            [
                'nombre' => 'required',
                'rut' => 'required',
                'email' => 'required|string|max:255|email|unique:users',
                'password' => 'required',
                'roles' => 'required',
                'universidad' => 'required',
                'carrera' => 'required'
            ]
        );



        $data = $request->except('password');
        $data['password'] = bcrypt($request->password);
        $user = User::create($data);

        $data = ['nombre_email' => $user->email, 'rut' => $user->rut, 'nombre' => $user->nombre, 'password' => $user->password];


        Mail::send(['text'=>'usuarioIngresado'], $data ,function($message) use ($user){
                    $message->to($user->email,'Usuario')->subject('Usuario Creado correctamente');
                    $message->from('apredizajeyservicio@gmail.com');
        });

        foreach ($request->roles as $role) {
            $user->assignRole($role);
        }

        return redirect('admin/users')->with('flash_message', 'User added!');
    }


    public function show($id, Request $request)
    {
        $request->user()->authorizeRoles(['Administrador','Coordinador','Profesor']);
        $user = User::findOrFail($id);

        return view('admin.users.show', compact('user'));
    }


    public function edit($id, Request $request)
    {
        $request->user()->authorizeRoles(['Administrador','Coordinador','Profesor']);
        $roles = Role::select('id', 'name', 'label')->get();
        $roles = $roles->pluck('label', 'name');

        $universidades = Universidad::all();

        $usuario=DB::table('users')
        ->where('id', '=' ,$id)
        ->first();
        //UNIVERSIDAD NOMBRE
        $userUniversidad=$usuario->universidad;

        $univ=DB::table('universidades')
        ->where('id', '=' ,$id)
        ->select('id', 'nombre_universidad')
        ->first();
        //FIN UNIVERSIDAD

        $user = User::with('roles')->select('id', 'nombre', 'email','password')->findOrFail($id);
        $user_roles = [];
        foreach ($user->roles as $role) {
            $user_roles[] = $role->name;
        }

        return view('admin.users.edit', compact('user', 'roles', 'user_roles','universidades','univ','usuario'));
    }

    public function edituser($id)
    {
        $roles = Role::select('id', 'name', 'label')->get();
        $roles = $roles->pluck('label', 'name');
        $universidades = Universidad::all();

        //UNIVERSIDAD NOMBRE
        $user = Auth::user();
        $userUniversidad=$user->universidad;

        $univ=DB::table('universidades')
        ->where('id', '=' ,$userUniversidad)
        ->select('id', 'nombre_universidad')
        ->first();
        //FIN UNIVERSIDAD

        $user = User::with('roles')->select('id', 'nombre', 'email')->findOrFail($id);
        $user_roles = [];
        foreach ($user->roles as $role) {
            $user_roles[] = $role->name;
        }

        return view('admin.users.edituser', compact('user', 'roles', 'user_roles','universidades','univ'));
    }

    public function update(Request $request, $id)
    {
        $this->validate(
            $request,
            [
                'nombre' => 'required',
                'email' => 'required|string|max:255|email|unique:users,email,' . $id,
                'roles' => 'required',
                'universidad' => 'required'
            ]
        );

        $data = $request->except('password');
        if ($request->has('password')) {
            $data['password'] = bcrypt($request->password);
        }

        $user = User::findOrFail($id);
        $user->update($data);

        $user->roles()->detach();
        foreach ($request->roles as $role) {
            $user->assignRole($role);
        }

        return redirect('admin/users')->with('flash_message', 'Usuario Actualizado');
    }


    public function destroy($id)
    {
        User::destroy($id);

        return redirect('admin/users')->with('flash_message', 'User deleted!');
    }

    public function importar_excel()
    {
        return view('Excel_Import.excel_importar');
    }

    public function cargar_datos_usuarios(Request $request)
    {
        $archivo = $request->file('archivo');
        $nombre_original=$archivo->getClientOriginalName();
        $extension=$archivo->getClientOriginalExtension();
        $r1=Storage::disk('archivos')->put($nombre_original,  \File::get($archivo) );
        $ruta  =  storage_path('archivos') ."/". $nombre_original;
        

        Excel::import(new UsersImport, $nombre_original, 'archivos');
        return redirect('/admin/users')->with('success', 'All good!');

    }

    // public function cargar_datos_usuarios(Request $request)
    // {
    //    $archivo = $request->file('archivo');
    //    $nombre_original=$archivo->getClientOriginalName();
    //    $extension=$archivo->getClientOriginalExtension();
    //    $r1=Storage::disk('archivos')->put($nombre_original,  \File::get($archivo) );
    //    $ruta  =  storage_path('archivos') ."/". $nombre_original;
       
    //    if($r1){
    //         $ct=0;

    //         Excel::load($ruta, function($hoja) {
    //             dd("Hola");
                
    //             $hoja->each(function($fila) {
    //                 $usersemails=User::where("email","=",$fila->email)->first();
    //                 if(count( $usersemails)==0){
    //                     $usuario=new User;
    //                     $usuario->rut= $fila->rut;
    //                     $usuario->nombre= $fila->nombres;
    //                     $usuario->email= $fila->email;
    //                     $usuario->rol= $fila->rol; 
    //                     $usuario->universidad= $fila->universidad;
    //                     $usuario->carrera= $fila->carrera;
    //                     $usuario->password= bcrypt($fila->password);
    //                     $usuario->save();
    //                 }
             
    //             });

    //         });

    //         return view("mensajes.msj_correcto")->with("msj"," Usuarios Cargados Correctamente");
        
    //    }
    //    else
    //    {
    //         return view("mensajes.msj_rechazado")->with("msj","Error al subir el archivo");
    //    }

    // }

    public function import() 
    {
        Excel::import(new UsersImport, 'users.xlsx');
        
        return redirect('/')->with('success', 'All good!');
    }


    // public function cargar_datos_usuarios(Request $request)
    // {
    //    $archivo = $request->file('archivo');
    //    $nombre_original=$archivo->getClientOriginalName();
    //    $extension=$archivo->getClientOriginalExtension();
    //    $r1=Storage::disk('archivos')->put($nombre_original,  \File::get($archivo) );
    //    $ruta  =  storage_path('archivos') ."/". $nombre_original;
       
    //    if($r1){
    //         $ct=0;
    //         Excel::selectSheetsByIndex(0)->load($ruta, function($hoja) {
                
    //             $hoja->each(function($fila) {
    //                 $usersemails=User::where("email","=",$fila->email)->first();
    //                 if(count( $usersemails)==0){
    //                     $usuario=new User;
    //                     $usuario->nombres= $fila->nombres;
    //                     $usuario->apellidos= $fila->apellidos;
    //                     $usuario->email= $fila->email;
    //                     $usuario->telefono= $fila->telefono; //este campo llamado telefono se debe agregar en la base de datos c
    //                     $usuario->pais= $fila->pais;
    //                     $usuario->ciudad= $fila->ciudad;
    //                     $usuario->institucion= $fila->institucion;
    //                     $usuario->ocupacion= $fila->ocupacion;
    //                     $usuario->password= bcrypt($fila->password);
    //                     $usuario->save();
    //                 }
             
    //             });

    //         });

    //         return view("mensajes.msj_correcto")->with("msj"," Usuarios Cargados Correctamente");
        
    //    }
    //    else
    //    {
    //         return view("mensajes.msj_rechazado")->with("msj","Error al subir el archivo");
    //    }

    // }
}