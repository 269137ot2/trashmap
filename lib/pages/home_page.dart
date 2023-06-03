import 'package:flutter/material.dart';
import 'package:trashmap/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 89, 0),
        centerTitle: true,
        title: const Text('TRASHMAP'),
      ),
       drawer: Drawer(
        child: DrawerList(),
      ),
      body: const Center(
        child: Text('Bem-vindo à página inicial!'),
      ),
    );
  }
}
