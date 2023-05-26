@extends('layout')

@section('content')
    <h1 align="center">Sistem Pendukung Keputusan Pemilihan Menu Makan untuk Balita</h1>
    <hr>
    <br>
    <form id="form-energi" method="GET" action="{{ route('Form') }}">
        @csrf
        <table border="1px" class="m-auto table" style="width: 500px">
            <tr>
                <td width="150px"><p>Jenis Kelamin </td>
                <td>
                    <input type="radio" id="lk" name="jk" value="Laki-laki">
                    <label for="Laki-laki">Laki-laki</label>
                    <input type="radio" id="pr" name="jk" value="Perempuan">
                    <label for="Perempuan">Perempuan</label>
                </td>
            </tr>
            <td>Usia </td>
            <td>
                <select name="usia" id="usia">
                    <option value="" selected disabled hidden>--Pilih usia--</option>
                    <option value="1">1 Tahun</option>
                    <option value="2">2 Tahun</option>
                    <option value="3">3 Tahun</option>
                    <option value="4">4 Tahun</option>
                    <option value="5">5 Tahun</option>
                </select>
            </td>
            </tr>
            <td>Berat Badan </td>
            <td>
                <input type="number" id="bb" name="bb" min="5" max="20">
            </td>
            </tr>
            </tr>
            <td><input type="submit" value="Submit"></td>
            <td><input type="reset"></td>
            </tr>

        </table>
    </form>
@endsection
