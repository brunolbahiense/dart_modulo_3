import 'transporte.dart';

class Viagem{
  static String voo = 'ASV-032';
  double dinheiro = 7.4;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos= {}; 

  int _totalLocaisVisitados = 1;

  Viagem({required this.locomocao});
  printInfo(){
  print(voo);

  void escolherMeioDeTransporte(Transporte locomocao){
  switch (locomocao){
    case Transporte.carro: 
      print('vou de CARRO para a aventura');
      break;
    case Transporte.bike: 
      print('vou de BIKE para a aventura');
      break;
    case Transporte.andando: 
      print('vou ANDANDO para a aventura');
      break;
    case Transporte.aviao: 
      print('vou de AVIÃO para a aventura');
      break;
    default:
    print('o pé na estrada eu vou botar');
    break;
  }
}
  }

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }
  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  String get consultarTotalLocaisVisitados{
    String texto = 'Bruno Visitou $_totalLocaisVisitados locais';
    return texto;
  }

  void set alterarLocaisVisitados(int quantidade){
    if(quantidade < 10){
    _totalLocaisVisitados = quantidade;
    } else {
      print('VOCÊ NÃO PODE ADICIONAR MAIS DE 10 LOCAIS DE UMA VEZ');
    }
  }
}