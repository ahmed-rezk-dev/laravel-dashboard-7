<?php

use Illuminate\Database\Seeder;

class MoneyAccountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        factory('App\MoneyAccount', 10)->create();
    }
}
