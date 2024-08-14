<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class BukuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        // Ambil ID kategori dari tabel kategoris
        $kategoriIds = DB::table('kategoris')->pluck('id');

        // Daftar judul buku yang akan digunakan
        $judulBuku = [
            'Laskar Pelangi', 'Habibie & Ainun', 'Ayat-Ayat Cinta',
            'Ronggeng Dukuh Paruk', 'Bumi Manusia', 'Pulang',
            'Perahu Kertas', 'Bukan Cinta Biasa', 'Dilan 1990',
            'Dilan 1991', 'Kambing Jantan', 'Cinta Brontosaurus',
            'Supernova', 'Nanti Kita Cerita tentang Hari Ini',
            'Hujan Bulan Juni', 'Sirkus Pohon', 'Kisah Para Pelaut',
            'Komik Anak Sholeh', 'Sang Pemimpi', 'Edensor',
            'Pulang Kampung', 'Mimpi Sejuta Dolar',
            'Negeri Lima Menara', 'Bumi Manusia',
            'Jangan Lupakan Dia', 'Kisah-Kisah dalam Al-Qur\'an',
            'Mencintaimu Selamanya', 'Matahari Terbenam di Jakarta',
            'Tanah Surga', 'Cinta di Langit Biru', 'Di Bawah Lindungan Ka\'bah',
            'Aku dan Kambing Hitam', 'Kembalinya Sang Pencuri',
            'Kehidupan Sejati', 'Cerita Rakyat Nusantara',
            'Misteri Makanan Kuno', 'Kehidupan Sejati',
            'Sekolah di Neraka', 'Garis Waktu', 'Bubur Ayam',
            'Memoar Kegagalan', 'Kisah Cinta Dalam Hujan',
            'Hati yang Terluka', 'Kehidupan Sejati',
            'Lupakan Dia', 'Langit Tak Bersahabat',
            'Sang Pelukis', 'Cinta Tak Berbalas',
            'Gambaran Masa Depan', 'Penyelamat',
            'Keberuntungan', 'Berkas Rahasia',
            'Langkah Awal', 'Penyakit Hati',
            'Misteri di Tengah Hutan', 'Asal Usul Naga',
            'Kehidupan di Tengah Kota', 'Satu Cinta',
            'Kisah Si Miskin', 'Kehidupan yang Hilang',
            'Di Tengah Ketidakpastian', 'Pulang ke Desa',
            'Sekolah Jenius', 'Komik Remaja',
            'Kisah di Tengah Laut', 'Di Ujung Jalan',
            'Cinta di Tengah Kota', 'Satu Tujuan',
            'Akhir yang Indah', 'Perjuangan Hidup',
            'Harapan Terakhir', 'Satu Langkah Lagi',
            'Melawan Takdir', 'Cinta dan Kebencian',
            'Hidup dalam Kesendirian', 'Kehidupan yang Tak Terlupakan',
            'Pulang ke Rumah', 'Hidup di Desa',
            'Jangan Lupakan', 'Langkah Menuju Cita',
            'Cinta di Ujung Dunia', 'Cerita di Tengah Malam',
            'Hidup yang Baru', 'Langit Terbuka',
            'Hidup yang Berbeda', 'Menyelam di Laut Dalam',
            'Pulang ke Kampung', 'Menggapai Bintang',
            'Hidup di Pulau', 'Cinta dalam Kesederhanaan',
            'Harapan di Tengah Kegelapan', 'Satu Hari di Jakarta',
            'Kehidupan Baru', 'Cinta dan Kesetiaan',
            'Menyusuri Jalan Setapak', 'Jangan Menyerah',
            'Cinta di Tengah Kesulitan', 'Menemukan Kembali',
            'Kehidupan di Tengah Kesibukan', 'Hidup di Pedesaan',
            'Mencintai dan Dicintai', 'Langkah Awal Menuju Kesuksesan',
            'Cinta dan Keluarga', 'Mengukir Masa Depan',
            'Hidup dalam Keberagaman', 'Pulang ke Akar',
            'Cerita di Tengah Desa', 'Mencapai Impian',
            'Cinta di Setiap Langkah', 'Harapan di Tengah Kesulitan',
            'Hidup di Tengah Keluarga', 'Menyambut Masa Depan',
            'Kehidupan di Tengah Tantangan', 'Cinta di Tengah Perjuangan',
            'Melangkah Menuju Kesuksesan', 'Harapan di Setiap Langkah',
            'Mencapai Tujuan', 'Hidup di Tengah Perubahan',
            'Menyusuri Jalan Hidup', 'Cinta dan Harapan',
            'Menggapai Mimpi', 'Kehidupan di Tengah Keberanian',
            'Satu Langkah Menuju Cita', 'Cerita di Tengah Perjalanan',
            'Hidup dalam Ketenangan', 'Mencapai Kebahagiaan',
            'Langkah Awal Menuju Impian', 'Cinta di Tengah Kebahagiaan',
            'Harapan di Tengah Hidup', 'Mengukir Kesuksesan',
            'Menyambut Hari Depan', 'Kehidupan di Tengah Harapan',
            'Hidup di Tengah Mimpi', 'Cinta di Setiap Kesempatan',
            'Langkah Menuju Keberhasilan', 'Hidup di Tengah Kebahagiaan'
        ];

        foreach (range(1, 100) as $index) {
            DB::table('bukus')->insert([
                'judul_buku' => $faker->randomElement($judulBuku),
                'kode_buku' => $faker->unique()->numerify('###-#'),
                'penulis_buku' => $faker->name,
                'penerbit' => $faker->company,
                'tahun_terbit' => $faker->year,
                'deskripsi' => $faker->paragraph,
                'total_buku' => $faker->numberBetween(1, 5),
                'stok' => $faker->numberBetween(0, 3),
                'gambar' => $faker->imageUrl(640, 480, 'books', true),
                'kategori_id' => $faker->randomElement($kategoriIds), // Pilih ID kategori acak
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }
    }
}
