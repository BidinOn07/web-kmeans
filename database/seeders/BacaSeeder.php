<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class BacaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $bookIds = DB::table('bukus')->pluck('id')->toArray();

        foreach (range(1, 300) as $index) {
            $tanggalBaca = $faker->dateTimeBetween('2024-03-01', '2024-07-31');

            DB::table('bacas')->insert([
                'buku_id' => $faker->randomElement($bookIds),
                'dibaca' => $faker->numberBetween(1, 100),
                'tanggal_baca' => $tanggalBaca->format('Y-m-d'),
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }
    }
}
