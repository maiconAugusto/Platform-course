import 'package:course_web/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
            leading: const Icon(Icons.dashboard_outlined),
            title: const Text('Dashboard'),
            onTap: () {
              Get.toNamed(Routes.home);
            },
          ),
          ListTile(
            leading: const Icon(Icons.theater_comedy_rounded),
            title: const Text('Cursos'),
            onTap: () {
              Get.toNamed(Routes.home);
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_rounded),
            title: const Text('Suporte'),
            onTap: () {
              Get.toNamed(Routes.support);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_outlined),
            title: const Text('Meus dados'),
            onTap: () {
              Get.toNamed(Routes.myData);
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
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
