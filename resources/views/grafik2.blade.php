<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="resources\css\app.css">
    <title>CRUD Laravel</title>
</head>

<body>

    <?php
    $con = new mysqli('localhost', 'root', 'kopi', 'wabw');
    $query = $con->query("SELECT * FROM laporan2s ");

    foreach ($query as $data) {
        $minggu[] = $data['minggu'];
        $jumlah[] = $data['jml_peminjaman'];
    }
    ?>

    <nav class="navbar fixed-top navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="/ruang">CRUD</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/ruang">
                    Home
                </a>
            </li>
        </ul>
        <ul class="navbar-nav ">
            <li class="nav-item">
                <a class="nav-link" href="/laporan1/2">Kembali</a>
            </li>
        </ul>
    </nav>

    <br><br><br>
    <h1 class="text-center mb-5 ">Laporan Mingguan</h1>
    <div class="container justify-content-center" style="width: 1000px;">
        <canvas id="myChart"></canvas>
    </div>

    <script>
        const labels = <?php echo json_encode($minggu) ?>;
        const data = {
            labels: labels,
            datasets: [{
                label: 'Jumlah Peminjaman',
                data: <?php echo json_encode($jumlah) ?>,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)'
                ],
                borderWidth: 1
            }]
        };

        const config = {
            type: 'bar',
            data: data,
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            },
        };

        var myChart = new Chart(
            document.getElementById('myChart'),
            config
        );
    </script>

</body>

</html>