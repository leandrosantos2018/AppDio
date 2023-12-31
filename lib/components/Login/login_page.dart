import 'package:flutter/Material.dart';
import 'package:trilhapp2/components/Home/main_page.dart';
import 'package:trilhapp2/components/Login/login_create_conta.dart';
import 'package:trilhapp2/components/Login/login_recupera_senha.dart';
import 'package:trilhapp2/components/Ultis/input.dart';

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
                              height: 100,
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
                        "Já Tem Cadastro ?",
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
                      InputText(email: email, label: "E-mail"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin: const EdgeInsets.all(15),
                                child: TextFormField(
                                  controller: senha,
                                  obscureText: isObscureText,
                                  // outra forma pega dados formfield
                                  // onChanged: (value) {
                                  //   senha.text = value;
                                  // },
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(top: 0),
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
                                      border: const UnderlineInputBorder(),
                                      hintText: 'Senha',
                                      hintStyle: const TextStyle(
                                          color: Colors.purple)),
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
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainPage()));
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
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginRecuperaSenha()));
                            },
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
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginCadastrarConta()));
                                },
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
