import 'package:flutter/Material.dart';
import 'package:trilhapp2/components/Login/login_page.dart';

class LoginCadastrarConta extends StatefulWidget {
  const LoginCadastrarConta({super.key});

  @override
  State<LoginCadastrarConta> createState() => _LoginCadastrarContaState();
}

class _LoginCadastrarContaState extends State<LoginCadastrarConta> {
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();
  final TextEditingController name = TextEditingController();
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
                        height: 20,
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
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 15, bottom: 15, right: 15),
                            // padding: EdgeInsets.only(
                            //   top: 5, left: 15, bottom: 15, right: 15),
                            child: TextFormField(
                              obscureText: isObscureText,
                              onChanged: (value) {
                                name.text = value;
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.purple)),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.purple,
                                  ),
                                  border: const UnderlineInputBorder(),
                                  hintText: 'Nome Completo',
                                  hintStyle:
                                      const TextStyle(color: Colors.white)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 15, bottom: 15, right: 15),
                            // padding: EdgeInsets.only(
                            //     top: 5, left: 15, bottom: 15, right: 15),
                            child: TextFormField(
                              obscureText: isObscureText,
                              onChanged: (value) {
                                name.text = value;
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.purple)),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.purple,
                                  ),
                                  border: const UnderlineInputBorder(),
                                  hintText: 'Seu-melhor@email.com',
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 15, bottom: 15, right: 15),
                            // padding: EdgeInsets.only(
                            //     top: 5, left: 15, bottom: 15, right: 15),
                            child: TextFormField(
                              obscureText: isObscureText,
                              onChanged: (value) {
                                name.text = value;
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.purple)),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.purple,
                                  ),
                                  suffixIcon: InkWell(
                                    child: isObscureText
                                        ? const Icon(
                                            Icons.visibility_off,
                                            color: Colors.white,
                                          )
                                        : const Icon(
                                            Icons.visibility,
                                            color: Colors.white,
                                          ),
                                  ),
                                  border: UnderlineInputBorder(),
                                  hintText: 'Senha',
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                top: 5, left: 15, bottom: 5, right: 15),
                            // padding: EdgeInsets.only(
                            //     top: 5, left: 15, bottom: 15, right: 15),
                            child: TextFormField(
                              obscureText: isObscureText,
                              onChanged: (value) {
                                name.text = value;
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.purple)),
                                  prefixIcon: Icon(
                                    Icons.phone_android,
                                    color: Colors.purple,
                                  ),
                                  border: UnderlineInputBorder(),
                                  hintText: '00 -0.0000.0000',
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Cadastrar",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Text(
                                    "Ao clicar em criar minha conta gratis , declaro que aceito as politicas de privacidade e " +
                                        "os termos de uso da Digital Innovation One. ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Já tem Conta.",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginPage()));
                                        },
                                        child: const Text("Fazer Login",
                                            style:
                                                TextStyle(color: Colors.green)),
                                        //
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]
                          //
                          ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
