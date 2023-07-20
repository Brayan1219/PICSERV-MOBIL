import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:picserv_mobil/paginaini.dart';

import '../welcome.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  //Forma para llamar al metodo
  void initState(){
    Future.delayed(Duration(seconds: 6), (){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => bienbenida())
      );
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Lottie.asset('img/splash.json'),
      ),
    );
  }
}