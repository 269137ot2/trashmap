import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});



  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            arrowColor: const Color.fromARGB(255, 255, 89, 0),
            currentAccountPicture: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network('https://64.media.tumblr.com/6a5a68b858b592f3bc84d2e7f4be90bb/8a8beb1bdd1ae19a-48/s1280x1920/38303321aed4091d34600f8d9147378d46b29d35.jpg'),
            ),
            accountName: const Text('Wellington'), 
            accountEmail: const Text('wellingtonhdds60@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            onTap: (){
            },
          ),
           ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Desconectar'),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
    );
  }
}