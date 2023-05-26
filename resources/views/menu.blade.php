@extends('layout')

@section('content')

{{-- @if(isset($data)) --}}
<div class="container">
    <h1 align="center" class="pt-3 pb-2">Rekomendasi Takaran Jumlah Makanan Paket Menu {{ $paket_menu }}</h1>
    <hr>
    <br>
    <b>Menu Sarapan Pagi: </b>
    <table class="table table-bordered">
        <tr class="bg-success">
            <th>Menu</th>
            <th>Takaran (gr)</th>
            <th>Jumlah Kalori (kkal)</th>
        </tr>
        @foreach($data['tb_makan_pagi'] as $menu)
            <tr>
                <td>{{ $menu->menu }}</td>
                <td>{{ $menu->takaran }}</td>
                <td>{{ $menu->jumlah_kalori }}</td>
            </tr>
        @endforeach
    </table>

    <br>
    <b>Menu Camilan Pagi: </b>
    <br>
    <table class="table table-bordered">
        <tr class="bg-primary">
            <th>Menu</th>
            <th>Takaran (gr)</th>
            <th>Jumlah Kalori (kkal)</th>
        </tr>
        @foreach($data['tb_camilan_pagi'] as $menu)
            <tr>
                <td>{{ $menu->menu }}</td>
                <td>{{ $menu->takaran }}</td>
                <td>{{ $menu->jumlah_kalori }}</td>
            </tr>
        @endforeach
    </table>

    <br>
    <b>Menu Makan Siang: </b>
    <br>
    <table class="table table-bordered">
        <tr class="bg-warning">
            <th>Menu</th>
            <th>Takaran (gr)</th>
            <th>Jumlah Kalori (kkal)</th>
        </tr>
        @foreach($data['tb_makan_siang'] as $menu)
            <tr>
                <td>{{ $menu->menu }}</td>
                <td>{{ $menu->takaran }}</td>
                <td>{{ $menu->jumlah_kalori }}</td>
            </tr>
        @endforeach
    </table>
{{-- @endif --}}
</div>
@endsection