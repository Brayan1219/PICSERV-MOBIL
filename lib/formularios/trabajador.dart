import 'package:flutter/material.dart';
import 'package:picserv_mobil/trabajador/navbar2.dart';


void main() {
  runApp(const fortra());
}

class fortra extends StatelessWidget {
  const fortra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: NavBar2(),
          appBar: AppBar(
            title: Text("TRABAJADOR"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/degrade.gif'),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Text('Nombre Trabaja',style: TextStyle(
                            fontSize: 24
                        ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                          width: 180,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(200, 89, 205, 218),
                                Color.fromARGB(200, 63, 210, 173),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.centerRight,
                              stops: [0.25, 0.90],
                            ),
                          ),
                          alignment: Alignment.topCenter, //to align its child
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'foto trabajador',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 180,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('img/trabajador.gif'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              )
                            ],
                          )
                      ),
                      Container(
                        width: 150,
                        height: 300,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Container(
                                width: 180,
                                height: 120,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: new LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 255, 255, 255),
                                      Color.fromARGB(200, 255, 255, 255)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.centerRight,
                                    stops: [0.25, 0.90],
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height:40,
                                      //to align its child
                                      padding: EdgeInsets.all(10),
                                      child:Text(
                                        'Picserv',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 5,right: 5),
                                      width: double.infinity,
                                      height:70,
                                      alignment: Alignment.bottomRight, //to align its child
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'una plataforma innovadora que permite a los clientes publicar servicios y a los trabajadores postularse ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                            ),
                            Container(
                                width: 180,
                                height: 120,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: new LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 255, 255, 255),
                                      Color.fromARGB(200, 255, 255, 255)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.centerRight,
                                    stops: [0.25, 0.90],
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height:50,
                                      alignment: Alignment.topLeft, //to align its child
                                      padding: EdgeInsets.all(10),
                                      child:Text(
                                        'Ganar',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 0,right: 20),
                                      width: double.infinity,
                                      height:50,
                                      alignment: Alignment.bottomRight, //to align its child
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'para lleva cabo y ganar un poco de dinero.',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      )

                    ],

                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 180,
                    child: Row(
                      children: [
                        Container(
                            width: 165,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 255, 255, 255),
                                  Color.fromARGB(200, 255, 255, 255)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.centerRight,
                                stops: [0.25, 0.90],
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:50,
                                  alignment: Alignment.topLeft, //to align its child
                                  padding: EdgeInsets.all(10),
                                  child:Text(
                                    'Consume',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  width: 70,
                                  height:70,
                                  alignment: Alignment.bottomRight, //to align its child
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/img1.gif'),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                )
                              ],
                            )
                        ),
                        Container(
                            width: 165,
                            height: 120,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 255, 255, 255),
                                  Color.fromARGB(200, 255, 255, 255)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.centerRight,
                                stops: [0.25, 0.90],
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:50,
                                  alignment: Alignment.topLeft, //to align its child
                                  padding: EdgeInsets.all(10),
                                  child:Text(
                                    'Navegar',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  width: double.infinity,
                                  height:70,
                                  alignment: Alignment.bottomRight, //to align its child
                                  padding: EdgeInsets.all(10),
                                  child:Text(
                                    'Empieza a navegar y descubre las cosas que puedes hacer con picserv',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 180,
                  child: Row(
                    children: [
                      Container(
                          width: 165,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(200, 255, 255, 255),
                                Color.fromARGB(200, 255, 255, 255)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.centerRight,
                              stops: [0.25, 0.90],
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height:50,
                                alignment: Alignment.topLeft, //to align its child
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('img/degrade.gif'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: double.infinity,
                                height:50,
                                alignment: Alignment.bottomRight, //to align its child
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('img/degrade.gif'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              )
                            ],
                          )
                      ),
                      Container(
                          width: 165,
                          height: 120,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(200, 255, 255, 255),
                                Color.fromARGB(200, 255, 255, 255)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.centerRight,
                              stops: [0.25, 0.90],
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height:50,
                                alignment: Alignment.topLeft, //to align its child
                                padding: EdgeInsets.all(10),
                                child:Text(
                                  'Trabajador',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 0),
                                width: double.infinity,
                                height:60,
                                alignment: Alignment.bottomRight, //to align its child
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Puedes ver los servicios que saldran segun su oficio, podra postularce',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              )
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor:Color.fromARGB(200, 255, 255, 255),
                  selectedItemColor: Color.fromARGB(200, 63, 210, 173),
                  unselectedItemColor: Colors.grey.withOpacity(.60),
                  selectedFontSize: 14,
                  unselectedFontSize: 14,
                  onTap: (value) {
                    // Respond to item press.
                  },
                  items: [
                    BottomNavigationBarItem(
                      label: ('Favorites'),
                      icon: Icon(Icons.favorite),
                    ),
                    BottomNavigationBarItem(
                      label: ('Music'),
                      icon: Icon(Icons.music_note),
                    ),
                    BottomNavigationBarItem(
                      label: ('Places'),
                      icon: Icon(Icons.location_on),
                    ),
                    BottomNavigationBarItem(
                      label: ('News'),
                      icon: Icon(Icons.library_books),
                    ),
                  ],
                )
              ],
            ),
          )

      ),
    );
  }
}
