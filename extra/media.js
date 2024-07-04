var n1 = parseFloat(prompt("Escreva sua nota 1: "));
var n2 = parseFloat(prompt("Escreva sua nota 2: "));
var n3 = parseFloat(prompt("Escreva sua nota 3: "));

var media;

media = (n1+n2+n3)/3;

if(media >= 60){
    window.alert("APROVADO, sua nota é: " + media);
}else{
    window.alert("TENTA DNV, sua nota é: " + media);
}