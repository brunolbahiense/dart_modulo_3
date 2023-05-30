import 'package:modulo_3/modulo_3.dart' as modulo_3;

void main() {
  escolherMeioDeTransporte(Transporte.skate);
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