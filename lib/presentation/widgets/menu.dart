import 'package:eccommerce/config/theme.dart';
import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: coloresTheme.first,
      child: ListView(
        children: [
          SizedBox(
            height: 260,
            child: DrawerHeader(
              child: Column(
                children: [
                  const Text(
                    'BEAR CLOTHES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhAu72pB24JrKJpqABtlUUqV02c4W-BaPyBQ&s')),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Ernesto Lorenzo',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      const Text(
                        'lorernesto16@gmail.com',
                        style: TextStyle(
                            color: Color.fromARGB(255, 141, 140, 140),
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: Color(0xFFE2E1E1),
            ),
            title: Text(
              'Mi cuenta',
              style: TextStyle(color: Color(0xFFE2E1E1)),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xFFE2E1E1),
            ),
            title: Text(
              'Mis compras',
              style: TextStyle(color: Color(0xFFE2E1E1)),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFFE2E1E1),
            ),
            title: Text(
              'Carrito de compras',
              style: TextStyle(color: Color(0xFFE2E1E1)),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.payment_sharp,
              color: Color(0xFFE2E1E1),
            ),
            title: Text(
              'Agregar forma de pago',
              style: TextStyle(color: Color(0xFFE2E1E1)),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Color(0xFFE2E1E1),
            ),
            title: Text(
              'Cerrar Sesion',
              style: TextStyle(color: Color(0xFFE2E1E1)),
            ),
          ),
        ],
      ),
    );
  }
}
