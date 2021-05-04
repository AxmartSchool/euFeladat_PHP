<?php include("header.php"); ?>


<?php
if (isset($_GET["rendezes"])) {
    $query= "SELECT * FROM  eutagok ORDER BY($_GET[rendezes]) " ;
    
}else{
$query= "SELECT * FROM  eutagok ORDER BY('orszag') DESC";

}
$result = mysqli_query($conn, $query);


?>

<h1>Tagállamok</h1>

<div>
    <?php

    ?>
    <table>
        <tr class="tablehead">
            <th><a href="./lista.php?rendezes=mikor">Csatlakozás éve</a></th>
            <th><a href="./lista.php?rendezes=orszag">Ország</a></th>
            <th></th>
            <th><a href="./lista.php?rendezes=fovaros">Főváros</a></th>
        </tr>
        <?php

        while($row = mysqli_fetch_array($result)){
                echo"<tr>";
                echo"<td class='kozepSzoveg'> $row[mikor]</td>";
                echo"<td class='kozepSzoveg'> $row[orszag]</td>";
                echo"<td><a href='./orszag.php?id=$row[id]'> <img src='./forras/$row[id].jpg'></a></td>";
                echo"<td class='kozepSzoveg'> $row[fovaros]</td>";
                echo"</tr>";
        }
        
        ?>
    </table>

</div>


<?php include("footer.php"); ?>