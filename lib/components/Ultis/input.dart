import 'package:flutter/Material.dart';

class InputText extends StatelessWidget {
  final String label;

  InputText({super.key, required this.email, required this.label});

  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                onChanged: (value) {
                  email.text = value;
                },
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 0),
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.purple),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    border: UnderlineInputBorder()),
              ),
            ))
      ],
    );
  }
}
