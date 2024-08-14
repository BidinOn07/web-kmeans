<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Kategori;
use App\Models\Buku;

class KategoriSeeder extends Seeder
{
    public function run()
    {
        // Daftar kategori
        $kategoris = [
            ['nama_kategori' => 'Ilmu komputer, informasi & pekerjaan umum', 'kode_kategori' => '000-099'],
            ['nama_kategori' => 'Filsafat dan psikologi', 'kode_kategori' => '100-199'],
            ['nama_kategori' => 'Agama', 'kode_kategori' => '200-299'],
            ['nama_kategori' => 'Ilmu Sosial', 'kode_kategori' => '300-399'],
            ['nama_kategori' => 'Bahasa', 'kode_kategori' => '400-499'],
            ['nama_kategori' => 'Ilmu alam dan matematika', 'kode_kategori' => '500-599'],
            ['nama_kategori' => 'Teknologi', 'kode_kategori' => '600-699'],
            ['nama_kategori' => 'Karya Seni', 'kode_kategori' => '700-799'],
            ['nama_kategori' => 'Sastra dan retorika', 'kode_kategori' => '800-899'],
            ['nama_kategori' => 'Sejarah, Biografi, dan Geografi', 'kode_kategori' => '900-999'],
        ];

        foreach ($kategoris as $kategoriData) {
            // Membuat atau memperbarui kategori berdasarkan kode_kategori
            $kategori = Kategori::updateOrCreate(
                ['kode_kategori' => $kategoriData['kode_kategori']],
                $kategoriData
            );

            // Buat buku-buku dummy yang terhubung ke kategori ini
            Buku::factory(10)->create([
                'kategori_id' => $kategori->id,
            ]);
        }
    }
}
