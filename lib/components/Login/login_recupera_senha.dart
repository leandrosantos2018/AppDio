import 'package:flutter/Material.dart';
import 'package:trilhapp2/components/Login/login_create_conta.dart';
import 'package:trilhapp2/components/Login/login_page.dart';

class LoginRecuperaSenha extends StatefulWidget {
  const LoginRecuperaSenha({super.key});

  @override
  State<LoginRecuperaSenha> createState() => _LoginRecuperaSenhaState();
}

class _LoginRecuperaSenhaState extends State<LoginRecuperaSenha> {
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();
  bool isObscureText = false;

  final snackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Text('E-mail enviado com sucesso'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            color: Colors.black12,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                            flex: 10,
                            child: Image.network(
                              "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                              height: 80,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                      const Text(
                        "Esqueci minha senha",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Calma! Vamos ajudar você com isso. :)",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.all(15),
                                child: TextFormField(
                                  validator: (value) {},
                                  onChanged: (value) {
                                    email.text = value;
                                  },
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 0),
                                      hintText: "E-mail cadastrado",
                                      hintStyle:
                                          TextStyle(color: Colors.purple),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.purple)),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.purple,
                                      ),
                                      border: UnderlineInputBorder()),
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                              ),
                              onPressed: () {
                                // criar função de autenticação
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LoginPage()));

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: const Text(
                                "Recuperar Senha",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      Expanded(
                          child: Container(
                        child: const SizedBox(
                          height: 10,
                        ),
                      )),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Ainda não tem uma conta gratuita?",
                              style: TextStyle(color: Colors.amber),
                            ),
                            //
                          ),
                          Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              height: 30,
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginCadastrarConta()));
                                },
                                child: const Text("Criar Conta ",
                                    style: TextStyle(color: Colors.green)),
                                //
                              )),
                          Container(
                            margin: const EdgeInsets.only(bottom: 60),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
