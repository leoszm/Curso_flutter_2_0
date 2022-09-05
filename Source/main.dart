void main() {
  
/* BASICO

 Variáveis
  String nome = "Jamilton";
  int idade = 10;
  double preco = 10.50;
  bool verdadeiroFalso =true;//ou dyanemic que ja identifica
  const pi = 3.14;
  print("O Nome é: $nome ${nome}" + nome); //nome, 
*/
/*Operadores básicos aritméticos
*SOMA(+) SUBTRAIR(-) MULTIPLICAR(*) DIVIDIR(/)

var total = 20 * 10; //+ - * /
print(total);
*/

///////////////////////////////////////////////////////////////////////////////


/*Operadores básicos relacionais
== IGUAL A
!= DIFERENTE
> MAIOR QUE
< MENOR QUE
>= MAIOR OU IGUAL 
<= MENOR OU IGUAL

bool resultado = 10 == 10; //== != > < >= <=
print(resultado);
*/

/*Operadores Lógicos
&& e
|| ou

bool resultado = true && true ; //&& ||
print(resultado);
*/


///////////////////////////////////////////////////////////////////////////////////


/*Controladores de fluxo if else switch

var idade =10;
if(idade <=9){
  print("Criança");
}else if(idade>=10 && idade <= 18){
  print("Adolescente");
}else{
  print("Adulto");
}

var comando = "depositar";
switch(comando){
  case "depositar": print("Deposite um valor"); break;
  case "sacar": print("sacar um valor"); break;
  default:
  print("Nenhuma opção escolhida");
}
*/


////////////////////////////////////////////////////////////////////////////////////////////////


/*Loops for e while 

var numero = 0;
while (numero <= 5{
  print("Executando $numero ");
  numero++; //ou -- ou numero +=2 ou -=2
})

var numero = 6;
do{
  print("Executando $numero ");
  numero++;
}while(numero <= 5);

for (int i=1; i<=5; i++){
  print("Executando $i");
}
*/


//////////////////////////////////////////////////////////////////


/*INTERMEDIARIO
void exibirDados(String nome, [?int idade], [?double altura] ){
  /*{}define como opcional ou n, quando for é necessário chamar
  variavel:valor no retorno da função*/
  print("Olá $nome sua idade: $idade sua altura: $altura ");
} /*ou 
1. String exibirDados(){
  return "Olá Leonardo";
}*/
void main() {

  //funções, parâmentros e funções anônimas
  exibirDados("Leonardo"/*, 21, altura:1.80*/);
  //1. String nome=exibirDados(); print(nome);
}
*/


///////////////////////////////////////////////////////////////////////////////////////////



/* void exibirDados( String nome, [int? idade, double? altura] ){
  /*{}define como opcional ou n, quando for é necessário chamar
  variavel:valor no retorno da função*/
  
  int novaIdade = idade ?? 0;
  double novaAltura = altura ?? 0;
  print("Olá $nome sua idade: $novaIdade sua altura: $novaAltura ");
} /*ou 
1. String exibirDados(){
  return "Olá Leonardo";
}*/
void main() {
  
  //funções, parâmentros e funções anônimas
  exibirDados("Leonardo", 18 , 1.80);
  //1. String nome=exibirDados(); print(nome);
}
*/


////////////////////////////////////////////////////////////////////


/*
void exibirDados( String nome, Function funcao){
  
  print("Olá $nome");
  funcao;
  
}

void calcularBonus(){
  print("Bonus Calculado");
}
void main() {
  
  //funções, parâmentros e funções anônimas
  exibirDados("Leonardo", calcularBonus);
  //1. String nome=exibirDados(); print(nome);
}*/ 


/////////////////////////////////////////////////////////////////////////


/*Construtores e método
class Animal{
  String? cor;
  
  //construtor
  Animal(String cor){
    /*configurar automaticamente cor em que this.cor recebe cor
    descartando a linha animal.cor e print animal.cor*/
    this.cor = cor;
  } // ou de maneira simples Animal(this.cor);
  
  //namied construtor || contrutor nomeado
  
  Animal.jabuti(this.cor)
  {
    print("Construtor de Jabuti");
  }  
  //metodo
  void dormir(){
    print("dormir");
  }}
void main() {
  /*Classes, construtores e herança
   */
//classe(tipo).nome = new objeto()
  //Animal animal = Animal("Marrom");
  Animal animal = Animal.jabuti("rosa");
  //animal.cor = "marrom";
  animal.dormir();
  print(animal.cor);
}
*/

/////////////////////////////////////////////////////////////////////////////


/*
class Animal{
  String? cor;
  
  //metodo
  void dormir(){
    print("zZzZzzZ...");
  }
}
//extends significa relação de herança, Cao herda de Animal metodo dormir
class Cao extends Animal{
  String? corOrelha;
  
  //metodo
  void latir(){
    print("AU-AU");
  }
  
}
class Passaro extends Animal{
    String? corBico;
  
  //metodo
  void piar(){
    print("Bem te vi");
  }
  
}

  void main() {
  /*Classes, construtores e herança
   */
  //tipo.variavel = new objeto;
    Cao cao = new Cao();
    cao.dormir();
    cao.latir();
    
    //tipo.variavel = new objeto;
    Passaro passaro = new Passaro();
    passaro.dormir();
    passaro.piar();

}
*/

////////////////////////////////////////////////////////////////////////////////


