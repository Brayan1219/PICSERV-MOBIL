import 'package:flutter/material.dart';
import 'package:picserv_mobil/formularios/inicio.dart';

import 'formularios/registro.dart';


void main2() {
  runApp( MyApp2());
}

class MyApp2 extends StatelessWidget {

  MaterialColor mycolor = MaterialColor(Color.fromRGBO(149, 149, 210, 1).value, <int, Color>{
    50: Color.fromRGBO(149, 149, 210, 0.1),
    100: Color.fromRGBO(149, 149, 210, 0.2),
    200: Color.fromRGBO(149, 149, 210, 0.3),
    300: Color.fromRGBO(149, 149, 210, 0.4),
    400: Color.fromRGBO(149, 149, 210, 0.5),
    500: Color.fromRGBO(149, 149, 210, 0.6),
    600: Color.fromRGBO(149, 149, 210, 0.7),
    700: Color.fromRGBO(149, 149, 210, 0.8),
    800: Color.fromRGBO(149, 149, 210, 0.9),
    900: Color.fromRGBO(149, 149, 210, 1),
  },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: ejeapp(),
    );
  }
}

class ejeapp extends StatefulWidget {
  const ejeapp({Key? key}) : super(key: key);

  @override
  State<ejeapp> createState() => _ejeappState();
}

class _ejeappState extends State<ejeapp> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 851,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/fondo.gif'),
                    fit: BoxFit.cover,
                  )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 500,
                      height: 230,
                      margin: EdgeInsets.only(left: 0,top: 235),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('img/gifini.gif'),
                          )
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 50, left: 60, right: 60),
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(150)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              //color: Color.fromRGBO(134, 115, 161, 150),
                            ),
                            child: botton1(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20,left: 60, right: 60),
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(150)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              //color: Color.fromRGBO(134, 115, 161, 100),
                            ),
                            child: botton2(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 5),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 25),
                              child: Center(
                                child: Text('Dont have an account?',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Text('Register Account',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(62, 95, 138, 100),
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
      );
  }

  Container botton1(){
    return Container(
      width: double.infinity,
      height: 50,

      //color: Colors.cyanAccent,

      child: ElevatedButton.icon(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>forinicio()));
      },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Color.fromRGBO(121, 101, 178, 100); //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
        ),
        icon: Icon(
          Icons.arrow_circle_right,
          color: Colors.white54,
          size: 30,
        ),
        label: Text(
          'INICIAR SESION',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }

  Container botton2(){
    return Container(
      width: double.infinity,
      height: 50,


      //color: Colors.cyanAccent,

      child: ElevatedButton.icon(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>foregistro()));
      },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Color.fromRGBO(121, 101, 178, 100); //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
        ),
        icon: Icon(
          Icons.arrow_circle_right,
          color: Colors.white54,
          size: 30,
        ),
        label: Text(
          'REGISTRARME',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}