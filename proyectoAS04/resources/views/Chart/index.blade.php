@extends('layouts.app2')

@section('title', 'Informes')

@section('content') 
<!--   <div class="form-group col-sm-6 col-lg-4"> -->
  	<div class="form-group col-sm-6 col-lg-4">
    	@section('titulo', 'Informes')
  	</div>
  	@include('common.sessions')
			    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
			    <script type="text/javascript">

			    	//----------- Grafico 1 -------------------- 
			      	google.charts.load('current', {'packages':['corechart']});
				    google.charts.setOnLoadCallback(drawChart);

			      	function drawChart() {

			        	var data = google.visualization.arrayToDataTable([
			          	['Universidades', 'Cantidad Proyectos'],
			          	@foreach ($proy as $p)
			          		['{{$p->nombre_universidad}}',{{$p->proy_count}}],
			          	@endforeach
			        ]);

			        var options = {
				        hAxis: {
				          title: 'Proyectos por Universidad',
				          minValue: 0
				        }
			          //title: 'Cantidad de Proyectos por Universidad'
			        };

			        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

			        chart.draw(data, options);
			      	}


			      	//----------- Grafico 2 -------------------- 
			      	google.charts.load('current', {packages: ['corechart', 'bar']});
					google.charts.setOnLoadCallback(drawBasic);

					function drawBasic() {

					      var data = google.visualization.arrayToDataTable([
					        ['Universidad', 'Año 2018',],
					        @foreach($anio as $a)
					        	['{{$a->nombre_universidad}}', {{$a->anio_count}}],
					        @endforeach
					        // ['Los Angeles, CA', 3792000],
					        // ['Chicago, IL', 2695000],
					        // ['Houston, TX', 2099000],
					        // ['Philadelphia, PA', 1526000]
					      ]);

					      var options = {
					        title: 'Cantidad de Proyectos en el año 2018 por Universidades',
					        chartArea: {width: '50%'},
					        hAxis: {
					          title: 'Cantidad de Proyectos',
					          minValue: 0
					        },
					        vAxis: {
					          title: 'Universidad'
					        }
					      };

					      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

					      chart.draw(data, options);
					    }
		  	    
			    </script>
			  <body>
			  	<nav class="nav">
				  <a class="nav-link" href="#grafico1">Grafico 1</a>
				  <a class="nav-link" href="#grafico2">Grafico 2</a>
				  <a class="nav-link" href="#grafico3">Grafico 3</a>
				  <a class="nav-link" href="#grafico4">Grafico 4</a>
				  <a class="nav-link" href="#grafico5">Grafico 5</a>
				  <a class="nav-link" href="#grafico6">Grafico 6</a>
				</nav>
			  	<div id="grafico1" class="card card-small mb-4">
				  	<div class="d-flex justify-content-between">
					  	<div class="col-12 py-3 mb-4 ">
					  			<div class="card-header">
					  				<h4 style="color:#0064FF; font: condensed 160% sans-serif;"><b>Cantidad de Proyectos por Universidad</b></h4>
					  			</div>
					  		<div class="row container-fluid d-flex align-items-center">
								<div id="piechart" style="width: 900px; height: 500px;"></div>
							</div>
						</div>
					</div>
				</div>
			  	<div id="grafico2" class="card card-small mb-4">
				  	<div class="d-flex justify-content-center">
					  	<div class="col-12 py-3 mb-4 ">
					  			<div class="card-header" style="text-align: center;">
					  				<h4 style="color:#0064FF; font: condensed 160% sans-serif;"><b>Cantidad de Proyectos en el año 2018 por Universidades</b></h4>
					  			</div>
					  		<div class="row container-fluid d-flex align-items-center">
								    <div id="chart_div" style="width: 900px; height: 500px;"></div>
							</div>
						</div>
				  	</div>
			  	</div>
			  	<div id="grafico3" class="card card-small mb-4">
				  	<div class="d-flex justify-content-center">
					  	<div class="col-12 py-3 mb-4 ">
					  			<div class="card-header" style="text-align: center;">
					  				<h4 style="color:#0064FF; font: condensed 160% sans-serif;"><b>Cantidad de Proyectos en el año 2018 por Universidades</b></h4>
					  			</div>
					  		<div class="row container-fluid d-flex align-items-center">
								    <div id="chart_div" style="width: 900px; height: 500px;"></div>
							</div>
						</div>
				  	</div>
			  	</div>
			  	<div id="grafico4" class="card card-small mb-4">
				  	<div class="d-flex justify-content-center">
					  	<div class="col-12 py-3 mb-4 ">
					  			<div class="card-header" style="text-align: center;">
					  				<h4 style="color:#0064FF; font: condensed 160% sans-serif;"><b>Cantidad de Proyectos en el año 2018 por Universidades</b></h4>
					  			</div>
					  		<div class="row container-fluid d-flex align-items-center">
								    <div id="chart_div" style="width: 900px; height: 500px;"></div>
							</div>
						</div>
				  	</div>
			  	</div>
			  	<div id="grafico5" class="card card-small mb-4">
				  	<div class="d-flex justify-content-center">
					  	<div class="col-12 py-3 mb-4 ">
					  			<div class="card-header" style="text-align: center;">
					  				<h4 style="color:#0064FF; font: condensed 160% sans-serif;"><b>Cantidad de Proyectos en el año 2018 por Universidades</b></h4>
					  			</div>
					  		<div class="row container-fluid d-flex align-items-center">
								    <div id="chart_div" style="width: 900px; height: 500px;"></div>
							</div>
						</div>
				  	</div>
			  	</div>
			  	<div id="grafico6" class="card card-small mb-4">
				  	<div class="d-flex justify-content-center">
					  	<div class="col-12 py-3 mb-4 ">
					  			<div class="card-header" style="text-align: center;">
					  				<h4 style="color:#0064FF; font: condensed 160% sans-serif;"><b>Cantidad de Proyectos en el año 2018 por Universidades</b></h4>
					  			</div>
					  		<div class="row container-fluid d-flex align-items-center">
								    <div id="chart_div" style="width: 900px; height: 500px;"></div>
							</div>
						</div>
				  	</div>
			  	</div>
			  </body>
  		</div>
	</div>
@endsection