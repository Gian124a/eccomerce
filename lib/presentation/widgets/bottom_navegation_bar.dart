import 'package:flutter/material.dart';
import 'package:eccommerce/config/theme.dart';

class MenuBajo extends StatelessWidget {
  final int seleccion;
  final Function(int) onTap; // Asegurándonos de que onTap es una función

  const MenuBajo({
    super.key,
    required this.seleccion,
    required this.onTap, // Recibimos la función onTap
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.white,
      selectedItemColor: coloresTheme[3],
      backgroundColor: coloresTheme[0],
      elevation: 0,
      currentIndex: seleccion,
      onTap: (index) => onTap(index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          label: 'Saldo',
        ),
      ],
    );
  }
}
