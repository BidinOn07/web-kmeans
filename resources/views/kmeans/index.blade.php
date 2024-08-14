<!-- resources/views/kmeans/index.blade.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulir Klastering Data</title>
</head>
<body>
    <h1>Formulir Klastering Data</h1>

    <form method="POST" action="{{ route('kmeans.process') }}">
        @csrf
        <label for="bulan">Pilih Bulan:</label>
        <select id="bulan" name="bulan">
            @for ($i = 5; $i <= 7; $i++)
                <option value="{{ $i }}">{{ $i }}</option>
            @endfor
        </select>

        <label for="tahun">Pilih Tahun:</label>
        <select id="tahun" name="tahun">
            @for ($i = 2024; $i <= now()->year; $i++)
                <option value="{{ $i }}">{{ $i }}</option>
            @endfor
        </select>

        <label for="iterasi">Masukan Jumlah Iterasi</label>
        <select name="iterasi" id="iterasi">
            @for ($i = 1; $i <= 100; $i++)
            <option value="{{$i}}">{{$i}}</option>
            @endfor
        </select>

        <button type="submit">Proses</button>
    </form>
</body>
</html>
