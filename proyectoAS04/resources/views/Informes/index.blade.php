@section('scripts')

  <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	<!-- optional -->
	<script src="http://code.highcharts.com/modules/offline-exporting.js"></script>
	<script src="http://code.highcharts.com/modules/export-data.js"></script>

  <script>
			var chart1;
	  	var data1=[];

			<?php foreach ($anio as $proyecto){ ?>
				data1.push(<?php echo $proyecto->anio_count;?>)	 // Creamos el arreglo con los datos de la cantidad de proyectos por año
			<?php } ?>

			var data2=[];
			<?php foreach ($anio as $proyecto){ ?>
				data2.push(<?php echo $proyecto->anio;?>)	// Creamos el arreglo con los datos de los años
			<?php } ?>

  	$(function () {
	    chart1 = new Highcharts.chart('container1', {
			    chart: {
			        type: 'column'
			    },
			    title: {
			        text: '<b>Cantidad de proyectos por año</b>'
			    },
			    xAxis: {
			        categories: data2 //El arreglo con los datos de los años
			    },
			    series: [{
			    		name: 'Cantidad de proyectos',
			        data: data1 //El arreglo con los datos de los años
			    }],
			});
		});

    var data3=[];
		<?php foreach ($proy as $proyectos){ ?>
			data3.push(<?php echo $proyectos->proy_count;?>)
		<?php } ?>

		var nombre_universidad=[];
    var i=0;
		<?php foreach ($proy as $proyectoss){ ?>
			nombre_universidad[i] = "<?php echo $proyectoss->nombre_universidad;?>";
			i++;
		<?php } ?>

    var final = []; //array para representar los valores de data en propiedades del highcharts
	    
    for(var i=0; i < data3.length; i++) {
    	final.push({
            name: nombre_universidad[i],
            y: data3[i]			 
        }); 	   
    }

	  var compleCount=[];
		<?php foreach ($complejidad as $proyectoComplejidad){ ?>
			compleCount.push(<?php echo $proyectoComplejidad->count;?>)
		<?php } ?>

		var compleName=[];
		<?php foreach ($complejidad as $proyectoComplejidad){ ?>
			compleName.push("<?php echo $proyectoComplejidad->complejidad;?>")
		<?php } ?>

		var finalComplejidad = [];

    for(var i=0; i < compleCount.length; i++) {
    	finalComplejidad.push({
            name:compleName[i],
            y: compleCount[i]		 
        }); 	   
    }

    var UCM=[];
    var UCMF=[];
    var AUCM=[];

    var UTAL=[];
    var UTALF=[];
    var AUTAL=[];

    var UST=[];
    var USTF=[];
    var AUST=[];

    var UA=[];
    var UAF=[];
    var AUA=[];

    var fechas=[];


    <?php foreach ($universidadAnio as $ua){ ?>
    	if ("<?php echo $ua->nombre_universidad;?>" == "Universidad Católica del Maule") {
    		UCM.push(<?php echo $ua->count;?>)
    		AUCM.push(<?php echo $ua->anio;?>)
    	}
		 	if ("<?php echo $ua->nombre_universidad;?>" == "Universidad de Talca") {
    		UTAL.push(<?php echo $ua->count;?>)
    		AUTAL.push(<?php echo $ua->anio;?>)
    	}
    	if ("<?php echo $ua->nombre_universidad;?>" == "Universidad Autónoma de Chile") {
    		UA.push(<?php echo $ua->count;?>)
    		AUA.push(<?php echo $ua->anio;?>)
    	}
    	if ("<?php echo $ua->nombre_universidad;?>" == "Universidad Santo Tomás") {
    		UST.push(<?php echo $ua->count;?>)
    		AUST.push(<?php echo $ua->anio;?>)
    	}
		<?php } ?>

		var h=0,j=0,k=0,l=0;
		for (var i = 2012; i<2019; i++) {

			if (AUCM[h]==i){
				UCMF.push(UCM[h])
				h++;
			}else{
				UCMF.push(0)
			}

			if (AUTAL[j]==i){
				UTALF.push(UTAL[j])
				j++;
			}else{
				UTALF.push(0)
			}

			if (AUA[k]==i){
				UAF.push(UA[k])
				k++;
			}else{
				UAF.push(0)
			}

			if (AUST[l]==i){
				USTF.push(UST[l])
				l++;
			}else{
				USTF.push(0)
			}

			fechas.push(i)
		}

  	$(function () {
		// Build the chart
			var chart2 = new Highcharts.chart('container2', {
						    chart: {
						        plotBackgroundColor: null,
						        plotBorderWidth: null,
						        plotShadow: false,
						        type: 'pie'
						    },
						    title: {
						        text: '<b>Porcentaje de Cantidad de proyectos por universidad</b>'
						    },
						    tooltip: {
						        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
						    },
						    plotOptions: {
						        pie: {
						            allowPointSelect: true,
						            cursor: 'pointer',
						            dataLabels: {
						                enabled: true,
						                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
						                style: {
						                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
						                },
						                connectorColor: 'silver'
						            }
						        }
						    },
						    series: [{
						        name: 'Porcentaje',
						        data: final
						    }]
						});
		});

  	$(function () {
	    chart3 = new Highcharts.chart('container3', {
						    chart: {
						        plotBackgroundColor: null,
						        plotBorderWidth: null,
						        plotShadow: false,
						        type: 'pie'
						    },
						    title: {
						        text: '<b>Porcentaje de la complejidad de los proyectos por universidad</b>'
						    },
						    tooltip: {
						        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
						    },
						    plotOptions: {
						        pie: {
						            allowPointSelect: true,
						            cursor: 'pointer',
						            dataLabels: {
						                enabled: true,
						                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
						                style: {
						                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
						                },
						                connectorColor: 'silver'
						            }
						        }
						    },
						    series: [{
						        name: 'Porcentaje',
						        data: finalComplejidad
						    }]
						});
		});

  	var chart4;
  	$(function () { 
	    chart4 = new Highcharts.chart('container4', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: '<b>Proyectos en Región del Maule</b>'
		    },
		    subtitle: {
		        text: 'Universidades Asociadas'
		    },
		    xAxis: {
		        categories: fechas,
		        crosshair: true
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: 'Cantidad de Proyectos'
		        }
		    },
		    tooltip: {
		        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
		        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
		            '<td style="padding:0"><b>{point.y:.1f}</b></td></tr>',
		        footerFormat: '</table>',
		        shared: true,
		        useHTML: true
		    },
		    plotOptions: {
		        column: {
		            pointPadding: 0.2,
		            borderWidth: 0
		        }
		    },
		    series: [{
		        name: 'Universidad Catolica del Maule',
		        data: UCMF

		    }, {
		        name: 'Universidad de Talca',
		        data: UTALF
		    }, {
		        name: 'Universidad Autonoma de Chile',
		        data: UAF

		    }, {
		        name: 'Universidad Santo Tomas',
		        data: USTF

		    }]
		});
		});
  </script>
