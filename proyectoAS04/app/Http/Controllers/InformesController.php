<?php
 
namespace App\Http\Controllers;

use App\Universidad;
use App\User;
use App\Curso;
use App\Proyecto;
use App\Socio;
use App\Facultad;
use App\Carreras;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

class InformesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $proy = DB::table('proyectos')
                     ->join('universidades','universidades.id','=','proyectos.id_universidad') //Para obtener nombre de la universidad
                     ->select(DB::raw('count(*) as proy_count'),'universidades.nombre_universidad as nombre_universidad')
                     ->groupBy('nombre_universidad')
                     ->get();

        $anio = DB::table('proyectos')
                    //->join('universidades','universidades.id','=','proyectos.id_universidad')
                    ->select(DB::raw('count(*) as anio_count'), 'anio')
                    ->groupBy('anio')
                    ->get();

        $complejidad = DB::table('proyectos')
                    ->select(DB::raw('count(*) as count, complejidad'), 'complejidad')
                    ->groupBy('complejidad')
                    ->get();

        $universidadAnio = DB::table('proyectos')
                    ->join('universidades','universidades.id','=','proyectos.id_universidad')
                    ->select(DB::raw('count(*) as count, anio'), 'universidades.nombre_universidad as nombre_universidad')
                    ->groupBy('nombre_universidad','anio')
                    ->orderBy('anio')
                    ->get();

        return view('Informes.index', compact('proy','anio','complejidad','universidadAnio'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
