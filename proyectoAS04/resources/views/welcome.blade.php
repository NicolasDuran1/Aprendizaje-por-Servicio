@extends('layouts.layout')
<body>      
  @section('content')
      <div class="card text-center">
          <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active rounded">
                <img class="d-block w-100" src="{{ asset('images/c1.jpg') }}" alt="First slide">
                    <div class="card-body">
                      <h5 class="card-title">Aprendizaje Más Servicio</h5>
                      <p class="card-text">Un servicio a la comunidad</p>
                      <a href="{{ url('mostrar') }}" class="btn btn-primary">Proyectos</a>
                    </div>
                    <div class="card-footer text-muted">
                      2018 
                    </div>
              </div>
              <div class="carousel-item rounded">
                <img class="d-block w-100" src="{{ asset('images/c2.jpg') }}" alt="Second slide">
                    <div class="card-body">
                      <h5 class="card-title">Aprendizaje Más Servicio</h5>
                      <p class="card-text">Un servicio a la comunidad</p>
                      <a href="{{ url('mostrar') }}" class="btn btn-primary">Proyectos</a>
                    </div>
                    <div class="card-footer text-muted">
                      2018
                    </div>                          
              </div>
              <div class="carousel-item rounded">
                <img class="d-block w-100" src="{{ asset('images/c3.jpg') }}" alt="Third slide">
                    <div class="card-body">
                      <h5 class="card-title">Aprendizaje Más Servicio</h5>
                      <p class="card-text">Un servicio a la comunidad</p>
                      <a href="{{ url('mostrar') }}" class="btn btn-primary">Proyectos</a>
                    </div>
                    <div class="card-footer text-muted">
                      2018
                    </div>                          
              </div>
            </div>
          </div>
      </div>
  @endsection
</body>