/*Getters and Setters
class Conta{
  double _saque = 0;
  //_ proporciona que o atibuto não seja pego externo a classe
  
  double get saque {
    //validações
    return this._saque;
    //retorna em _saque
  }
  
  //verifica se esta dentro das especificações e configura o valor do atributo
  set saque(double saque)
  {
    if(saque > 0 && saque <= 500){
      this._saque = saque;
    }
  }
}
  void main() {
  /*Getters and Setters
   */
    
    //getters= proteger os atributos da sua classe, pega o valor
    Conta conta = new Conta();
    conta.saque = 500; //usando set configurar
    
    print(conta.saque);//get pegar

}
*/

//////////////////////////////////////////////////////////////////////////////


/*
//#SOBRESCRITA DE MÉTODOS

class Animal{
  String? cor;
  
  //construtor
  Animal(this.cor);//configurar a cor no construtor
  //metodo
  void dormir(){
    print("zZzZzzZ...");
  }
  void correr(){
    print("Correr como um ");
  }
}
//extends significa relação de herança, Cao herda de Animal metodo dormir
class Cao extends Animal{
  String? corOrelha;
  
  //cosntrutor
  Cao(String cor, this.corOrelha) : super(cor); //Recebe cor e chama o construtor de animal para passar a cor(parametro) para construtor animal 
  
  //metodo
  void latir(){
    print("AU-AU");
  }
  //Sobescreve um método pai
  @override
  void correr(){
    super.correr();//classe pai ou super classe
    print("cão");
  }
  
}
class Passaro extends Animal{
    String? corBico;
  
  Passaro(String cor) : super(cor);
  
  //metodo
  void piar(){
    print("Bem te vi");
  }
  void voar(){
    print("Voar");
  }
    @override
  void correr(){
    super.correr();
    print("Pássaro");
  }
  
}

  void main() {
  /*Classes, construtores e herança
   */
    Cao cao = new Cao("Marrom", "Branca");
    print(cao.cor!);
    cao.correr();
    //tipo.variavel = new objeto;
    
    //tipo.variavel = new objeto;
}
*/

/////////////////////////////////////////////////////////////////////////////////////////////////////////


/*
//#CLASSES ABSTRATAS E MODIFICADORES STATIC E FINAL

//A classe animal normalmente não é instanciada, apenas seus filhos
//então o abstract não permite ser instanciada
abstract class Animal{
  String? cor;
  
  //construtor
  Animal(this.cor);//configurar a cor no construtor
  //metodo
  void dormir(){
    print("zZzZzzZ...");
  }
  void correr(){
    print("Correr como um ");
  }
}
//extends significa relação de herança, Cao herda de Animal metodo dormir
class Cao extends Animal{
  String? corOrelha;
  
  //cosntrutor
  Cao(String cor, this.corOrelha) : super(cor); //Recebe cor e chama o construtor de animal para passar a cor(parametro) para construtor animal 
  
  //metodo
  void latir(){
    print("AU-AU");
  }
  //Sobescreve um método pai
  @override
  void correr(){
    super.correr();//classe pai ou super classe
    print("cão");
  }
  
}
class Passaro extends Animal{
    String? corBico;
  
  Passaro(String cor) : super(cor);
  
  //metodo
  void piar(){
    print("Bem te vi");
  }
  void voar(){
    print("Voar");
  }
    @override
  void correr(){
    super.correr();
    print("Pássaro");
  }
  
}

class Configuracoes{
  static String IdentificadorApp= "jlads789789";
  
  static void configuracaoInicial(){
    print("Aceita que as informações são válidas \ne deseja executar configurações iniciais e atualizações?");
  }
}

  void main() {
    //modificadores
    
    //com static não é preciso instanciar
    //Configuracoes config = Configuracoes();
    
    Configuracoes.configuracaoInicial();
    //    classe        objeto
    print(Configuracoes.IdentificadorApp);
    
    
  /*Classes, construtores e herança
   */
    //final, não pode receber novo valor
    final Cao cao = new Cao("Marrom", "Branca");
    print(cao.cor);
    cao.correr();
    //pode se colocar novamente o objeto com outro valor,
    //mas se colocar final ele é absoluto e n pode ser re-usado
    //cao = new Cao("Vermelho", "Branca");
    //print(cao.cor);
    //tipo.variavel = new objeto;
}*/



/////////////////////////////////////////////////////////////////////////////////////////////////////////


/*#INTERFACE
//#Interface
//em outras linguagens é escrito interface, no dart pode ser criado como
//classe comum, como não vamos instanciala é abstrata

abstract class Presidenciavel{
  void participarEleicao();//com corpo tem chaves{}
}

Cidadao{
  void direitosDeveres{
    print("Todo cidadão tem direitos e deveres!");
  }
}

//Ao utilizar interface, se cria um contrato entre classe e a interface
//interface obriga a classe a implementar de forma concreta ao método
class Obama extends Cidadao implements Presidenciavel{
  //erro apresentado solicita implementação concreta
  //obama fica obrigado a utilziar metodo participar eleição!
  void participarEleicao(){
  print("participar da eleição dos estados unidos");
  }
}
class Jamilton{
  
}


void main() {
  Obama obama = new Obama();
  obama.participarEleicao();
}
*/


/////////////////////////////////////////////////////////////////////////////////////////////////////////


/*
//#COLEÇÕES, LISTAS E MAPAS
  //Coleções - Listas(arrrays) e mapas
class Usuario{
  String nome;
    int idade;
  
  Usuario(this.nome,this.idade);
  
}


void main() {
  /*List<String> frutas = ["0 - Morango", "Manga"];
  print(frutas);
  frutas.add("2 - Melancia");
  frutas.insert(0, " new 0 - Amora");
  print(frutas);
  frutas.removeAt(1);
  print(frutas);
  print( frutas.contains("Manga"));
  print( frutas.contains("Jujuba"));
  print(frutas.length);*/
  List<Usuario> usuarios = List();
}
*/















}