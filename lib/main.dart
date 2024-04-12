import 'package:flutter/material.dart';
import 'package:app7/screens/home.dart';

void main() => runApp(const MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    const String tituloApp = 'Navigator Bar';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tituloApp,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeScreen(
        titulo: tituloApp,
      ),
    );
  }
}
