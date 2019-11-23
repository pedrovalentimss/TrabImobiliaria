$(document).ready(function(){
	$('#tabela').empty(); //Limpando a tabela
	$.ajax({
		type:'post',		//Definimos o método HTTP usado
		dataType: 'json',	//Definimos o tipo de retorno
		url: 'getClientes.php',//Definindo o arquivo onde serão buscados os dados
		success: function(dados){
			for(var i=0;dados.length>i;i++){
				//Adicionando registros retornados na tabela
				$('#tabela').append('<tr><td class="border px-4 py-2">'+dados[i].nome+'</td><td class="border px-4 py-2">'+dados[i].cpf+'</td><td class="border px-4 py-2">'+dados[i].telefone+'</td></tr>');
			}
		}
	});
});