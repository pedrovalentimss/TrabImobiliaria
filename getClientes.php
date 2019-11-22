<?php
    //Conectando ao banco de dados
    $conexao = new mysqli("localhost", "root", "", "imobiliaria");
    if (mysqli_connect_errno()) trigger_error(mysqli_connect_error());
    
    //Consultando banco de dados
    $qryLista = mysqli_query($conexao, "SELECT * FROM clientes");    
    while($resultado = mysqli_fetch_assoc($qryLista)){
        $vetor[] = array_map('utf8_encode', $resultado); 
    }    
    
    //Passando vetor em forma de json
    echo json_encode($vetor);
?>