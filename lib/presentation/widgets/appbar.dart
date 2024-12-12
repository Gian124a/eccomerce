import 'package:eccommerce/config/theme.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: coloresTheme.first,
      title: Text(
        'BEAR CLOTHES',
        style: TextStyle(
            color: coloresTheme[1], fontWeight: FontWeight.w700, fontSize: 20),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}
