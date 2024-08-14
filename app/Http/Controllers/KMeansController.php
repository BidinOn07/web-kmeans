<?php

namespace App\Http\Controllers;

use App\Models\Peminjaman;
use App\Models\Baca;
use App\Models\Buku;
use Illuminate\Http\Request;

class KMeansController extends Controller
{
    public function index()
    {
        // Menampilkan form input bulan dan tahun
        return view('kmeans.index');
    }

    public function process(Request $request)
    {
        // Validasi input bulan dan tahun
        $request->validate([
            'bulan' => 'required|integer|between:3,7',
            'tahun' => 'required|integer|min:2024'
        ]);

        $bulan = $request->input('bulan');
        $tahun = $request->input('tahun');

        // Mengambil data dari tabel peminjaman, baca, dan buku
        $dataPinjam = Peminjaman::whereMonth('tanggal_pinjam', $bulan)
            ->whereYear('tanggal_pinjam', $tahun)
            ->with('buku')
            ->get(['tanggal_pinjam', 'buku_id']);

        $dataBaca = Baca::whereMonth('tanggal_baca', $bulan)
            ->whereYear('tanggal_baca', $tahun)
            ->with('buku')
            ->get(['tanggal_baca', 'buku_id']);

        $dataBuku = Buku::whereIn('id', $dataPinjam->pluck('buku_id')
            ->merge($dataBaca->pluck('buku_id'))->unique())
            ->get(['id', 'judul_buku']);

        // Menyiapkan data untuk clustering
        $dataForClustering = [];
        foreach ($dataBuku as $buku) {
            $pinjamCount = $dataPinjam->where('buku_id', $buku->id)->count();
            $bacaCount = $dataBaca->where('buku_id', $buku->id)->count();
            $dataForClustering[] = [
                'judul_buku' => $buku->judul_buku,
                'detail' => $pinjamCount,
                'details' => $bacaCount
            ];
        }

        // Melakukan clustering
        $clusteringResult = $this->clusterData($dataForClustering);

        $resultData = $clusteringResult['clusters'];
        $allCentroids = $clusteringResult['centroids'];

        // Mengembalikan hasil dalam format JSON
        return response()->json([
            'resultData' => $resultData,
            'allCentroids' => $allCentroids,
            'points' => $dataForClustering
        ]);
    }


    // Inisialisasi centroid awal
    private function inisiasiCentroids($resultData)
    {
        $centroids = [
            'populer' => [$resultData[5]['detail'], $resultData[5]['details']],
            'diminati' => [$resultData[8]['detail'], $resultData[8]['details']],
            'kurang' => [$resultData[10]['detail'], $resultData[10]['details']]
        ];
        return $centroids;
    }


    // Menghitung centroid baru
    private function hitungCentroidsBaru($clusters, $resultData)
    {
        $newCentroids = [];
        $sum = [];
        $counts = [];

        // Inisialisasi sum dan counts untuk setiap cluster
        foreach ($clusters as $cluster => $dataIds) {
            $sum[$cluster] = ['detail' => 0, 'details' => 0];
            $counts[$cluster] = 0;
        }

        // Menjumlahkan nilai detail dan details untuk setiap cluster
        foreach ($clusters as $cluster => $dataIds) {
            foreach ($dataIds as $dataId) {
                $point = $resultData[array_search($dataId, array_column($resultData, 'judul_buku'))];
                $sum[$cluster]['detail'] += $point['detail'];
                $sum[$cluster]['details'] += $point['details'];
                $counts[$cluster]++;
            }
        }

        // Menghitung rata-rata untuk centroid baru
        foreach ($sum as $cluster => $clusterSum) {
            if ($counts[$cluster] > 0) {
                $newCentroids[$cluster] = [
                    $clusterSum['detail'] / $counts[$cluster],
                    $clusterSum['details'] / $counts[$cluster]
                ];
            } else {
                // Menangani kasus ketika sebuah cluster kosong
                $newCentroids[$cluster] = [0, 0];
            }
        }

        for ($i = 1; $i <= 3; $i++) {
            if (!isset($newCentroids["C$i"])) {
                $newCentroids["C$i"] = [0, 0];
            }
        }

        return $newCentroids;
    }

    // Fungsi untuk melakukan clustering data
    public function clusterData($resultData, $maxIterasi = 100, $toleransi = 0.0001)
    {
        $centroids = $this->inisiasiCentroids($resultData);
        $allCentroids = [];

        for ($i = 0; $i < $maxIterasi; $i++) {
            $clusters = [];
            // Mengelompokkan data ke cluster terdekat
            foreach ($resultData as $point) {
                $jarak = [];
                foreach ($centroids as $cluster => $centroid) {
                    $jarak[$cluster] = $this->hitungJarak(
                        [$point['detail'], $point['details']],
                        $centroid
                    );
                }
                $jarakMin = min($jarak);
                $clustering = array_search($jarakMin, $jarak);
                $clusters[$clustering][] = $point['judul_buku'];
            }

            // Menghitung centroid baru
            $newCentroids = $this->hitungCentroidsBaru($clusters, $resultData);
            $allCentroids[] = $newCentroids;
            $maxShift = 0;

            // Menghitung perubahan terbesar (shift) untuk centroid
            foreach ($centroids as $cluster => $centroid) {
                $shift = $this->hitungJarak($centroid, $newCentroids[$cluster]);
                if ($shift > $maxShift) {
                    $maxShift = $shift;
                }
            }

            // Update centroid
            $centroids = $newCentroids;

            // Berhenti jika perubahan sudah kurang dari toleransi
            if ($maxShift < $toleransi) {
                break;
            }
        }

        // Menyusun hasil akhir clustering
        $clusterFinal = [];
        foreach ($resultData as $point) {
            $jarak = [];
            foreach ($centroids as $cluster => $centroid) {
                $jarak[$cluster] = $this->hitungJarak(
                    [$point['detail'], $point['details']],
                    $centroid
                );
            }
            $jarakMin = min($jarak);
            $clustering = array_search($jarakMin, $jarak);
            $clusterFinal[] = [
                'judul_buku' => $point['judul_buku'],
                'detail' => $point['detail'],
                'details' => $point['details'],
                'jarak_min' => $jarakMin,
                'cluster' => $clustering,
                'jarak' => $jarak
            ];
        }

        return ['clusters' => $clusterFinal, 'centroids' => $allCentroids];
    }

    // Fungsi untuk menghitung jarak Euclidean
    private function hitungJarak($a, $b)
    {
        return sqrt(
            pow($a[0] - $b[0], 2) +
            pow($a[1] - $b[1], 2)
        );
    }
}

