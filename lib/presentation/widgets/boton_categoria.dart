import 'package:eccommerce/config/theme.dart';
import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  final String nombreCategoria;
  const Categorias({
    super.key,
    required this.nombreCategoria,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: coloresTheme.first,
          ),
          child: Text(
            nombreCategoria,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
