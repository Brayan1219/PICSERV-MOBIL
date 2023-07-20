import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../cliente/navbar.dart';

void main() {
  runApp(const Consultarip());
}

class Consultarip extends StatefulWidget {
  const Consultarip({Key? key}) : super(key: key);

  @override
  State<Consultarip> createState() => _ConsultaripState();
}

class _ConsultaripState extends State<Consultarip> {
  List<dynamic> datos =[];

  Future<void> consultardatosservicios()async{
    final url=Uri.parse('http://192.168.129.103/ListarServicio');
    final respuesta=await http.get(url);
    if(respuesta.statusCode==200){
      print("Status 200");
      final jsonrespuesta=json.decode(respuesta.body);
      setState(() {
        datos=jsonrespuesta;
        print(datos);
      });
    }
    else{
      print("Error no se coneccto");
      print(respuesta.statusCode);
    }

  }

  @override

  void initState(){
    consultardatosservicios();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Center(child: Text("VER SERVICIOS")),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/degrade.gif'),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: datos.length,
            itemBuilder: (context,index){
              final item=datos[index];
              return ListTile(
                title:Container(
                  child: Column(
                    children: [
                      Container(),
                      Container(
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('img/fondi.jpeg'),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,

                                ),
                            child: Center(child: Text(item["id_servicio"]))
                            ),
                            Container(
                                width: 280,
                                height: 100,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,

                                ),
                                child: SingleChildScrollView(
                                  child: Container(
                              //color: Colors.green,
                              margin: EdgeInsets.only(left: 20,top: 7),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item["titulo"],style: TextStyle(fontSize: 12),),
                                    Text(item["descripcion"],style: TextStyle(fontSize: 12),),
                                    Text(item["direccion"],style: TextStyle(fontSize: 12),),
                                    Text(item["fecha_publicacion"],style: TextStyle(fontSize: 12),),
                                    Text(item["fecha_fin"],style: TextStyle(fontSize: 12),),
                                    Text(item["pago"],style: TextStyle(fontSize: 12),),
                                  ],
                              ),
                            ),
                                ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                ),

              );
            }
        ),
      ),
    );
  }
}
