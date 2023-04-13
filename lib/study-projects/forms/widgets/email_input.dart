/*import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email(String s, {super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {

TextEditingController txtemail = TextEditingController();

void handleEmailChange(){
  String email = txtemail.text;

  setState(() {
    email = txtemail.text;
  });
}

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtemail,
      /*onChanged: (value) {
        email = value;
      },*/
      decoration: const InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
      ),
    );
  }
}
*/