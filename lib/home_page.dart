import 'package:flutter/material.dart';
import 'package:trashmap/app_theme.dart';
import 'package:trashmap/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 255, 89, 0),
        centerTitle: true,
        title: Text('TRASHMAP'),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.black),
                    Text('Perfil'),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.black),
                    Text('Calendario'),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.settings, color: Colors.black),
                    Text('Configurações'),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 0,
                child: Row(children: [
                  Icon(Icons.logout, color: Colors.black),
                  const SizedBox(width: 8),
                  Text('Desconectar-se'),
                ]),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('Bem-vindo à página inicial!'),
      ),
    );
  }
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage()),
        (route) => false,
      );
      break;
    case 1:
      AppTheme();
      break;
  }
}
