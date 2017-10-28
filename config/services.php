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
    'client_id' => '965885426898514',
    'client_secret' =>'02c30425eff17f1ed23dbce5a7eb537b',
    'redirect' => 'http://lrv.dev/login/facebook/callback',
    ],
    'google' => [
    'client_id' => '578960884547-1e7poqoffde95l2ovrmr4684197k6qtl.apps.googleusercontent.com',
    'client_secret' => 'zpm1pLsnLzl7zHPCtLq3A_Ip',
    'redirect' => 'http://lrv.dev/login/google/callback',
    ],
    'github' => [
    'client_id' => 'd2a19dc5b074b88ba005',
    'client_secret' => 'c61e67fa821cb92328d9cd5005ef4cc530070efc',
    'redirect' => 'http://lrv.dev/login/github/callback',
    ],
    // 'stripe' => [
    //     'secret' => 'sk_test_NHwuPHxgDl3SoiqvnmjDVTY1',
    // ],

];
