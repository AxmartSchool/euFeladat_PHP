<?php include("header.php"); ?>

<?php
$csatlakozasQuery= "SELECT mikor FROM  eutagok GROUP BY (mikor)";
$csatlakozasResult = mysqli_query($conn, $csatlakozasQuery);
$penznemQuery= "SELECT penz FROM  eutagok GROUP BY (penz)";
$penznemResult = mysqli_query($conn, $penznemQuery);

if (isset($_GET["csatlakozas"]) or isset($_GET["penznem"]) or isset($_GET["nyelv"]) ) {
    
    include("keresEredmeny.php");

}else{

     include("keresForm.php");

}

?>





<?php include("footer.php"); ?>
