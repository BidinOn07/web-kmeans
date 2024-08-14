<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKategorisTable extends Migration
{
    public function up()
    {
        Schema::create('kategoris', function (Blueprint $table) {
            $table->id();
            $table->string('nama_kategori');
            $table->string('kode_kategori')->unique();
            $table->timestamps();
        });

        // Menambahkan kolom kategori_id ke dalam tabel bukus
        Schema::table('bukus', function (Blueprint $table) {
            $table->unsignedBigInteger('kategori_id')->nullable()->after('id');

            $table->foreign('kategori_id')->references('id')->on('kategoris')
                ->onDelete('set null');
        });
    }

    public function down()
    {
        Schema::table('bukus', function (Blueprint $table) {
            $table->dropForeign(['kategori_id']);
            $table->dropColumn('kategori_id');
        });

        Schema::dropIfExists('kategoris');
    }
}
