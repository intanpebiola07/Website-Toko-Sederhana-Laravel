<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register(){
        return view('register');
    }
    public function register_process(Request $r){
        $r->validate([
            'name'=>'required|min:3|max:30',
            'email'=>'required|email|unique:users,email',
            'password'=>'required|confirmed|min:6',
        ]);
        
        $insert = new User();
        $insert->name=$r->name;
        $insert->email=$r->email;
        $insert->password=hash::make($r->password);
        $insert->save();

        $r->session()->flash('msg','Registration Successful.');
        return redirect('register');
        
    }
    public function login(){
        return view('login');
    }
    public function login_process(Request $r){
        $r->validate([
            'email'=>'required|email|min:6|max:50|exists:users,email',
            'password'=>'required|min:6|max:20',
        ]);


        $user=User::where('email',$r->email)->first();

        if (Hash::check($r->password,$user->password)) {
           Auth::attempt(['email' => $r->email, 'password' => $r->password]);
           return redirect('/');
        }else{
            return redirect()->back()->withErrors(['password'=>'Password is invalid'])->withInput();
        }

    }
    public function logout(){
        Auth::logout();
        return redirect('/');
    }
    public function profile(){
        return view('profile');
    }
    public function profile_process(Request $r){
        //isi sama seperti function register proses, perhatikan perubahannya
        $iduser = Auth::user()->id; //perubahan
        $r->validate([
            "name" => "required|min:3|max:30",
            "email" => "required|min:5|max:50|email|unique:users,email,$iduser", //perubahan
            "password" => "nullable|confirmed|min:6", //perubahan
            "old_password" => "nullable|min:6", //perubahan
        ]);

        $new = User::findOrFail($iduser);
        $new->name = $r->name;
        $new->email = $r->email;
        //perubahan
        if($r->password){
            if(Hash::check($r->old_password, $new->password)){
                $new->password = Hash::make($r->password);
            }else{
                //perubahan
                return redirect('profile')
                ->withErrors(['password'=>'Old Password Is Wrong']);
            }
        }
        $new->save();
        $r->session()->flash('message','Process Successful.'); //perubahan
        return redirect('profile'); //perubahan
    }
}