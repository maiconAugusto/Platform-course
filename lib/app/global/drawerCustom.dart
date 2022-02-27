import 'package:course_web/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xff2DBD9C),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.grey[800],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Maicon Augusto',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[800]),
                ),
              ],
            )),
          ),
          ListTile(
            leading: Icon(Icons.my_library_books_sharp),
            title: const Text('Meus cursos'),
            onTap: () {
              Get.toNamed(Routes.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.theater_comedy_rounded),
            title: const Text('Modo instrutor'),
            onTap: () {
              Get.toNamed(Routes.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline_rounded),
            title: const Text('Suporte'),
            onTap: () {
              Get.toNamed(Routes.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Meus dados'),
            onTap: () {
              Get.toNamed(Routes.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('Sair'),
            onTap: () {
              Get.offAndToNamed(Routes.auth);
            },
          ),
        ],
      ),
    );
  }
}
