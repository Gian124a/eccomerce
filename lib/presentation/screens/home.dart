import 'package:eccommerce/presentation/widgets/boton_categoria.dart';
import 'package:eccommerce/presentation/widgets/productos.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double ancho = MediaQuery.of(context).size.width;
    return ListView(
      shrinkWrap: true,
      children: [
        // Imagen de presentación
        Stack(
          children: [
            SizedBox(
              width: ancho,
              height: 250,
              child: const Image(
                image: NetworkImage(
                    'https://4256122.fs1.hubspotusercontent-na1.net/hubfs/4256122/iStock-1352707458-_2_.webp'),
                fit: BoxFit.cover,
              ),
            ),

            // Fondo negro
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: ancho,
                  height: 250,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),

            // Botón de ofertas

            Positioned(
              bottom: 15,
              right: 15,
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 7, 12, 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 253, 253, 253),
                ),
                child: const Row(
                  children: [
                    Text(
                      'See offers',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

        const SizedBox(
          height: 10,
        ),

        // Categorias listadas

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            child: const Row(
              children: [
                Categorias(nombreCategoria: 'Franelas'),
                Categorias(nombreCategoria: 'Jeans'),
                Categorias(nombreCategoria: 'Shoes'),
                Categorias(nombreCategoria: 'pants'),
                Categorias(nombreCategoria: 'Boxers'),
                Categorias(nombreCategoria: 'gorras'),
              ],
            ),
          ),
        ),

        const SizedBox(
          height: 13,
        ),

        // Linea divisora de decoracion

        Center(
          child: Container(
            width: ancho - 30,
            height: 1,
            color: const Color.fromARGB(255, 195, 195, 195),
          ),
        ),

        //  Listador de productos

        Container(
          width: ancho,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Wrap(
                spacing: 10, // Space between items horizontally
                runSpacing: 10, // Space between items vertically
                alignment: WrapAlignment.center, // Align items in the center
                children: [
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  Producto(
                    ancho: ancho,
                    imagen:
                        'https://m.media-amazon.com/images/I/61bK6PMOC3L.jpg',
                    titulo: 'Iphone 16 pro',
                    precio: '1000',
                  ),
                  // You can add more Producto widgets here
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
