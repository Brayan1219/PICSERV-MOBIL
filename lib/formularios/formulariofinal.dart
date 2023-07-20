import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:picserv_mobil/formularios/trabajador.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../paginaini.dart';
import 'cliente.dart';
import 'formulariofinal.dart';
import 'inicio.dart';

void registro() {
  runApp(regisfin());
}

class regisfin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ejeapp(),
    );
  }
}

class ejeapp extends StatefulWidget {
  @override
  State<ejeapp> createState() => _ejeappState();
}

class _ejeappState extends State<ejeapp> {
  List<dynamic> datos = [];
  dynamic selectedOption;

  final GlobalKey<FormState> _formulariocli = GlobalKey<FormState>();
  final TextEditingController _id_ClienteController = TextEditingController();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _sexoController = TextEditingController();

  final GlobalKey<FormState> _formulariotra = GlobalKey<FormState>();
  final TextEditingController _id_trabajadorController = TextEditingController();
  final TextEditingController _id_categoriaController = TextEditingController();
  final TextEditingController _nombresController = TextEditingController();
  final TextEditingController _apellidosController = TextEditingController();
  final TextEditingController _telefonosController = TextEditingController();
  final TextEditingController _edadesController = TextEditingController();
  final TextEditingController _sexosController = TextEditingController();


