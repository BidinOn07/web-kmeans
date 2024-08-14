<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use App\Models\Buku;

class PeminjamanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $bookIds = Buku::pluck('id')->toArray();

        foreach (range(1, 300) as $index) {
            $tanggalPinjam = $faker->dateTimeBetween('2024-03-01', '2024-07-31');
            $tanggalWajibKembali = (clone $tanggalPinjam)->modify('+1 week');
            $tanggalPengembalian = (clone $tanggalPinjam)->modify('+'.rand(1, 14).' days');

            DB::table('peminjamen')->insert([
                'nama_peminjam' => $faker->name,
                'alamat' => $faker->address,
                'no_hp' => $faker->phoneNumber,
                'tanggal_pinjam' => $tanggalPinjam->format('Y-m-d'),
                'tanggal_wajib_kembali' => $tanggalWajibKembali->format('Y-m-d'),
                'tanggal_pengembalian' => $tanggalPengembalian->format('Y-m-d'),
                'buku_id' => $faker->randomElement($bookIds),
                'dipinjam' => $faker->numberBetween(1, 100),
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }
    }
}
