import 'package:flutter/material.dart';

class Client extends StatefulWidget {
  const Client({super.key});

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Clients',
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
