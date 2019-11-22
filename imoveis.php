<?php
$conexao = mysqli_connect("localhost","root","","imobiliaria");

if(isset($_POST["enviar"])){
	$endereco = $_POST["endereco"];
    $valor = $_POST["valor"];
    $status = $_POST["status"];

    $query = "INSERT INTO `imoveis`(`endereco`, `valor`, `status`) VALUES('$endereco','$valor', '$status')";
	mysqli_query($conexao, $query);
    header("location:imoveis.html");
}

if(isset($_POST["buscar"])){
    $query = "SELECT * FROM `imoveis`";
    $linhas = mysqli_query($conexao, $query);

    echo "<table border>";
	while($dados = mysqli_fetch_array($linhas)){
		echo "<tr><td>".$dados['endereco']."</td> 
			 <td>".$dados['status']."</td>
			<td>".$dados['valor']."</td></tr>";
	}
    echo "</table>";
}
?>