import 'package:eccommerce/presentation/screens/Pantalla_Cuenta.dart';
import 'package:eccommerce/presentation/screens/buscador.dart';
import 'package:eccommerce/presentation/screens/home.dart';
import 'package:eccommerce/presentation/widgets/appbar.dart';
import 'package:eccommerce/presentation/widgets/bottom_navegation_bar.dart';
import 'package:eccommerce/presentation/widgets/menu.dart';
import 'package:flutter/material.dart';

class Controlador extends StatefulWidget {
  const Controlador({super.key});

  @override
  State<Controlador> createState() => _ControladorState();
}

class _ControladorState extends State<Controlador> {
  int _seleccion = 0; // Índice inicial

  final List<Widget> _pages = [
    const Home(),
    const Buscador(),
    const Cuenta(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyMenu(),
      body: _pages[_seleccion], // Mostrar la página según su indice
      bottomNavigationBar: MenuBajo(
        seleccion: _seleccion, // Índice actual
        onTap: (value) => setState(() => _seleccion = value),
      ),
    );
  }
}

class HomeZara {
  const HomeZara();
}
