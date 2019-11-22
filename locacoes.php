<?php
$conexao = mysqli_connect("localhost","root","","imobiliaria");

if(isset($_POST["enviar"])){
    $dt_inicio = $_POST["data-inicio"];
    $dt_final = $_POST["data-final"];
    $cliente = $_POST["cliente"];
    $imovel = $_POST["imovel"];

    $query = "INSERT INTO locacoes(dt_inicio, dt_final, cliente, imovel) VALUES('$dt_inicio','$dt_final', '$cliente', '$imovel')";
	mysqli_query($conexao, $query);
    header("location:locacoes.html");
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

