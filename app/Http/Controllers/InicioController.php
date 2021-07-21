<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Local;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Illuminate\Support\Facades\Mail;
use App\Mail\RegistrarLocal;
use App\Mail\EnvioDeContacto;

class InicioController extends Controller
{
    protected function index(Request $request)
    {
        $locales = Local::where('estado', 'activado')->get();

        if ($user = $request->user()) {
            if ($user->latitud) {
                foreach ($locales as $local) {
                    $distancia = $this->calcularDistancia($local->latitud, $local->longitud, $user->latitud, $user->longitud);
                    $local->distancia = $distancia;
                }
                $locales = $locales->sortBy('distancia');
            }
        }

        $locales = $this->paginar($locales, $request);

        return view('inicio', compact('locales'));
    }

    protected function buscador(Request $request)
    {
        if($request->texto != ""){
            $locales = Local::where('local.estado', 'activado')
            ->join('productos', 'local.id', 'productos.local_id')
            ->select('local.*')
            ->where('local.estado', 'activado')
            ->where('local.nombre', 'like', '%'.$request->texto.'%')
            ->orWhere('local.direccion', 'like', '%'.$request->texto.'%')
            ->orWhere('productos.categoria', 'like', '%'.$request->texto.'%')
            ->get()
            ->unique(); 
        }else{
            $locales = Local::where('estado', 'activado')->get();
        }
        
        if ($user = $request->user()) {
            if ($user->latitud) {
                foreach ($locales as $local) {
                    $distancia = $this->calcularDistancia($local->latitud, $local->longitud, $user->latitud, $user->longitud);
                    $local->distancia = $distancia;
                }
                $locales = $locales->sortBy('distancia');
            }
        }

        $locales = $this->paginar($locales, $request);


        return view('buscadorLocales', compact('locales'));
    }

    protected function configuracion(Request $request)
    {

        $request->user()->authorizeRoles(['user']);

        $user = $request->user();

        return view('inicioConfiguracion', compact('user'));
    }

    protected function registrarLocal(){
        return view('registrarLocal');
    }

    protected function enviarRegistroLocal(Request $request){
        
        Mail::to('contacto@delyapp.cl')->send(new RegistrarLocal($request));

        return redirect()->route('inicio')->with('mensaje', 'Se ha enviado la información correctamente, nos comunicaremos contigo a la brevedad.');
    }

    protected function contactateConNosotros(){
        return view('contactateConNosotros');
    }

    protected function enviarContacto(Request $request){

        Mail::to('contacto@delyapp.cl')->send(new EnvioDeContacto($request));

        return redirect()->route('inicio')->with('mensaje', 'Se ha enviado la información correctamente, nos comunicaremos contigo a la brevedad.');
    }

    protected function guardarConfiguracion(Request $request)
    {
        $user = $request->user();

        $user->name = $request->nombre;
        $user->telefono = $request->telefono;
        $user->direccion = $request->direccion;
        $user->latitud = $request->latitud;
        $user->longitud = $request->longitud;

        $user->save();

        return redirect()->route('inicio')->with('mensaje', 'La configuración ha sido cambiada correctamente.');
    }

    private function calcularDistancia($local_latitud, $local_longitud, $user_latitud, $user_longitud)
    {
        $grados = rad2deg(acos((sin(deg2rad($local_latitud)) * sin(deg2rad($user_latitud))) + (cos(deg2rad($local_latitud)) * cos(deg2rad($user_latitud)) * cos(deg2rad($local_longitud - $user_longitud)))));

        $distancia = $grados * 111.13384;

        return round($distancia, 2);
    }

    private function paginar($locales, $request){

        $total = count($locales);
        $per_page = 6;
        $current_page = $request->input("page") ?? 1;

        $starting_point = ($current_page * $per_page) - $per_page;

        $locales = $locales->toArray();
        $locales = array_slice($locales, $starting_point, $per_page, false);

        $locales = new Paginator($locales, $total, $per_page, $current_page, [
            'path' => $request->url(),
            'pageName' => "page",
        ]);

        return $locales;
    }
}
