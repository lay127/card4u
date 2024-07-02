# Anotações

[Auxilio para escrever em markdown](https://docs.github.com/pt/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

## Regras de Boa prática:
•	Usar <!DOCTYPE html>  
•	Colocar símbolo de fechamento em tags que não fecham <tag/>  
•	Sempre colocar a linguagem, chartset UTF-8  
•	Não ignorar o <title>, e não use em várias páginas  
•	Lowercase sempre que possível para nome de tag, atributo, valores, arquivo  
•	Nomes de atributos e seus valores não devem ser separados por espaço  
•	Fazer indentação  

## HTML

### Ícone:
Ícone minimalista e em ico nome = favicon.ico  
Fundo png  


### Tabela:

* Conjunto de Campos
  
< fieldset >  
< legend >formatar como tabela< /legend >  
< /fieldset >  

* Tabela 

< table >  
< tr >  
< th >< /th >  
< td >< /td >  
< /tr >  
< /table >  

* Lista

< ul >  
< li >< /li >  
< li >< /li >  
< li >< /li >  
< /ul >  

### Formulários:

< forms >Escrever dentro da tag< /forms >  

**Label:** Nome antes da caixinha de resposta  
**Input:** Caixinha de resposta  
**ID:** Configurar label  	
**PlaceHolder:** Colocar descrição dentro da caixinha  
**Name:** Nome da variável  
**Value:** Nome dentro do botão  

[Para ver todos os inputs aperta aqui](https://www.w3schools.com/html/html_form_input_types.asp)  

Exemplo forms de Nome:  
< label for=”idNome” >Nome< /label >  
< input type=”text” name=”nameNome” id=”idNome” placeholder="Digite seu nome..."/ >  

Exemplo forms de Data de Nascimento:  
< label for=” idData” >Data de nascimento< /label >  
< input type=”date” name=”nameData” id=”idData”/ >  

Exemplo forms de CPF:  
< label for=”idCPF” >CPF< /label >  
< input type=”number” name=”nameCPF” id=”idCPF” placeholder="Digite seu CPF..."/ >  

Exemplo forms de Email:  
< label for="idEmail" >E-mail< /label >   
< input type="email" id=" idEmail" name=”nameEmail” placeholder="Digite seu email..."/ >  

Exemplo forms de enviar imagem:  
< label for=”idArquivo” >Arquivo< /label >   
< input type=”file” name=”nameArquivo” id=”idArquivo”/ >  

Exemplo forms de enviar senha:  
< label for=”idSenha” >Senha< /label >  
< input type=”password” name=”nameSenha” id=”idSenha”/ >  

Exemplo forms de um intervalo de números:  
< label for=” idIntervalo” >Intervalo< /label >  
< input type=”rand” name=”nameIntervalo” id=”idIntervalo”/ >  

Exemplo forms de bolinha de marcação:  
< label for=”idBolinha” >Bolinha< /label >   
< input type=”radio” name=”nameBolinha” id=”idBolinha”/ >  
< label for=”idBolinha1” >Bolinha1< /label >  
< input type=”radio” name=”nameBolinha”  id=”idBolinha1”/ >  
< label for=”idBolinha2” >Bolinha2< /label >  
< input type=”radio” name=”nameBolinha”  id=”idBolinha2”/ >  

Exemplo forms de seleção:  
< label for=” idSelecao”>Seleção</label >  
< select id=”idSelecao” >  
	< option value=”MG” >Minas Gerais< /option >  
< option value=”SP” >São Paulo< /option >  
< /select >  


Exemplo forms botão de enviar:  
< input type="submit" value="Enviar" >  

Exemplo forms de resetar  
< input type=”reset” value=”Redefinir”/ >  

### Tag A:  
< a href=”link” >< /a > para linkar a sites da internet  
< a href=”arquivo” >< /a > link para fazer download  

### Linkar: 
< link rel="stylesheet" href="nome do seu arquivo.css" > Linkar css  
< link rel="icon" type="image/x-icon" href="favicon.ico" /> Linkar icon  


## CSS

Hierarquia do css  
Interno (tag style no head), Externo (no arquivo css) e InLine (style na linha)  

Style é um parametro de css inline  
Style em css externo é nada  
Style css interno é uma tag  

### Palheta de Cores
@charset="UTF-8";

rgb
red green e blue  

#000000 preto  
#FFFFFF branco  

#222222 Pares iguais são cinza

#FFDAD9  
#C891AF  
#C5CCD5  
#9DB598  
#EFFFF6  

### Referenciar cor por nome

:root {  
-- nome da cor #000000  
-- nome da cor #000000  
}  

### Sistema de caixa

padding margem interna  
border [borda](https://www.w3schools.com/css/css_border.asp) visivel  
margin espaçamento  
width largura  
height altura  

* Tags  

< div >< /div > divisao  
< header >< /header > cabeçalho  
< nav >< /nav > menu  
< main >< /main > principal  
< footer >< /footer > rodape  

* Extra  

< article >< /article > artigos  
< aside >< /aside > do lado  
< setion >< /setion > seções  

Manter o header, nav e footer estaticos
auto centraliza  

boxlevel uma embaixo da outra display block
inline nevel uma do lado da outra display inline-block

### Site externo

target: "_black" abre pagina em outra guia

### Atalhos:
Alt + z Para o texto não vazar na tela  
Control + shift + p Para envelopar  
! enter Para o cabeçalho do html  
Control + d ou control + shift + l Selecionar palavras iguais  
shift + alt + f Lndentar  
windowns + v Area de Transferencia  

### Extra:
/?size=l para baixar coisas via instagram
a:hover pintar atras do texto selecionavel
a:visited pintar o texto link que já foi visitado
