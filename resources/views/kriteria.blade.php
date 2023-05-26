@extends('layout')

@section('content')
<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Kriteria</th>
            <th>Bobot</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($pembobotanKriteria as $kr)
            <tr>
                <td>{{ $kr->no }}</td>
                <td>{{ $kr->kriteria }}</td>
                <td>{{ $kr->bobot }}</td>
            </tr>
        @endforeach
    </tbody>
</table>

@endsection