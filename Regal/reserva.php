<?php
    session_start();
    include_once ("conexao.php");
    $id = $_SESSION['id'];

    $tipo = $_POST['acomodacoes'];

    $data_entrada = $_POST['dt_entrada'];

    $data_saida = $_POST['dt_saidas'];

    $quant_hosp = $_POST['qt_hospedes'];

    $val_reserva = 10;

    if($data_entrada < $data_saida){

        $sql_acomodacoes = "SELECT * FROM tb_acomodacao";
        $acomodacoes = mysqli_query($conector,$sql_acomodacoes);
        $result = mysqli_fetch_array($acomodacoes);
        $x=1;
        while( $result = mysqli_fetch_array($acomodacoes)){
            if($result['tipo_aco'] == $tipo && $x == 1){
                if($result['quant_cas'] == $quant_hosp && $x == 1){
                    $x=2;            
                }  
            }          
        }
    $sql_reserva = "INSERT INTO  * FROM tb_reserva (id_usuario,id_acomodacao,data_entrada,tipo,data_saida,quant_hosp,val_reserva) 
        values ('$id','$tipo','$data_entrada','$data_saida','$quant_hosp','$val_reserva')"; 

    $reserva = mysqli_query($conector, $sql_reserva);

    header("location: ../html/index.html");
    }else{
        die("Error");
    } 
?>