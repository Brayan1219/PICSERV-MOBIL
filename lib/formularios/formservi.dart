import 'package:flutter/material.dart';
import '../cliente/navbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:picserv_mobil/formularios/verser.dart';

void main() {
  runApp( forser());
}

class forser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: formuser()
    );
  }
}

class formuser extends StatefulWidget {
  const formuser({Key? key}) : super(key: key);

  @override
  State<formuser> createState() => _formuserState();
}

class _formuserState extends State<formuser> {
  List<dynamic> datos = [];
  dynamic selectedOption;

  final GlobalKey<FormState> _formulario = GlobalKey<FormState>();
  final TextEditingController _id_servicioController = TextEditingController();
  final TextEditingController _id_clienteController = TextEditingController();
  final TextEditingController _id_categoriaController = TextEditingController();
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _fecha_publicacionController = TextEditingController();
  final TextEditingController _fecha_finController = TextEditingController();
  final TextEditingController _pagoController = TextEditingController();

  void enviarFormulario() async {
    if (_formulario.currentState!.validate()) {
      final String apiUrl = 'http://192.168.129.103/insertarSer/';
      final Map<String, dynamic> requestBody = {
        'id_servicio': _id_servicioController.text,
        'id_cliente': _id_clienteController.text,
        'id_categoria': _id_categoriaController.text,
        'titulo': _tituloController.text,
        'descripcion': _descripcionController.text,
        'direccion': _direccionController.text,
        'fecha_publicacion': _fecha_publicacionController.text,
        'fecha_fin': _fecha_finController.text,
        'pago': _pagoController.text,
      };

      final respuesta = await http.post(
        Uri.parse(apiUrl),
        headers: {'content-type': 'application/json'},
        body: json.encode(requestBody),
      );

      if (respuesta.statusCode == 200) {
        print("Los datos se enviaron correctamente");
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Consultarip()));
      } else {
        print("Error al enviar los datos");
      }
    }
  }

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
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("SERVICIO"),
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
        child: Container(
          width: double.infinity,
          height: 800,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/fondi.jpeg'),
                  fit: BoxFit.cover
              )
          ),
          child: Container(
            width: double.infinity,
            height: 500,
            margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Form(
              key: _formulario,
              child: Column(
                children: [
                  Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('img/servi.gif'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    //color: Colors.purple,
                    margin: EdgeInsets.only(top: 0),
                    child: Text('REGISTRO SERVICIO',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                    decoration: BoxDecoration(
                    ),
                    child: documento(),
                  ),

                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 130,
                                height: 40,
                                margin: EdgeInsets.only(
                                    top: 10, left: 30, right: 0),
                                decoration: BoxDecoration(
                                ),
                                child: idservicio(),
                              ),
                              Container(
                                width: 130,
                                height: 40,
                                margin: EdgeInsets.only(
                                    top: 10, left: 12, right: 0),
                                decoration: BoxDecoration(
                                ),
                                child: Titulo(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                    decoration: BoxDecoration(
                    ),
                    child: idoficio(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                    decoration: BoxDecoration(
                    ),
                    child: descripcion(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                    decoration: BoxDecoration(
                    ),
                    child: direccion(),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 274,
                                height: 40,
                                margin: EdgeInsets.only(
                                    top: 10, left: 30, right: 0),
                                decoration: BoxDecoration(
                                ),
                                child: fechafin(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30, right: 30),
                    decoration: BoxDecoration(
                    ),
                    child: pago(),
                  ),
                  Container(
                      child:Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20,left: 70),
                            child: ElevatedButton(onPressed: enviarFormulario, child: Text('REGISTAR'),
                            ),
                          )
                        ],
                      )

                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Container documento(){
    return Container(
      height: 40,
      child: TextFormField(
        controller: _id_clienteController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Id Cliente',
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelText: 'DOCUMENTO',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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

  Container idservicio(){
    return Container(
      height: 40,
      child: TextFormField(
        controller: _id_servicioController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Id Servicio',
            hintStyle: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            labelText: 'SERVICIO',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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

  Container Titulo(){
    return Container(
      height: 40,
      child: TextFormField(
        controller: _tituloController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Titulo',
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelText: 'TITULO',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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

  Container idoficio(){
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
          labelText: 'OFICIO',
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

  Container descripcion(){
    return Container(
      height: 40,
      child: TextFormField(
        controller: _descripcionController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Escriba Descripcion',
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelText: 'DESCRIPCION',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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

  Container direccion(){
    return Container(
      height: 40,
      child: TextFormField(
        controller: _direccionController,
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Escriba Direccion',
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelText: 'DIRECCION',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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



  Container fechafin(){
    return Container(
      height: 40,
      child: TextFormField(
        controller: _fecha_finController,
        keyboardType: TextInputType.datetime,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Escriba Fecha',
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelText: 'FECHA FIN',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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

  Container pago(){
    return Container(
      height: 40,
      child: TextFormField(
        controller: _pagoController,
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.numbers,color: Color.fromRGBO(121, 101, 178, 100),size: 25),
            hintText: 'Escriba Pago',
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelText: 'PAGO',
            labelStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )
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