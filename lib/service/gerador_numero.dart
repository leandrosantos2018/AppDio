import 'dart:math';

class GeradorNumeroAletorioService{

   static int gerarNumeroAleatorio(int numeroMaximo) {
    Random numeroGerado = Random();
    return numeroGerado.nextInt(numeroMaximo);
  }
}