$(document).ready(function(){
	$('#tabela').empty(); //Limpando a tabela
	$.ajax({
		type:'post',		//Definimos o método HTTP usado
		dataType: 'json',	//Definimos o tipo de retorno
		url: 'getLocacoes.php',//Definindo o arquivo onde serão buscados os dados
		success: function(dados){
			for(var i=0;dados.length>i;i++){
				//Adicionando registros retornados na tabela
				$('#tabela').append('<tr><td>'+dados[i].dt_inicio+'</td><td>'+dados[i].dt_final+'</td><td>'+dados[i].cliente+'</td><td>'+dados[i].imovel+'</td></tr>');
			}
		}
	});
});