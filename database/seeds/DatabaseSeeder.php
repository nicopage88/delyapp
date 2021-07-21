<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RoleTableSeeder::class);
        $this->call(MermasTableSeeder::class);
        $this->call(LocalTableSeeder::class);
        $this->call(Role_userTableSeeder::class);
        $this->call(UserTableSeeder::class);
       
    }
}
