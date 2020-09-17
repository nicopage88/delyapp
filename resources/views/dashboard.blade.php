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
                    Panel de control
                  </h6>

                  <!-- Title -->
                  <h1 class="header-title">
                   Dashboard
                  </h1>
                 
                </div>
               
              </div> <!-- / .row -->
            </div>
          </div>

<h1>Estas logeado como administrador</h1>

    
        </div>
      </div> <!-- / .row -->
    </div>

  </div>
  @push('scripts')
      <script>
        new Chart('chart1', {
          type: 'line',
          options: {
            scales: {
              yAxes: [{
                ticks: {
                  callback: function(value) {
                    return '$' + value;
                  }
                }
              }]
            }
          },
          data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [{
              label: 'Earned',
              data: ["<?php echo $pedidos_1->total_pagado?>","<?php echo $pedidos_2->total_pagado?>","<?php echo $pedidos_3->total_pagado?>","<?php echo $pedidos_4->total_pagado?>","<?php echo $pedidos_5->total_pagado?>","<?php echo $pedidos_6->total_pagado?>","<?php echo $pedidos_7->total_pagado?>","<?php echo $pedidos_8->total_pagado?>","<?php echo $pedidos_9->total_pagado?>","<?php echo $pedidos_10->total_pagado?>","<?php echo $pedidos_11->total_pagado?>","<?php echo $pedidos_12->total_pagado?>"]
            }]
          }
        });
      </script>
  @endpush
@endsection