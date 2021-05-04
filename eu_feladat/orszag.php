<?php include("header.php"); ?>


<?php

$id = 1;
if (isset($_GET["id"])) {
    $id = $_GET["id"];
    if ($id > 27) {
        $id = 27;
    }else if ($id < 1) {
        $id = 1;        
    }
}

$query= "SELECT * FROM  eutagok WHERE id=$id";


$result = mysqli_query($conn, $query);
if ($result == null) {
    $row = null;
}else{
    $row = mysqli_fetch_array($result);

    echo "<h2>".$row["orszag"]."</h2><div class=adatok>";
    echo "<div class='alapAdatok'><a href='./orszag.php?id=".($id-1)."'><img src='./forras/left.png' alt='bal'></a>";
    echo "<img src='./forras/$id.jpg'>";
    echo "<a href='./orszag.php?id=".($id+1)."'><img src='./forras/right.png' alt='jobb'></a></div>";

    echo "<div class='egyebAdatok'> ";
    echo "Főváros: $row[fovaros] </br>";
    echo "Hivatalos uniós nyelv(ek): $row[nyelv] </br>";
    echo "Az Európai Unió tagja ettől az évtől: $row[mikor] </br>";
    echo "Hivatalos pénznem: $row[penz] ($row[rpenz])</br>";
    echo "Egyéb információk: <p>$row[egyeb] </p></br>";
    echo "</div></div>";


}




?>



<?php include("footer.php"); ?>