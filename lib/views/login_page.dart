import 'package:flutter/material.dart';
import 'package:mra/components/checkboox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              alignment: Alignment.topCenter,
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Usuário',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const CheckBoxLogin(),
                const Text(
                  'Manter Conectado',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.green[900]),
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(fontSize: 15),
                      )),
                )
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                fixedSize: const Size(160, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
