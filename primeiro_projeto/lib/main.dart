import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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

*/

















}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times: Jamilton',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
