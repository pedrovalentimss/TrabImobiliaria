$(document).ready(function(){
	$('#tabela').empty(); //Limpando a tabela
	$.ajax({
		type:'post',		//Definimos o método HTTP usado
		dataType: 'json',	//Definimos o tipo de retorno
		url: 'getLocacoes.php',//Definindo o arquivo onde serão buscados os dados
		success: function(dados){
			for(var i=0;dados.length>i;i++){
				//Adicionando registros retornados na tabela
				$('#tabela').append('<tr><td class="border px-4 py-2">'+dados[i].dt_inicio+'</td><td class="border px-4 py-2">'+dados[i].dt_final+'</td><td class="border px-4 py-2">'+dados[i].cliente+'</td><td class="border px-4 py-2">'+dados[i].imovel+'</td></tr>');
			}
		}
	});
});