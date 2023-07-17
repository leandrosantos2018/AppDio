import 'package:flutter/Material.dart';
import 'package:trilhapp2/components/Login/login_create_conta.dart';
import 'package:trilhapp2/components/Login/login_recupera_senha.dart';
import 'package:trilhapp2/components/Ultis/input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();
  bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(31, 48, 47, 47),
          flexibleSpace: Container(
            margin: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://hermes.digitalinnovation.one/assets/diome/logo.png',
                  height: 60,
                  width: 80,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Icon(
                        Icons.heart_broken_rounded,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text(
                        "5",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.orange,
                      // child: Image.network(
                      //   fit: Radius.circular(5),

                      //     'https://media.licdn.com/dms/image/C4D03AQFvzJ8mGCwWxw/profile-displayphoto-shrink_100_100/0/1653423882090?e=1695254400&v=beta&t=N4KNklUiZhP_2Up-liTcfYFfuLoUVMFh06aPnt-LNEk'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Ola, Leandro",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              color: Colors.green,
              height: 50,
              width: 450,
            ),
            Container(
             
              margin: EdgeInsets.all(8),
              color: Colors.red,
              height: 150,
              width: 300,
            )
          ],
        ),
      ),
    );
  }
}
