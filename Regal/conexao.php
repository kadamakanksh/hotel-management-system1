   
<?php

$usuario = 'root';
$senha = '';
$database = 'hotel';
$host = 'localhost';

$conector = new mysqli($host, $usuario, $senha, $database);

if($conector->error) {
    die("Falha ao conectar ao banco de dados: " . $conector->error);
}