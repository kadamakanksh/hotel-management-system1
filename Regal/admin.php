<?php 
    include('../conexao.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#282DEB">
    <link rel="icon" type="image/x-icon" href="images/icon.png">
    <link rel="stylesheet" href="../styles/acomodacoes.css">
    <title>Admin</title>
</head>
<body>
    <header class="header">
        <h1>
            Regal Hotel
        </h1>
        <nav>
            <ul>
                <li> <a href="faleconosco.html"> Contact </a> </li>
                <li> <a href="acomodacoes.html"> Accommodations </a> </li>
                <li> <a href="ohotel.html"> About </a> </li>
                <li> <a href="reserva.html"> Reserve </a> </li>
                <li> <a href="valores.html"> Values </a> </li>
            </ul>
        </nav>
    </header>

    <?php
 
    $sql_code = "SELECT * FROM tb_usuario WHERE nome = '$nome' AND email = '$email' AND senha = '$senha'";
    $sql_query = $conector->query($sql_code) or die("Falha na execução do código SQL: " . $conector->error);

    while($aux = mysqli_fetch_assoc($sql)) {
        echo "Nome:".$id['id']."<br />"; 
        echo "Email:".$email['email']."<br />"; 
        echo "Senha:".$senha['senha']."<br />"; 
    }

    ?>

</body>
</html>