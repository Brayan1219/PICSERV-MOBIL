import 'package:flutter/material.dart';
import 'package:picserv_mobil/paginaini.dart';

class bienbenida extends StatefulWidget {
  const bienbenida({Key? key}) : super(key: key);

  @override
  State<bienbenida> createState() => _bienbenidaState();
}

class _bienbenidaState extends State<bienbenida> {
  List imagenes = [
    "fondo2.gif",
    "fondo3.gif",
    "fondo4.gif"
  ];

  List texto =[
    "PICSERV",
    "ALCANCE",
    "OBJETIVO"
  ];

  List subtex =[
    "Justificacion",
    "Sabana occidental",
    "General"
  ];

  List descrip =[
    "Facilita la conexión y contratación de servicios entre clientes y trabajadores, mejorando la experiencia de búsqueda y ofreciendo resultados satisfactorios para ambas partes.",
    "La plataforma busca mejorar la eficiencia, confiabilidad y transparencia en el proceso de búsqueda y contratación de servicios, brindando una experiencia satisfactoria para todos los usuarios involucrados...",
    "Desarrollar un software eficiente, confiable y seguro que facilite la conexión y contratación de servicios entre clientes y trabajadores, mejorando la experiencia de búsqueda y ofreciendo resultados satisfactorios."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: imagenes.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/"+imagenes[index]),
                    fit: BoxFit.cover,
                  )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 350,
                          height: 260,
                          child: Row(
                            children: [
                              SingleChildScrollView(
                                child: Container(
                                  width: 310,
                                  height: 260,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 310,
                                        height: 50,
                                        child: Text(texto[index],style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                        ),),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 310,
                                        height: 40,
                                        child: Text(subtex[index],style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 300,
                                        height: 100,
                                        child: Text(descrip[index],style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                        ),),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 200,top: 10),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(121, 101, 178, 100),
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        child: TextButton(
                                          child: Text(
                                            "Continuar",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp2()));},
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 100),
                                width: 40,
                                height: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(3, (indexDots){
                                    return Container(
                                      width: 8,
                                      height: index==indexDots?25:8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color.fromRGBO(121, 101, 178, 100),
                                      ),
                                    );
                                  }),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
