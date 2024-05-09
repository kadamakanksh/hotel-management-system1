<?php
    include_once ("../conexao.php");

    $nome = $_POST['nome_cad'];

    $email = $_POST['email_cad'];

    $nascimento = $_POST['dt_cad'];

    $senha = $_POST['senha_cad'];

    $sql_cadastro = "INSERT INTO  tb_usuario (nome,email,dt_nascimento,senha) values ('$nome','$email','$nascimento','$senha')"; 

    $cadastro = mysqli_query($conector,$sql_cadastro);

    if(!isset($_SESSION)) {
        session_start();
    }

    header("Location: ../html/login.html");
?>