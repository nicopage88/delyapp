@extends('layouts.user')
@section('user')
<main class="page-content">
    <!-- Swiper variant 3-->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
    <img src="http://www.sangregoriodelasalle.cl/delyapp/slider.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
    <img src="http://www.sangregoriodelasalle.cl/delyapp/slider.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
    <img src="http://www.sangregoriodelasalle.cl/delyapp/slider.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

  <section class="section-50 section-sm-100" style="background: {{$config->color_fondo_menu}} !important"> 
      <div class="container-wide">
        <div class="row justify-content-xs-center">

           @foreach ($seccion_uno as $item)
            @if ($item->estado == '1')
                <div class="col-sm-6 col-md-4 view-animate zoomInSmall delay-04 active">
                    <a class="thumbnail-variant-3" href="menu-single.html">
                    <img class="img-responsive" src="{{asset('admin/'.$item->portada)}}" alt="" width="566" height="401">
                    <div class="caption text-center">
                        <h3 class="text-italic">{{$item->titulo}}</h3>
                        <p class="big">{{$item->subtitulo}}</p>
                    </div></a>
                </div>
            @endif
           @endforeach
          
        </div>
      </div>
    </section>
    <section class="section-50 section-sm-top-80 section-sm-bottom-100 bg-gray-lighter">
        <h3>Nuestro Menú</h3>
        <div class="responsive-tabs responsive-tabs-button responsive-tabs-horizontal responsive-tabs-carousel offset-top-40">
          <ul class="resp-tabs-list">
              @foreach ($menu_comida as $item)
                <li>{{$item->titulo}}</li>
              @endforeach
            
            
          </ul>
          <div class="resp-tabs-container text-left">

           @foreach ($menu_comida as $categoria)
           <div>
                <!-- Slick Carousel-->
                <div class="slick-slider slick-tab-centered" data-arrows="true" data-loop="true" data-dots="false" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5" data-center-mode="true" data-center-padding="10">
                    @foreach ($alimento as $item)   
                        @if ($categoria->titulo == $item->categoria)
                            <div class="item">
                                <div class="thumbnail-menu-modern">
                                <figure><img class="img-responsive" src="{{asset('admin/'.$item->portada)}}" alt="" width="310" height="260"/>
                                </figure>
                                <div class="caption">
                                    <h5><a class="link link-default" href="menu-single.html">{{$item->titulo}}</a></h5>
                                    <p class="text-italic">{{$item->descripcion}}</p>
                                    <p class="price">{{$item->precio}}</p>
                                    @if (auth::check())
                                        <a class="btn btn-shape-circle btn-burnt-sienna offset-top-15" href="{{route('add_cart',$item->id)}}" style="padding: 5px 20px !important;">
                                          <span class="thin-icon-cart" style="font-size: 23px !important;"></span> Al carrito
                                    </a>
                                    @endif
                                </div>
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
            </div>
            @endforeach

          </div>
        </div>
      </section>
    <!--banner-->

    <!--services-->
    <section class="section-50 section-sm-130" style="background: {{$config->color_fondo_menu}} !important">
      <div class="container">
        <div class="row justify-content-xs-center">
          @foreach ($seccion_tres as $item)
          @if ($item->estado == '1')
          <div class="col-sm-6 col-md-3 view-animate fadeInUpBigger delay-04">
            <!-- Box icon-->
            <article class="box-icon box-icon-variant-1">
              <div class="icon-wrap">
                <span class="icon icon-lg text-base {{$item->icono}} icon-xl" style="color: {{$config->color_texto_menu}} !important"></span>
                </div>
              <div class="box-icon-header">
                <h5 style="color: {{$config->color_texto_menu}} !important">{{$item->titulo}}</h5>
              </div>
              <hr class="divider-xs bg-accent">
              <p style="color: {{$config->color_texto_menu}} !important">{{$item->descripcion}}</p>
            </article>
          </div>
          @endif
          @endforeach
         
        </div>
      </div>
    </section>
    <!--section gallery-->
    <section>
      <div class="row no-gutters" data-lightgallery="group">
        @foreach ($galeria as $item)
        <div class="col-xs-6 col-md-3">
            <a class="thumbnail-gallery" data-lightgallery="item" href="{{asset('admin/'.$item->foto)}}">
                <img src="{{asset('admin/'.$item->foto)}}" alt="" width="480" height="394"></a>
            </div>
        @endforeach
        
      </div>
    </section>
    <section>
      <!--Please, add the data attribute data-key="YOUR_API_KEY" in order to insert your own API key for the Google map.-->
      <!--Please note that YOUR_API_KEY should replaced with your key.-->
      <!--Example: <div class="google-map-container" data-key="YOUR_API_KEY">-->
      {!!$config->iframe!!}
    </section>
  </main>
@endsection