  void enviarFormulariocli() async {
    if (_formulariocli.currentState!.validate()) {
      final String apiUrl = 'http://192.168.129.103/insertarCli/';
      final Map<String, dynamic> requestBody = {
        'id_Cliente': _id_ClienteController.text,
        'nombre': _nombreController.text,
        'apellido': _apellidoController.text,
        'telefono': _telefonoController.text,
        'edad': _edadController.text,
        'sexo': _sexoController.text,
      };

      final respuesta = await http.post(
        Uri.parse(apiUrl),
        headers: {'content-type': 'application/json'},
        body: json.encode(requestBody),
      );

      if (respuesta.statusCode == 200) {
        print("Los datos se enviaron correctamente");
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => forinicio()));
      } else {
        print("Error al enviar los datos");
      }
    }
  }

  void enviarFormulariotra() async {
    if (_formulariotra.currentState!.validate()) {
      final String apiUrl = 'http://192.168.129.103/insertarTra/';
      final Map<String, dynamic> requestBody = {
        'id_trabajador': _id_trabajadorController.text,
        'id_categoria': _id_categoriaController.text,
        'nombre': _nombresController.text,
        'apellido': _apellidosController.text,
        'telefono': _telefonosController.text,
        'edad': _edadesController.text,
        'sexo': _sexosController.text,
      };

      final respuesta = await http.post(
        Uri.parse(apiUrl),
        headers: {'content-type': 'application/json'},
        body: json.encode(requestBody),
      );

      if (respuesta.statusCode == 200) {
        print("Los datos se enviaron correctamente");
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => forinicio()));

      } else {
        print("Error al enviar los datos");
      }
    }
  }

  final tabs = [
    'CLIENTE',
    'TRABAJADOR',
  ];

  @override
  void initState() {
    super.initState();
    consultarDatosOficio();
  }

  Future<void> consultarDatosOficio() async {
    final url = Uri.parse('http://192.168.129.103/ListarOficio');
    final respuesta = await http.get(url);
    if (respuesta.statusCode == 200) {
      print("Status 200");
      final jsonrespuesta = json.decode(respuesta.body);
      setState(() {
        datos = jsonrespuesta;
        selectedOption = datos.isNotEmpty ? datos[0] : null;
        print(datos);
      });
    } else {
      print("Error no se conectó");
      print(respuesta.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'REGISTRO',
      // Crea un widget por defecto de pestañas, para permitir navegar entre las distintas pestañas
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          // Barra de la aplicación
          appBar: AppBar(
            title: Center(child: Text('REGISTRO ROLES')),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/degrade.gif'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            // Oculta el botón de retroceso
            automaticallyImplyLeading: false,
            // Cambia el color de la barra
            backgroundColor: Color(0xff5808e5),
            // Crea la barra de pestañas
            bottom: TabBar(
              // Color del indicador de la pestaña seleccionada
              indicatorColor: Colors.white,
              // Permite que las pestañas se desplacen horizontalmente
              isScrollable: true,
              // Crea las pestañas con el texto correspondiente
              tabs: [
                for (final tab in tabs) Tab(text: tab),
              ],
            ),
          ),
          // Cuerpo de la app
          body: TabBarView(
            children: [
              // Crea un widget diferente para cada pestaña
              for (final tab in tabs)
                Center(
                  // Si la pestaña es 'Tab 8', muestra una imagen de la web
                  child: (tab == 'CLIENTE')
                      ? SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      height: 720,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('img/fondoini.gif'),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 160,
                            height: 160,
                            margin: EdgeInsets.only(top: 30,left: 0,right: 0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('img/cliente.gif'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 500,
                            margin: EdgeInsets.only(top: 0,left: 45,right: 45),
                            child: Column(
                              children: [
                                Form(
                                  key: _formulariocli,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 0),
                                        child: Text('CLIENTE',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          // colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                          //   stops: [0.3,0.9]
                                          // )
                                        ),
                                        child: documento(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                          //stops: [0.3,0.9]
                                          //),

                                        ),
                                        child: nombre(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                          //                                ),

                                        ),
                                        child: apellido(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                          //                                ),

                                        ),
                                        child: telefono(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                          //                                ),

                                        ),
                                        child: edad(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                          //                                ),

                                        ),
                                        child: sexo(),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              margin:EdgeInsets.only(top: 20,left: 65),
                                              child: Text('ALREADY HAS ',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.purpleAccent,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                            Container(
                                                margin:EdgeInsets.only(top: 20,left: 8),
                                                child: Text(' AN ACCOUNT?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.indigo,
                                                      fontWeight: FontWeight.w700),
                                                )
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Color.fromRGBO(189, 236, 182, 100),
                                        width: double.infinity,
                                        height: 2,
                                        margin: EdgeInsets.only(top: 10),
                                      ),
                                      Container(
                                          child:Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 0,left: 70),
                                                child: ElevatedButton(onPressed: enviarFormulariocli, child: Text('REGISTAR'),
                                                ),
                                              )
                                            ],
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                  // Si la pestaña es 'Tab 9', muestra un texto y una lista
                      : (tab == 'TRABAJADOR')
                      ? SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      height: 720,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('img/fondoini.gif'),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Form(
                        key: _formulariotra,
                        child: Column(
                          children: [
                            Container(
                              width: 230,
                              height: 160,
                              margin: EdgeInsets.only(top: 20,left: 0,right: 0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('img/trabajador.gif'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 500,
                              margin: EdgeInsets.only(top: 0,left: 45,right: 45),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 6),
                                        child: Text('TRABAJADOR',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          // colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                          //   stops: [0.3,0.9]
                                          // )
                                        ),
                                        child: documentotra(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                          //stops: [0.3,0.9]
                                          //),

                                        ),
                                        child: nombretra(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                          //                                ),

                                        ),
                                        child: apellidotra(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                          //                                ),

                                        ),
                                        child: telefonotra(),
                                      ),
                                      Container(
                                       // color: Colors.green,
                                        width: double.infinity,
                                        height: 60,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    //color: Colors.blue,
                                                    width: 110,
                                                    height: 50,
                                                    margin: EdgeInsets.only(left: 30, top: 10),
                                                    child: edadtra(),
                                                  ),
                                                  Container(
                                                    //color: Colors.purple,
                                                    width: 123,
                                                    height: 50,
                                                    margin: EdgeInsets.only(left: 10, top: 10),
                                                    child: sexotra(),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 15,left: 30,right: 30),
                                        decoration: BoxDecoration(
                                          //gradient: LinearGradient(
                                          //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                          //                                ),

                                        ),
                                        child: oficiotra(),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              margin:EdgeInsets.only(top: 20,left: 65),
                                              child: Text('ALREADY HAS ',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.purpleAccent,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                            Container(
                                                margin:EdgeInsets.only(top: 20,left: 8),
                                                child: Text(' AN ACCOUNT?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.indigo,
                                                      fontWeight: FontWeight.w700),
                                                )
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Color.fromRGBO(189, 236, 182, 100),
                                        width: double.infinity,
                                        height: 2,
                                        margin: EdgeInsets.only(top: 10),
                                      ),
                                      Container(
                                          child:Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 0,left: 70),
                                                child: ElevatedButton(onPressed: enviarFormulariotra, child: Text('REGISTAR'),
                                              ),
                                              )
                                            ],
                                          )

                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  // Para las demás pestañas, muestra solo el texto correspondiente
                      : Text(tab),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Container documento() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _id_ClienteController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(
                Icons.numbers, color: Color.fromRGBO(121, 101, 178, 100),
                size: 35),
            hintText: 'Ingrese Id',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'DOCUMENTO',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }


  Container nombre() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _nombreController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),

          ),
          prefixIcon: Icon(Icons.perm_identity_outlined,
              color: Color.fromRGBO(121, 101, 178, 100), size: 35),
          hintText: 'Ingrese Nombre',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'Nombre',
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),

          //errorText: 'contraseña minimo 8 caracteres',
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container apellido() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _apellidoController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.perm_identity_outlined,
                color: Color.fromRGBO(121, 101, 178, 100), size: 35),
            hintText: 'Ingrese Apellido',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'APELLIDO',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container telefono() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _telefonoController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.phone,
                color: Color.fromRGBO(121, 101, 178, 100), size: 35),
            hintText: 'Numero Celular',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'TELEFONO',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container edad() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _edadController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.elderly,
                color: Color.fromRGBO(121, 101, 178, 100), size: 35),
            hintText: 'Ingrese Edad',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'EDAD',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container sexo() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _sexoController,
        keyboardType: TextInputType.text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.transgender,
                color: Color.fromRGBO(121, 101, 178, 100), size: 35),
            hintText: 'Ingrese Sexo',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'Sexo',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );

  }

  // trabajadorformularioooo

  Container documentotra() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _id_trabajadorController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(
                Icons.numbers, color: Color.fromRGBO(121, 101, 178, 100),
                size: 35),
            hintText: 'Ingrese Id',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'DOCUMENTO',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }


  Container nombretra() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _nombresController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),

          ),
          prefixIcon: Icon(Icons.perm_identity_outlined,
              color: Color.fromRGBO(121, 101, 178, 100), size: 35),
          hintText: 'Ingrese Nombre',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'Nombre',
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),

          //errorText: 'contraseña minimo 8 caracteres',
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container apellidotra() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _apellidosController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.perm_identity_outlined,
                color: Color.fromRGBO(121, 101, 178, 100), size: 35),
            hintText: 'Ingrese Apellido',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'APELLIDO',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container telefonotra() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _telefonosController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.phone,
                color: Color.fromRGBO(121, 101, 178, 100), size: 35),
            hintText: 'Numero Celular',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'TELEFONO',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container edadtra() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _edadesController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.elderly,
                color: Color.fromRGBO(121, 101, 178, 100), size: 25),
            hintText: 'Edad',
            hintStyle: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
            labelText: 'EDAD',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
        ),
        validator: (value){
          if(value!.isEmpty){
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container sexotra() {
    return Container(
      height: 45,
      child: TextFormField(
        controller: _sexosController,
        keyboardType: TextInputType.text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(Icons.transgender,
                color: Color.fromRGBO(121, 101, 178, 100), size: 25),
            hintText: 'Sexo',
            hintStyle: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
            labelText: 'Sexo',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor ingrese información';
          }
          return null;
        },
      ),
    );
  }

  Container oficiotra() {
    return Container(
      child: DropdownButtonFormField(
        value: selectedOption != null ? selectedOption['nom_categoria'] : null,
        items: datos.map<DropdownMenuItem<dynamic>>((dynamic value) {
          return DropdownMenuItem<dynamic>(
            value: value['nom_categoria'],
            child: Text(value['nom_categoria']),
          );
        }).toList(),
        onChanged: (dynamic newValue) {
          setState(() {
            selectedOption = datos.firstWhere((element) => element['nom_categoria'] == newValue);
            _id_categoriaController.text = selectedOption['id_categoria'].toString(); // Actualizar el ID en el controlador
          });
        },
        decoration: InputDecoration(
          labelText: 'OFICIO', // Ajusta la etiqueta del campo
        ),
        validator: (value) {
          if (value == null) {
            return 'Seleccione una categoría';
          }
          return null;
        },
      ),
    );
  }

}