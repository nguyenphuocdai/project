<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],
    'facebook' => [
    'client_id' => '1339588349501822',
    'client_secret' => 'd088215f3bc43755060a907720517da3',
    'redirect' => 'http://localhost:8000/auth/facebook/callback',
    ],
    'google' => [
    'client_id' => '578960884547-1e7poqoffde95l2ovrmr4684197k6qtl.apps.googleusercontent.com',
    'client_secret' => 'zpm1pLsnLzl7zHPCtLq3A_Ip',
    'redirect' => 'http://lrv.dev/login/google/callback',
],

];
