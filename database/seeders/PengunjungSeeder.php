<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\pengunjung;

use Faker\Factory as Faker;


class PengunjungSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach (range(1, 300) as $index){
            DB::table('pengunjungs')->insert([
                'nama' => $faker->name,
                'alamat' => $faker->address,
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }
    }
}
