@extends('layout')

@section('content')
<h2>Hasil:</h2>
    <b>Kebutuhan AMB: {{ $amb }}</b>
    <br>
    <b>Kebutuhan Energi/hari: {{ $energi }} kkal</b>
    <br>
    <hr>

    <!-- Daftar Paket Menu yang Sesuai -->
    <h3 align="center">DAFTAR PAKET MENU YANG SESUAI</h3>
    <table border="1" class="table table-dark table-striped-columns">
        <tr class="text-center">
            <td>Paket Menu</td>
            <td>Sarapan</td>
            <td>Snack Pagi</td>
            <td>Makan Siang</td>
            <td>Snack Sore</td>
            <td>Makan Malam</td>
            <td>Total Kalori (kkal)</td>
        </tr>
        @foreach ($data as $m)
            <tr>
                <td align="center">
                    <h3 class="p-2">
                        <a href="{{ route('menu', ['paket_menu' => $m->paket_menu]) }}">
                            {{ $m->paket_menu }}
                        </a>
                    </h3>
                </td>
                <td class="ps-5">{!! $m->sarapan !!}</td>
                <td class="ps-5">{!! $m->snack_pagi !!}</td>
                <td class="ps-5">{!! $m->makan_siang !!}</td>
                <td class="ps-5">{!! $m->snack_sore !!}</td>
                <td class="ps-5">{!! $m->makan_malam !!}</td>
                <td class="ps-5">{!! $m->jumlah_kalori !!}</td>
            </tr>
        @endforeach
    </table>
@endsection