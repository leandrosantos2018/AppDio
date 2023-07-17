import 'package:flutter/Material.dart';

class page3 extends StatefulWidget {
  page3({super.key, required texo});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  final String texto = "";

  var nome = TextEditingController(text: "");
  var DataNscimento = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Dados"),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nome",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              TextField(
                controller: nome,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Data de Nascimento"),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: DataNscimento,
                readOnly: true,
                onTap: () async {
                  var data = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2001, 1, 1),
                      firstDate: DateTime(1900, 5, 20),
                      lastDate: DateTime(2023, 10, 23));

                  if (data != null) {
                    setState(() {
                      DataNscimento.text = data.toString();
                    });
                  }
                },
              ),
              TextButton(
                  onPressed: () {
                    print(nome.text);
                  },
                  child: Text("Salvar"))
            ],
          )),
    );
  }
}
