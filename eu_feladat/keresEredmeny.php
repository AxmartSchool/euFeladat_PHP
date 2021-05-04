<?php
$ev = "";
$csatlakozas = "Összes";
$penz = "";
$penznem = "Összes";
$nyelv = "";
$nyelvek = "Összes";
$parameterek = "";

if (isset($_GET["csatlakozas"]) and trim($_GET["csatlakozas"]) != "osszes") {
    $ev="mikor = '$_GET[csatlakozas]' ";
    $csatlakozas = $_GET["csatlakozas"];
}

if (isset($_GET["penznem"]) and trim($_GET["penznem"]) != "osszes") {
    $penz="penz = '$_GET[penznem]' ";
    $penznem=$_GET["penznem"];
}

if (isset($_GET["nyelv"]) and trim($_GET["nyelv"]) != "") {
    $nyelv="nyelv LIKE('%$_GET[nyelv]%') ";
    $nyelvek = $_GET["nyelv"];
}


$keresesQuery= "SELECT * FROM  eutagok";
if ($ev != "" or $penz != "" or $nyelv != "") {

    if ($ev != "") {
        $parameterek = $ev;
        if ($penz != "" or $nyelv != "") {
            $parameterek = $parameterek." AND ";            
        }
    }

    if ($penz != "") {
        $parameterek =$parameterek.$penz;
        if ($nyelv != "") {
            $parameterek= $parameterek." AND ";            
        }
    }

    if ($nyelv != "") {
        $parameterek =$parameterek.$nyelv;
    }
    
    $keresesQuery = $keresesQuery." WHERE ".$parameterek;
}


$keresesResult = mysqli_query($conn, $keresesQuery);

echo "<span style='float:right;'><a href='./keres.php'><img src='./forras/search.png' alt='keres'>Új keresés</a></span></br>";

echo "Csatlakozas: ".$csatlakozas."</br>";
echo "Hivatalos pénznem: ".$penznem."</br>";
echo "Hivatalos nyelv(ek): ".$nyelvek."</br></br>";


if ($keresesResult) {
    echo "Találatok száma: ".mysqli_num_rows($keresesResult);
    include("vanTalalat.php");
}else{
    echo "Találatok száma : 0";
}

?>

