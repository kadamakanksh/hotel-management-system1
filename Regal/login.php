<?php
include('../conexao.php');

if(isset($_POST['email']) || isset($_POST['senha'])) {

    // if(strlen($_POST['email']) == "admin@admin.com") (strlen($_POST['senha']) == "123"){
        // echo "Preencha seu e-mail";
        // header("location: admin.php");
    if(strlen($_POST['email']) == 0) {
        echo "Preencha seu e-mail";
    } else if(strlen($_POST['senha']) == 0) {
        echo "Preencha sua senha";
    } else {

        $email = $conector->real_escape_string($_POST['email']);
        $senha = $conector->real_escape_string($_POST['senha']);

        $sql_code = "SELECT * FROM tb_usuario WHERE email = '$email' AND senha = '$senha'";
        $sql_query = $conector->query($sql_code) or die("Falha na execução do código SQL: " . $conector->error);

        $quantidade = $sql_query->num_rows;

        if($quantidade == 1) {
            
            $usuario = $sql_query->fetch_assoc();

            if(!isset($_SESSION)) {
                session_start();
            }
            $_SESSION['id'] = $usuario['id'];
            $_SESSION['nome'] = $usuario['nome'];
            header("Location: ../html/index.html");
        } else {
            echo "Falha ao logar! E-mail ou senha incorretos";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="images/icon.png">
    <link rel="stylesheet" href="./styles/style.css">
    <style> 
        @import url('https://fonts.googleapis.com/css2?family=Marcellus+SC&display=swap');

        *{
            font-family: 'Marcellus SC', serif;
        }
    </style>
</head>

<body>
    <header>
        <h1><a href="Index.html">Regal Hotel</a></h1>
        <nav>
            <a href="ohotel.html">The Hotel</a>&emsp;
            <a href="faleconosco.html">Contact us</a>&emsp;
            <a href="logout.php">To go out</a>
        </nav>
        
    </header>
    <div class="container-fluid p-5 bg-primary text-white text-center">

        <div class="form-group center-form">

            <form method="POST" action="../php/login.php">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                <label for="pwd">Password</label>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="senha">
                <div class="form-group" style="margin-top: 15px;">
                    <button type="submit" class="btn btn btn-success btn-lg" style="width: 120px; ">Submit</button>
                    <button type="reset" class="btn btn btn-danger btn-lg" style="width: 120px ">Reset</button>
                </div>
                <a href="../php/logout.php"><button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button></a>
            </form>
        </div>
    </div>
    </div>
    </div>
</body>

</html>