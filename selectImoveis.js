$(document).ready(function(){
    $('#select-imovel').empty(); //Limpando a tabela
	$.ajax({
		type:'post',		//Definimos o método HTTP usado
		dataType: 'json',	//Definimos o tipo de retorno
		url: 'selectImoveis.php',//Definindo o arquivo onde serão buscados os dados
		success: function(dados){
			for(var i=0;dados.length>i;i++){
				//Adicionando registros retornados na tabela
				$('#select-imovel').append('<option value="'+dados[i].endereco+'">'+dados[i].endereco+'</option>');
			}
		}
	});
});