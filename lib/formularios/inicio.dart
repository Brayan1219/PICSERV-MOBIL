import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:picserv_mobil/formularios/trabajador.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../paginaini.dart';
import 'cliente.dart';

void inicio() {
  runApp(forinicio());
}

class forinicio extends StatelessWidget {


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
  final usu=TextEditingController();
  final con1=TextEditingController();
  final con2=TextEditingController();

  final List<String> images = [
    "https://i.pinimg.com/originals/75/95/2d/75952ddbecd4743baf83236395b20541.gif",
    "https://www.careerguide.com/career/wp-content/uploads/2021/07/28_34_gif.gif",
    "https://www.careerguide.com/career/wp-content/uploads/2020/03/169c11293f5c08a325ee1bbc8a0d4cb8.gif"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BackdropScaffold(
            appBar: BackdropAppBar(
              title: Center(child: const Text("Menu Picserv")),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/degrade.gif'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              actions: const <Widget>[
                BackdropToggleButton(
                  icon: AnimatedIcons.close_menu,
                )
              ],
            ),
            backLayer: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      margin: EdgeInsets.only(top: 20),
                      //color: Colors.teal,
                      child: _swiper(),
                    ),
                    Container(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              height: 150,
                              margin: EdgeInsets.only(top: 20,left: 16),
                              child: _crearCard2(),
                            ),
                            Container(
                              width: 170,
                              height: 150,
                              margin: EdgeInsets.only(top: 17,left: 16),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('img/img1.gif'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 351,
                      height: 120,
                      //color: Colors.purple,
                      margin: EdgeInsets.only(top: 20,left: 0),
                      child: _crearCard1(),
                    ),
                    Container(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              height: 150,
                              margin: EdgeInsets.only(top: 20,left: 16),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('img/img2.gif'),
                                      fit: BoxFit.cover
                                  )
                              ),

                            ),
                            Container(
                              width: 170,
                              height: 150,
                              //color: Colors.purple,
                              margin: EdgeInsets.only(top: 20,left: 16),
                              child: _crearCard3(),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
            ),
            subHeader:  BackdropSubHeader(
              title: Text("INICIAR SESION"),
            ),
            frontLayer: SingleChildScrollView(
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
                      width: 350,
                      height: 270,
                      margin: EdgeInsets.only(top: 30,left: 0,right: 0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('img/forini.gif'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(

                      width: double.infinity,
                      height: 400,
                      margin: EdgeInsets.only(top: 0,left: 45,right: 45),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 0),
                                child: Text('PICSERV',
                                  style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20,left: 30,right: 30),
                                decoration: BoxDecoration(
                                  //gradient: LinearGradient(
                                  // colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                  //   stops: [0.3,0.9]
                                  // )
                                ),
                                child: usuario(),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20,left: 30,right: 30),
                                decoration: BoxDecoration(
                                  //gradient: LinearGradient(
                                  //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
                                  //stops: [0.3,0.9]
                                  //),

                                ),
                                child: contra(),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20,left: 30,right: 30),
                                decoration: BoxDecoration(
                                  //gradient: LinearGradient(
                                  //  colors: [Colors.white,Color.fromRGBO(150, 137, 166, 200)],
//                                      stops: [0.3,0.9]
                                  //                                ),

                                ),
                                child: contra2(),
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
                                        margin: EdgeInsets.only(top: 16,),
                                        child: botton(),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 16,),
                                        child: botton2(),
                                      )
                                    ],
                                  )

                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }

  Container usuario(){
    return Container(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),

            ),
            prefixIcon: Icon(Icons.perm_contact_cal,color: Color.fromRGBO(121, 101, 178, 100),size: 35),
            hintText: 'Ingrese Usuario',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'USUARIO',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        controller: usu,
      ),
    );
  }


  Container contra(){
    bool passwordobs = true;
    return Container(
      height: 50,
      child: TextFormField(

        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),

          ),
          //prefixIcon: Icon(Icons.password_sharp,color: Color.fromRGBO(150, 137, 166, 50),size: 35),
          hintText: 'Ingrese Contraseña',
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          labelText: 'CONTRASEÑA',
          suffixIcon: IconButton(
              onPressed: (){
                setState(() {
                  passwordobs = !passwordobs;
                });
              },
              icon: Icon(
                passwordobs
                    ? Icons.visibility_off
                    : Icons.visibility,
              )),
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),

          //errorText: 'contraseña minimo 8 caracteres',
        ),
        obscureText: true,
        controller: con1,
      ),
    );
  }

  Container contra2(){
    bool passwordobs = true;
    return Container(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            // prefixIcon: Icon(Icons.password_sharp,color: Color.fromRGBO(150, 137, 166, 50),size: 35),
            hintText: 'Ingrese Contraseña',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
            labelText: 'CONTRASEÑA',
            suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    passwordobs = !passwordobs;
                  });
                },
                icon: Icon(
                  passwordobs
                      ? Icons.visibility_off
                      : Icons.visibility,
                )),
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
        ),
        obscureText: true,
        controller: con2,
      ),
    );
  }

  Container botton(){
    return Container(
      width: 130,
      height: 40,
      margin: EdgeInsets.only(left: 15,right: 20,top: 10),

      child: ElevatedButton.icon(onPressed: (){
        String usuar=usu.text;
        String pas1=con1.text;
        String pas2=con2.text;

        if(usuar !='' && pas1 == pas2){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>fortra(),
          )
          );
          Fluttertoast.showToast(msg: 'REGISTRO EXITOSO',
              toastLength: Toast.LENGTH_LONG,
              textColor: Colors.green,
              gravity: ToastGravity.CENTER
          );
        }
        if(usuar !='' && pas1 != pas2){
          Fluttertoast.showToast(msg: 'CONTRASEÑAS NO COINCIDEN',
              toastLength: Toast.LENGTH_LONG,
              textColor: Colors.red,
              gravity: ToastGravity.CENTER
          );
        }
      },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(140, 127, 170, 50)
        ),
        icon: Icon(
          Icons.how_to_reg_rounded,
          color: Colors.white54,
          size: 19,
        ),
        label: Text(
          'TRABAJADOR',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container botton2(){
    return Container(
      width: 120,
      height: 40,
      margin: EdgeInsets.only(left: 0,right: 0,top: 10),

      child: ElevatedButton.icon(onPressed: (){
        String usuar=usu.text;
        String pas1=con1.text;
        String pas2=con2.text;

        if(usuar !='' && pas1 == pas2){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>forcli(),
          )
          );
          Fluttertoast.showToast(msg: 'BIENVENIDO',
              toastLength: Toast.LENGTH_LONG,
              textColor: Colors.green,
              gravity: ToastGravity.CENTER
          );
        }
        if(usuar !='' && pas1 != pas2){
          Fluttertoast.showToast(msg: 'CONTRASEÑAS NO COINCIDEN',
              toastLength: Toast.LENGTH_LONG,
              textColor: Colors.red,
              gravity: ToastGravity.CENTER
          );
        }
      },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(140, 127, 170, 50)
        ),
        icon: Icon(
          Icons.how_to_reg_rounded,
          color: Colors.white54,
          size: 20,
        ),
        label: Text(
          'CLIENTE',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }


  Widget _swiper(){
    return Container(
      color: Colors.transparent,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context,int index){
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }

}

Widget _crearCard2() {

  return Card(
    elevation: 5,
    color: Color.fromRGBO(149, 149, 210, 50),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

    child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[

          Row(

            children: [

              Container(
                  margin: EdgeInsets.only(right: 10, left: 4),
                  child: Row(
                      children: const <Widget>[
                        Icon(
                          Icons.person_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        )
                      ]
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 6,top: 5),
                child: Text('CLIENTES', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),


              )
            ],
          ),
          SizedBox(height: 15,),
          Text('Tu como cliente podras publicar servicios para escojer a la mejor persona ideal para ese oficio requerido',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    ),

  );
}

Widget _crearCard1() {

  return Card(
    elevation: 5,
    margin: EdgeInsets.all(0),
    child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[

          Text('PICSERV', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 20,),
          Text('Desarrollo un software eficiente, confiable y seguro que facilite la conexión y contratación de servicios entre clientes y trabajadores.')


        ],
      ),
    ),

  );
}

Widget _crearCard3() {

  return Card(
    elevation: 5,
    color: Color.fromRGBO(149, 149, 210, 50),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

    child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[

          Row(

            children: [

              Container(
                  margin: EdgeInsets.only(right: 5, left: 2),
                  child: Row(
                      children: const <Widget>[
                        Icon(
                          Icons.person_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        )
                      ]
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 0,top: 5),
                child: Text('TRABAJADORES', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),


              )
            ],
          ),
          SizedBox(height: 15,),
          Text('Tu como cliente podras publicar servicios para escojer a la mejor persona ideal para ese oficio requerido',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    ),

  );
}