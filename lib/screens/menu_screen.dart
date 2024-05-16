import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text('App CEUTEC'),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(5),
            title: const Text('Ir a la sección de noticias'),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 25,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.all(5),
            title: const Text('Ir a la lista de tareas'),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 25,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.all(5),
            title: const Text('Ir al conversor de moneda'),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 25,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.all(5),
            title: const Text('Ir al podcast'),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 25,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
