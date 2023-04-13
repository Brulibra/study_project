import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Home Page"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('lib/assets/images/form_logo.png')),
                Card(
                  color: Colors.purple[100],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, right: 8.0, left: 8.0, bottom: 12.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          child: const Text("Entrar"),
                          onPressed: () {
                            if (email == 'ana@teste.com' &&
                                password == '1234') {
                              Navigator.of(context).pushNamed('/home');
                            } else {
                              print('errado');
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
