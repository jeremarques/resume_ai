import 'package:flutter/material.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'jeremias.marques',
              style: TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),
            accountEmail: const Text('saimerejmarques@gmail.com'),
            currentAccountPicture: ClipOval(child: Image.network('https://github.com/jeremarques.png')),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade400,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_rounded,
            ),
            title: const Text('Início'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Configurações'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.history_rounded,
            ),
            title: const Text('Histórico'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.help_rounded,
            ),
            title: const Text('Ajuda'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}