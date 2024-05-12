<?php
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $mysqli = new mysqli('mysql_container', 'root', 'vincenzo', 'progettoesame');
    $sql = 'insert into preordini(nome, cognome, indirizzo, cap, stato, provincia, numero, nomecompleto, numerocarta, scadenza, cvv) values ("'.$_POST['nome'].'","'.$_POST['cognome'].'","'.$_POST['indirizzo'].'","'.$_POST['cap'].'","'.$_POST['stato'].'","'.$_POST['provincia'].'","'.$_POST['numerotelefono'].'","'.$_POST['nomecompleto'].'","'.$_POST['numerocarta'].'","'.$_POST['scadenza'].'","'.$_POST['cvv'].'");';
    $mysqli->query($sql);
    echo 1;
}