@endsection
@extends('layouts.app2')
@section('content')
  <div class="form-group col-sm-6 col-lg-4">
      @section('titulo', 'Estadisticas')
    </div>
	<nav class="nav">
				  <a class="nav-link" href="#con1" style="color: #00085D">Item 1</a>
				  <a class="nav-link" href="#con2" style="color: #00085D">Item 2</a>
				  <a class="nav-link" href="#con3" style="color: #00085D">Item 3</a>
				  <a class="nav-link" href="#con4" style="color: #00085D">Item 4</a>
	</nav>
  <div id="con1" class="card card-small my-2 py-3 mb-4 d-flex align-items-center">
  	<div class="row container-fluid">
			<div id="container4" style="width:100%; height:400px;"></div>
		</div>
	</div>
  <div id="con2" class="card card-small py-3 mb-4 d-flex align-items-center">
  	<div class="row container-fluid">
			<div id="container1" style="width:100%; height:400px;"></div>
		</div>
	</div>
  <div id="con3" class="card card-small my-2 py-3 mb-4 d-flex align-items-center">
  	<div class="row container-fluid">
			<div id="container2" style="width:100%; height:400px;"></div>
		</div>
	</div>
  <div id="con4" class="card card-small my-2 py-3 mb-4 d-flex align-items-center">
  	<div class="row container-fluid">
			<div id="container3" style="width:100%; height:400px;"></div>
		</div>
	</div>

@endsection

