import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                    onPressed: () => {
                          if (email == '@')
                            {Navigator.of(context).pushNamed('/home')}
                          else
                            {
                              print('senha invalida'),
                            }
                        },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          )),
    );
  }
}
