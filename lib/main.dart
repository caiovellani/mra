import 'package:flutter/material.dart';
import 'package:mra/views/login_page.dart';

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
