import 'package:flutter/material.dart';

import '../formularios/formservi.dart';
import '../formularios/verser.dart';

class NavBar2 extends StatefulWidget {
  const NavBar2({Key? key}) : super(key: key);

  @override
  State<NavBar2> createState() => _NavBar2State();
}

class _NavBar2State extends State<NavBar2> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nombre TRabajador"),
            accountEmail: Text("correocli@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://cdn.pixabay.com/animation/2022/12/01/17/03/17-03-11-60_512.gif', width: double.infinity,fit: BoxFit.cover,),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                    image: NetworkImage("https://media1.giphy.com/media/2tNvsKkc0qFdNhJmKk/giphy.gif"),fit: BoxFit.cover)
            ),
          ),
          ListTile(
            leading: Icon(Icons.note_alt_rounded),
            title: Text('Consultar Servicio'),
            onTap: ()=> print('cargar Realizada'),
          ),
          ListTile(
            leading: Icon(Icons.security_update_good_rounded),
            title: Text('Consultar Contratacion'),
            onTap: ()=> print('Perfil Consulado'),
          ),
          ListTile(
            leading: Icon(Icons.remove_red_eye),
            title: Text('Eliminar Postulacion'),
            onTap: ()=> print('Conversacion Iniciada'),
          ),

        ],
      ),
    );
  }
}