import 'package:flutter/Material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();
  bool isObscureText = false;

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
                              height: 150,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Ja Tem Cadastro?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Faça seu login e make the change._",
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
                                  validator: (value) {
                                    
                                  },
                                  onChanged: (value) {
                                    email.text = value;
                                  },
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 0),
                                      hintText: "E-mail",
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
                      Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin: const  EdgeInsets.all(15),
                                child: TextFormField(
                                  obscureText: isObscureText,
                                  onChanged: (value) {
                                    senha.text = value;
                                  },
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(top: 0),
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.purple)),
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                        color: Colors.purple,
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          setState(() {
                                            isObscureText = !isObscureText;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.visibility,
                                          color: Colors.white,
                                        ),
                                      ),
                                      border: const UnderlineInputBorder(),
                                      hintText: 'Senha',
                                      hintStyle:
                                         const  TextStyle(color: Colors.purple)),
                                ),
                              )),
                        ],
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
                                print(email.text);
                                print(senha.text);
                              },
                              child: const Text(
                                "ENTRAR",
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
                              "Esqueci minha Senha",
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
                                onPressed: () {},
                                child: const Text("Criar Conta",
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
