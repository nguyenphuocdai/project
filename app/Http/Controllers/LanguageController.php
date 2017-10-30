<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Input;
use App;
use Lang;
use Redirect;

class LanguageController extends Controller
{
    public function chooser(Request $request){
    	Session::put('locale', Input::get('locale'));

    	return Redirect::back();
    }
}
