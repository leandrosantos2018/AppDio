import 'package:flutter/Material.dart';

import 'package:trilhapp2/service/gerador_numero.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _HomePageState();
}

class _HomePageState extends State<homePage> {
  int quantidadeVezclique = 0;
  int numeroAleatorio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Quantidade de Cliques $quantidadeVezclique',
              style: const TextStyle(fontSize: 25)),
          Center(
            child: numeroAleatorio == 0
                ? const Text(
                    "Clique no botão para gerar um numero aleatorio",
                  )
                : Text(
                    "o numero gerado foi:  $numeroAleatorio",
                    style: const TextStyle(fontSize: 25),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              quantidadeVezclique++;
              numeroAleatorio =
                  GeradorNumeroAletorioService.gerarNumeroAleatorio(10);
            });
          }),
    );
  }
}
