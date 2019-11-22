$(document).ready(function(){
    $('#select-cliente').empty(); //Limpando a tabela
	$.ajax({
		type:'post',		//Definimos o método HTTP usado
		dataType: 'json',	//Definimos o tipo de retorno
		url: 'selectClientes.php',//Definindo o arquivo onde serão buscados os dados
		success: function(dados){
			for(var i=0;dados.length>i;i++){
				//Adicionando registros retornados na tabela
				$('#select-cliente').append('<option value="'+dados[i].nome+'">'+dados[i].nome+'</option>');
			}
		}
	});
});