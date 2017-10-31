<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Emails;
class EmailController extends Controller
{
    public function index()
    {
        return Emails::all();
    }

    public function show(Emails $emails)
    {
        return $emails;
    }

    public function store(Request $request)
    {
        $emails = Emails::create($request->all());
        
        return response()->json($emails, 201);
    }

    public function update(Request $request, Emails $emails)
    {
        $emails->update($request->all());

        return response()->json($emails, 200);
    }

    public function delete(Emails $emails)
    {
        $emails->delete();

        return response()->json(null, 204);
    }
}
