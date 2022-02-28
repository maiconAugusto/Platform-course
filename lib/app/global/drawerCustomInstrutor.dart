import 'package:course_web/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerCustomInstrutor extends StatelessWidget {
  const DrawerCustomInstrutor({Key? key, this.selected}) : super(key: key);
  final int? selected;

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
          Container(
              color: selected == 0 ? Colors.grey[600] : null,
              child: ListTile(
                leading: Icon(
                  Icons.dashboard_outlined,
                  color: selected == 0 ? Colors.white : null,
                ),
                title: Text(
                  'Dashboard',
                  style: TextStyle(color: selected == 0 ? Colors.white : null),
                ),
                onTap: () {
                  Get.toNamed(Routes.dashboard);
                },
              )),
          Container(
            color: selected == 1 ? Colors.grey[600] : null,
            child: ListTile(
              leading: Icon(
                Icons.theater_comedy_rounded,
                color: selected == 1 ? Colors.white : null,
              ),
              title: Text('Cursos',
                  style: TextStyle(
                    color: selected == 1 ? Colors.white : null,
                  )),
              onTap: () {
                Get.toNamed(Routes.courses);
              },
            ),
          ),
          Container(
            color: selected == 2 ? Colors.grey[600] : null,
            child: ListTile(
              leading: Icon(
                Icons.person_outlined,
                color: selected == 2 ? Colors.white : null,
              ),
              title: Text(
                'Meus dados',
                style: TextStyle(
                  color: selected == 2 ? Colors.white : null,
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.instructor);
              },
            ),
          ),
          Container(
            color: selected == 3 ? Colors.grey[600] : null,
            child: ListTile(
              leading: Icon(
                Icons.monetization_on,
                color: selected == 3 ? Colors.white : null,
              ),
              title: Text(
                'Pagamento',
                style: TextStyle(
                  color: selected == 3 ? Colors.white : null,
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.payment);
              },
            ),
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
