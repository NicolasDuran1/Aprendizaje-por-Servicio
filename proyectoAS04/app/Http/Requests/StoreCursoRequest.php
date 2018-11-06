<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCursoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [ //Validacion de campos requeridos para subir una Universidad nueva
            'nombre_curso' => 'required',
            'id_carrera' => 'required',
            'id_facultad' => 'required',
            'id_universidad' => 'required'
        ];
    }
}
