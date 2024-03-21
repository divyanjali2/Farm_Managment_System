<?php
    session_start();
    include 'includes/database.php';
    include 'includes/action.php';
?>
<!DOCTYPE html>
<html lang="en">

<?php include "{$_SERVER['DOCUMENT_ROOT']}/Farm Managment System/partials/_head.php";?>
<body id="body">
    <div class="container">
       
        <?php include "{$_SERVER['DOCUMENT_ROOT']}/Farm Managment System/partials/_top_navbar.php";?>
        <main>
            <div class="main__container">
              
                <div class="main__title">
                
                    <div class="main__greeting">
                        <h1>Eggs Summary</h1>
                    </div>
                </div>
                
                
                <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
                                
             

            </div>
        </main>
        
        
        <?php include "{$_SERVER['DOCUMENT_ROOT']}/Farm Managment System/partials/_side_bar.php";?>
    </div>
    <script src="script.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {packages:["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Eggs', 'Number'],
                <?php

                    echo "['Eggs Remaining', " . $remainingEggs . "],";

                    echo "['Eggs Sold', " . $totalEggsSold . "],";
          
                ?>
            ]);

            var options = {
                title: 'Eggs Sold vs. Eggs Remainining',
                is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
        }
    </script>
</body>
</html>