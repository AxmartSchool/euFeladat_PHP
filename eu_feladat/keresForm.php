<form action="./keres.php" method="get">
<label for="csatlakozas">Csatlakozás:</label>
<select name ="csatlakozas" id="csatlakozas">
    <option value="osszes">Összes</option>
    <?php   
    while ($row = mysqli_fetch_array($csatlakozasResult)) {
        echo "<option value='$row[mikor]'>$row[mikor]</option>";
    }
    ?>
</select>

<label for="penznem">Hivatalos pénz:</label>
<select name ="penznem" id="penznem">
    <option value="osszes">Összes</option>
    <?php   
    while ($row = mysqli_fetch_array($penznemResult)) {
        echo "<option value='$row[penz]'>$row[penz]</option>";
    }
    ?>
</select>

<label for="nyelv">Hivatalos nyelv:</label>
<input type="text" name="nyelv" id="nyelv">

<input type="submit" value="Keresés">
</form>
