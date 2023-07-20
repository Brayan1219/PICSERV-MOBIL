import 'package:flutter/material.dart';
import 'package:picserv_mobil/formularios/formservi.dart';
import 'package:picserv_mobil/formularios/verser.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nombre Cliente"),
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
            title: Text('Agregar Servicio'),
            onTap: () {Navigator.push(context, MaterialPageRoute(
              builder: (context) => forser(),
            )
            );
              },
          ),
          ListTile(
            leading: Icon(Icons.security_update_good_rounded),
            title: Text('Actualizar Servicio'),
            onTap: ()=> print('Perfil Consulado'),
          ),
          ListTile(
            leading: Icon(Icons.remove_red_eye),
            title: Text('Ver Servicios'),
            onTap: () {Navigator.push(context, MaterialPageRoute(
              builder: (context) => Consultarip(),
            )
            );
            },
          ),
          ListTile(
            leading: Icon(Icons.speaker_notes_off_outlined),
            title: Text('Eliminar Servicio'),
            onTap: ()=> print('Estadisticas Consultadas'),
          ),
          ListTile(
            leading: Icon(Icons.search_off_outlined),
            title: Text('Consultar Postulados'),
            onTap: ()=> print('Se ha compartido un archivo'),
          ),
          ListTile(
            leading: Icon(Icons.search_off),
            title: Text('Consultar Contratacion'),
            onTap: ()=> print('Se ha compartido un archivo'),
          ),
        ],
      ),
    );
  }
}