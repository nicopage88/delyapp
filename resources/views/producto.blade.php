@extends('layouts.app')
@section('content')
<div class="container" id="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow" style="margin-top: 70px;">
                <div class="card-body">
                    <div class="row mt-5">
                        @if($producto->imagen)
                        <img class="img ml-5 mr-5" src="{{ asset($producto->imagen) }}" alt="Producto" width="350" height="250">
                        @else
                        <img class="img ml-5 mr-5" src="{{ asset('images/sinImagen.jpeg') }}" alt="Producto" width="350" height="250">
                        @endif
                        <div class="ml-5 mr-5">
                            <h3>{{ $producto->nombre }}</h3>
                            <h5 class="mt-5">{{ $producto->descripcion }}</h5>
                            <h2 class="mt-5">Precio ${{ number_format($producto->precio, 0, ",", ".") }}</h2>
                            <form class="mt-5" method="post" id="form" action="{{ route('carrito.agregar', $producto) }}">
                                @csrf
                                <div class="form-inline">
                                    <label class="h5 mr-5">Cantidad</label>
                                    <input class="form-control text-center" min="1" max="20" type="number" name="cantidad" value="1">
                                </div>
                                <div class="form-group row mb-5 mt-5">
                                    <div>
                                        <button type="submit" class="btn btn-green mr-3">
                                            Agregar al carrito
                                        </button>
                                    </div>
                                    <div>
                                        <a class="btn btn-primary text-white" href="{{ route('local.index', $producto->local_id) }}">
                                            Volver
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection