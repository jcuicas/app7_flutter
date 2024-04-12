import 'package:flutter/material.dart';
import 'package:app7/screens/clients.dart';
import 'package:app7/screens/users.dart';

class HomeScreen extends StatefulWidget {
  final String titulo;

  const HomeScreen({
    super.key,
    required this.titulo,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pantallaActual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: _pantallaActual == 0 ? Client() : User(),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pantallaActual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Clients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Users',
          ),
        ],
        onTap: (index) {
          _pantallaActual = index;
          setState(() {});
        },
      ),
    );
  }
}
