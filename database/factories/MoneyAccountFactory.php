<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */
use App\MoneyAccount;
use Faker\Generator as Faker;

$factory->define(MoneyAccount::class, function (Faker $faker) {
    return [
        'user_id' => 2,
        'ammount' => $faker->randomNumber(4),
        'status' => $faker->boolean,
        'bank_name' => $faker->bankAccountNumber,
    ];
});
