<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class wpController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("FormKeputusan");
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($paket_menu)
    {
        $data['tb_makan_pagi'] = DB::table('tb_makan_pagi')->where('paket_menu', $paket_menu)->get();
        $data['tb_camilan_pagi'] = DB::table('tb_camilan_pagi')->where('paket_menu', $paket_menu)->get();
        $data['tb_makan_siang'] = DB::table('tb_makan_siang')->where('paket_menu', $paket_menu)->get();

        return view('menu', compact('data', 'paket_menu'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function weightProduct(Request $request)
    {
        $jk = $request->input('jk');
        $usia = $request->input('usia');
        $bb = $request->input('bb');

        // Lakukan perhitungan berdasarkan nilai yang diterima
        // ...

        if ($usia <= 3 && $jk === 'Laki-laki') {
            $amb = 60.9 * $bb - 54;
            $energi = $amb * 1.8;
        } else if ($usia > 3 && $jk === 'Laki-laki') {
            $amb = 22.7 * $bb + 495;
            $energi = $amb * 1.9;
        }
        if ($usia <= 3 && $jk == 'Perempuan') {
            $amb = 61 * $bb - 51;
            $energi = $amb * 1.8;
        } else if ($usia > 3 && $jk == 'Perempuan') {
            $amb = 22.5 * $bb + 499;
            $energi = $amb * 1.7;
        }

        $data = DB::table('tb_menu_makanan')
            ->join('tb_kalori', 'tb_menu_makanan.paket_menu', '=', 'tb_kalori.paket_menu')
            ->select('tb_menu_makanan.*', 'tb_kalori.*')
            ->where('jumlah_kalori', '>=', $energi - 100)
            ->where('jumlah_kalori', '<=', $energi + 200)
            ->get();

        return view('hasil', compact('amb', 'energi', 'data'));
    }
}
