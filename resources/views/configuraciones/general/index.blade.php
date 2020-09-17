@extends('layouts.admin')
@section('contenido')
<div class="main-content">

      
    @include('navbar')

    

    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-12 col-lg-10 col-xl-8">

      

          <!-- Header -->
          <div class="header mt-md-5">
            <div class="header-body">
              <div class="row align-items-center">
                <div class="col">

                  <!-- Pretitle -->
                  <h6 class="header-pretitle">
                    Configuración
                  </h6>


                </div>
              </div> <!-- / .row -->
            </div>
          </div>

          <!-- Form -->
<h1>Configuraciones de las vistas</h1>
        </div>
      </div> <!-- / .row -->
    </div>

  </div>
  @push('scripts')
      <script>

          $('.dz-button').text('Subir logo');

          $('.color-picker').spectrum({
            type: "text"
          });

          $('#txt_facebook').keyup(function(){
            let data = $('#txt_facebook').val();
      
            $('#cont_facebook').html(' ');
            $('#cont_facebook').html(data.replace(/['"]+/g, ''));
          });

          function readURL(input) {
            if (input.files && input.files[0]) {
              var reader = new FileReader();
              
              reader.onload = function(e) {
                $('#blah').attr('src', e.target.result);
              }
              
              reader.readAsDataURL(input.files[0]); // convert to base64 string
            }
          }

          $("#imgInp").change(function() {
            readURL(this);
          });

          $(document).ready(function() {
              $('input.files').fileuploader({
                  // Options will go here
              });
          });
         
      </script>
  @endpush
@endsection