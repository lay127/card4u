var peso = [];
var n = 0;
var count = 0;

while(true){
    var pesoAtual = parseFloat(prompt("Escreva o peso do seu boi: "));

    if (pesoAtual === 0) {
        break;
    }

    peso[n] = pesoAtual;
    count++;
    n++;
}

//media

var media = 0;
var soma = 0;

for(let i=0; i<count; i++){
    soma += (peso[i]);
}

media = soma/count;

window.alert("A media é: " + media);

//max e min

var aux;

for(let i=0; i<count - 1; i++){
    for (let j = 0; j < count - 1 - i; j++) {
        if (peso[j] > peso[j + 1]) {
            let aux = peso[j];
            peso[j] = peso[j + 1];
            peso[j + 1] = aux;
        }
    }
}

var minimo = peso[0];
var maximo = peso[count - 1];

window.alert("O mínimo é: " + minimo);
window.alert("O máximo é: " + maximo);
