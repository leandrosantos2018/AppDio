import 'package:flutter/Material.dart';
import 'package:trilhapp2/components/Home/home_page.dart';
import 'package:trilhapp2/components/Login/login_create_conta.dart';
import 'package:trilhapp2/components/Login/login_page.dart';
import 'package:trilhapp2/components/Login/login_recupera_senha.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
