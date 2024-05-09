<?php
$mysqli = new mysqli('mysql_container', 'root', 'vincenzo', 'progettoesame');
echo $mysqli->query('select count(id) as numero from preordini')->fetch_assoc()['numero'];