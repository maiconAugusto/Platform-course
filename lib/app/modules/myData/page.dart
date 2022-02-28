import 'package:course_web/app/global/drawerCustom.dart';
import 'package:course_web/app/global/text_form.dart';
import 'package:course_web/app/modules/myData/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/appBar.dart';
import '../../global/baseButton.dart';
import '../../routes/app_routes.dart';

class MyDataView extends GetView<MyDataController> {
  const MyDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const AppBarBase(),
        preferredSize: Size(Get.width, 50),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xff2E3136),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Suas informações',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              child: Card(
                color: const Color(0xff202225),
                elevation: 2,
                child: Container(
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    width: 500,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              const CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://media.istockphoto.com/photos/joyful-natural-young-woman-smiling-picture-id1289220974?k=20&m=1289220974&s=170667a&w=0&h=506e_Ng5c4ZE3D3qY3_oTNafnHVaEkJws-_eX0un4LM='),
                                backgroundColor: Colors.transparent,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    labelStyle: TextStyle(color: Colors.white),
                                    label: Text('Nome completo')),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TextForm(
                                  label: 'Senha atual',
                                  controller: controller.password,
                                  obscureText: true),
                              const SizedBox(
                                height: 25,
                              ),
                              TextForm(
                                  label: 'Nova senha',
                                  controller: controller.password,
                                  obscureText: true),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: 45,
                                width: double.infinity,
                                child: BaseButton(
                                  text: "Atualizar",
                                  onPress: () {
                                    Get.toNamed(Routes.home);
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ])),
              ),
            )
          ]),
        ),
      ),
      drawer: const DrawerCustom(),
    );
  }
}
