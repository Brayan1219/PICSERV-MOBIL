import 'package:flutter/material.dart';
import 'package:picserv_mobil/splash/splash.dart';

void main() {
  runApp(const vista_uno());
}

class vista_uno extends StatelessWidget {
  const vista_uno({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: Splash(),
    );
  }
}

