
<div>
    <?php

    ?>
    <table>
        <tr class="tablehead">
            <th>Csatlakozás éve</th>
            <th>Tagállam</th>
            <th>Főváros</th>
            <th>Hivatalos nyelv(ek)</th>
            <th>Hivatalos penz</th>
        </tr>
        <?php

        while($row = mysqli_fetch_array($keresesResult)){
                echo"<tr>";
                echo"<td class='kozepSzoveg'> $row[mikor]</td>";
                echo"<td class='kozepSzoveg'> $row[orszag]</td>";
                echo"<td class='kozepSzoveg'> $row[fovaros]</td>";
                echo"<td class='kozepSzoveg'> $row[nyelv]</td>";
                echo"<td class='kozepSzoveg'> $row[penz] ($row[rpenz])</td>";
                echo"</tr>";
        }
        
        ?>
    </table>

</div>