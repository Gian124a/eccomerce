import 'package:flutter/material.dart';

class Producto extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String precio;
  const Producto({
    super.key,
    required this.ancho,
    required this.imagen,
    required this.titulo,
    required this.precio,
  });

  final double ancho;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ancho - ((ancho / 2) + 20),
      height: 280,
      color: const Color(0XFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: ancho,
              height: 150,
              child: SizedBox(
                width: ancho,
                child: Image(
                  image: NetworkImage(imagen),
                ),
              ),
            ),
            SizedBox(
              width: ancho,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 43, 42, 42),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    precio,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 4, 4, 4),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            const Boton(
              texto: 'Add to cart',
            )
          ],
        ),
      ),
    );
  }
}

class Boton extends StatelessWidget {
  final String texto;
  const Boton({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color(0XFF1ED760),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 15, horizontal: 13),
        ),
      ),
      onPressed: () {},
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    );
  }
}
