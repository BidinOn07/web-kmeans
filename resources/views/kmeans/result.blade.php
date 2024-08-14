<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Hasil Klastering Data</title>
</head>

<body>
    <h2>Data Awal</h2>
    <table>
        <thead>
            <tr>
                <th>Data Buku</th>
                <th>Dibaca</th>
                <th>Dipinjam</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($points as $point)
                <tr>
                    <td>{{ $point['judul_buku'] }}</td>
                    <td>{{ $point['details'] }}</td>
                    <td>{{ $point['detail'] }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <h1>Centroid per-Iterasi</h1>
    @foreach ($allCentroids as $iterasi => $centroids)
        <h2>Iterasi {{ $iterasi + 1 }}</h2>
        <table>
            <thead>
                <tr>
                    <th>Cluster</th>
                    <th>Dibaca</th>
                    <th>Dipinjam</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Paling Diminati</td>
                    <td>{{ $centroids['populer'][0] }}</td>
                    <td>{{ $centroids['populer'][1] }}</td>
                </tr>
                <tr>
                    <td>Diminati</td>
                    <td>{{ $centroids['diminati'][0] }}</td>
                    <td>{{ $centroids['diminati'][1] }}</td>
                </tr>
                <tr>
                    <td>Jarang Diminati</td>
                    <td>{{ $centroids['kurang'][0] }}</td>
                    <td>{{ $centroids['kurang'][1] }}</td>
                </tr>
            </tbody>
        </table>
    @endforeach
    <h2>Hasil Klastering Data</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Judul Buku</th>
                <th>Dibaca</th>
                <th>Dipinjam</th>
                <th>Paling Diminati</th>
                <th>Diminati</th>
                <th>Jarang Diminati</th>
                <th>Jarak Minimal</th>
                <th>Cluster</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($resultData as $hasil)
                <tr>
                    <td>{{ $hasil['judul_buku'] }}</td>
                    <td>{{ $hasil['details'] }}</td>
                    <td>{{ $hasil['detail'] }}</td>
                    <td>{{ $hasil['jarak']['populer'] }}</td>
                    <td>{{ $hasil['jarak']['diminati'] }}</td>
                    <td>{{ $hasil['jarak']['kurang'] }}</td>
                    <td>{{ $hasil['jarak_min'] }}</td>
                    <td>{{ $hasil['cluster'] }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>
