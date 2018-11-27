@extends('layouts.app2')

@section('content')

@section('titulo', 'Nuevos Usuarios')

<div class="card card-small py-3 mb-4 d-flex align-items-center">
	<div class="card-body container-fluid">
		<div class="col-md-12">
	    	<div class="box box-primary">
          		<div class="box-header">
            		<h3 class="box-title"><b>Importar Nuevos Usuarios</b></h3>
            		<br>
          		</div><!-- /.box-header -->
	     
	      		<div id="notificacion_resul_fcdu"></div>

	      			<form  id="f_cargar_datos_usuarios" name="f_cargar_datos_usuarios" method="post"  action="cargar_datos_usuario" class="formarchivo" enctype="multipart/form-data" >                
		      	 		<input type="hidden" name="_token" id="_token"  value="<?= csrf_token(); ?>"> 

		      			<div class="box-body">
						    <div class="form-group col-xs-12"  >
						        <label>Adjuntar archivo en formato Excel (.xlsx) </label>
						        <input name="archivo" id="archivo" type="file"   class="archivo form-control"  required/><br /><br />
						    </div>

		     
		      				<div class="box-footer">
		                          <button type="submit" class="btn btn-success"><i class="far fa-file-excel"></i> Importar Datos</button>
		      				</div>
		      			</div>
	      			</form>
	      		</div>
	  		</div>
    	</div>
    </div>
</div>


@endsection
