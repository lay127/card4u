var nome = prompt("Escreva seu nome: ");
var dia = parseInt(prompt("Escreva seu dia: "));
var mes = parseInt(prompt("Escreva seu mês: "));
var ano = parseInt(prompt("Escreva seu ano: "));

if(nome == "Celso Portiolli"){
    if(dia == 11){
        if(mes == 9){
            window.alert("O Celso Portiolli não tem nada a ver com o 11 de Setembro");
        }
    }
}

if(dia == 4){
    if(mes == 7){
        window.alert("Faça a prova com atenção");
    }
}

window.alert("Oi " + nome + ", o dia " + dia + "/" + mes + "/" + ano + " que você escolheu é legal");

