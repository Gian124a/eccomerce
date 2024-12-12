import 'package:eccommerce/config/theme.dart';
import 'package:eccommerce/presentation/controllator/controlador.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: const MyTheme(eleccionColor: 1).theme(),
      home: const Controlador(),
    );
  }
}
