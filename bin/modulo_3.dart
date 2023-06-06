import 'package:modulo_3/modulo_3.dart' as modulo_3;

void main() {
  escolherMeioDeTransporte(Transporte.skate);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos('Salvador', registrosVisitados);

  Map<String, dynamic> registrarPrecos= {}; 
  registrarPrecos['Salvador'] = 71.33; 
  registrarPrecos['Vitoria'] = 123123; 
  registrarPrecos.remove('Salvador');
  print(registrarPrecos);

  dynamic meuNumero = 7.1;
  meuNumero = 'uma coisa';
  print(meuNumero); 
  
  Viagem viagemHoje = Viagem();
  print(viagemHoje.dinheiro);
  print(Viagem.voo);

}

class Viagem{
  static String voo = 'ASV-032';
  double dinheiro = 7.4;
}
Set<String> registrarDestinos(String destino,Set<String> banco){
  banco.add(destino); 
  return banco; 
}


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

 enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao
}