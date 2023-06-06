import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  viagemMaio.visitar('Escola');
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 12;
  print(viagemMaio.consultarTotalLocaisVisitados);
}

