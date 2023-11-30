<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product; 
use App\Models\shoppingintan;

class ShoppingController extends Controller
{
    public function index(){
        $data = Product::get();
        return view ('shopping', compact ('data'));
    }
    public function process( Request $r){
        $r->validate([
            'name' => 'required|min:3|max:50',
            'whatsapp'=>'required|min:11|max:13',
            'address' => 'required|min:5|max:200',
            'qty' => 'required',
            'product' => 'required',
            'note' => 'nullable|min:5',
            'qty' => 'required|numeric|between: 1,10'
        ]);

        $nama=$r->name;
        $wa=$r->whatsapp;
        $alamat =$r->address;
        $qty= $r->qty;
        $catatan=$r->note;
        $id=$r->product;
        $harga_barang= Product::findOrFail($id);
        $total_harga = $harga_barang['price']*$qty;

        $insert = new shoppingintan();
        $insert ->buyer_name=$nama;
        $insert -> buyer_whatsapp=$wa;
        $insert -> buyer_address=$alamat;
        $insert -> product_id = $id;
        $insert -> qty= $qty;
        $insert -> total = $total_harga;
        $insert -> note = $catatan;
        $insert -> save();
        $r->session()->flash('msg','Shopping success, Our admin will contact you soon');
        return redirect('shopping');
    }
}
