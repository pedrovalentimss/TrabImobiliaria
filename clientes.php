<?php
$conexao = mysqli_connect("localhost","root","","imobiliaria");

if(isset($_POST["enviar"])){
	$nome = $_POST["nome"];
    $cpf = $_POST["cpf"];
    $fone = $_POST["fone"];

    $query = "INSERT INTO clientes(nome, cpf, telefone) VALUES('$nome','$cpf', '$fone')";
	mysqli_query($conexao, $query);
    header("location:clientes.html");
}

if(isset($_POST["buscar"])){
    $query = "SELECT * FROM `clientes`";
    $linhas = mysqli_query($conexao, $query);

    echo "<table border>";
	while($dados = mysqli_fetch_array($linhas)){
		echo "<tr><td>".$dados['nome']."</td> 
			 <td>".$dados['cpf']."</td>
			<td>".$dados['telefone']."</td></tr>";
	}
    echo "</table>";
}

?>

