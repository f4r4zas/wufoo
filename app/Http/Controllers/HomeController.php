<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Ixudra\Curl\Facades\Curl;

use App\Http\Requests;
use Mail;
use App\User;

class HomeController extends Controller
{
    public function index(Request $request){
    	
    //Handshake Key Verification
    if($request->input('HandshakeKey') == ">T=NT2}bWuD3f{_$"){

    	//Create New User
        $user = new User();

        $user->email = $request->input('Field226');

        $user->firstname = $request->input('Field227');

        $user->lastname = $request->input('Field228');

        $user->save();
    	//Email User
    	$user = "";

        $mail = Mail::send('wufo_email', ['user' => $user], function ($m) use ($user, $request) {
            $m->from('sheikhfarhan98@gmail.com', 'Wufoo are Awesome!');

            $m->to($request->input('Field226'), $request->input('Field227'))->subject('Wufoo Email!');
        });
    
        if($mail){
            return '<h1>User Succesfully Mailed! </h1>';
        }else{
            return '<h1>Operation Unsuccesful! </h1>';
        }

    }else{
            return '<h1>Handshake not Matched! </h1>';
    }

       //dd($mail);
  }
}
