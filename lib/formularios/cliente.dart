import 'package:flutter/material.dart';
import '../cliente/navbar.dart';

void main() {
  runApp(const forcli());
}

class forcli extends StatelessWidget {
  const forcli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: Text("CLIENTE"),
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
                        child: Text('Nombre Cliente',style: TextStyle(
                            fontSize: 27
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
                                  'foto cliente',
                                  style: TextStyle(
                                    fontSize: 25,
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
                                      image: AssetImage('img/imagen1.gif'),
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
                    height: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue
                    ),
                    child:
                        Container(
                          color: Colors.purple,
                          width: 100,
                          height: 50,
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                width: 300,
                                color: Colors.red,
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 150,
                                      color: Colors.green,
                                      child: Text(" YOSEMITE",style: TextStyle(
                                        fontSize: 20,
                                      ),),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 70,
                                      color: Colors.blue,
                                      margin: EdgeInsets.only(left: 80),
                                      child: Text("     250",style: TextStyle(
                                        fontSize: 20
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 300,
                                color: Colors.blue,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 20,
                                      color: Colors.red,
                                      ),
                                    Container(
                                      height: 30,
                                      width: 200,
                                      color: Colors.green,
                                      child: Text(" USA , California ",style: TextStyle(
                                        fontSize: 17
                                      ),),
                                    )
                                  ],
                                )
                              ),
                              Container(
                                height: 30,
                                width: 300,
                                color: Colors.yellow,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text(" ✰ ✰ ✰ ✰ ✰ ",style: TextStyle(
                                  fontSize: 20
                                ),),
                              ),
                              Container(
                                height: 30,
                                width: 300,
                                color: Colors.blue,
                                child: Text(" PEOPLE" ,style: TextStyle(
                                  fontSize: 20
                                ),),

                              ),
                              Container(
                                height: 20,
                                width: 300,
                                color: Colors.blue,
                                child: Text("Number of people in your group"),
                              ),
                              Container(
                                height: 40,
                                width: 300,
                                color: Colors.black,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                      margin: EdgeInsets.only(left: 10 ),
                                      child: Center(
                                        child: Text("1", style: TextStyle(
                                          fontSize: 20
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                      margin: EdgeInsets.only(left: 10 ),
                                      child: Center(
                                        child: Text("2",style: TextStyle(
                                          fontSize: 20
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Center(
                                        child: Text("3",style: TextStyle(
                                          fontSize: 20
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Center(
                                        child: Text("4",style: TextStyle(
                                            fontSize: 20
                                        ),),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Center(
                                        child: Text("5",style: TextStyle(
                                            fontSize: 20
                                        ),),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 300,
                                height: 20,
                                color: Colors.blue,
                                margin: EdgeInsets.only(top: 10),
                                child: Text("DESCRIPCION",style: TextStyle(
                                  fontSize: 18
                                ),),
                              ),
                              Container(
                                width: 300,
                                height: 20,
                                color: Colors.blue,
                                margin: EdgeInsets.only(top: 5),
                                child: Text("Descripcion descripcion descripcion",style: TextStyle(
                                    fontSize: 18
                                ),),
                              ),
                              Container(
                                width: 300,
                                height: 40,
                                color: Colors.black,
                                child: Row(
                                  children: [
                                    Container(
                                      width:20
                                    )
                                  ],
                                ),
                              )

                            ],
                          ),
                        )


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
