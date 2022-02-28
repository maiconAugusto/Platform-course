import 'package:course_web/app/global/drawerCustom.dart';
import 'package:course_web/app/global/text_form.dart';
import 'package:course_web/app/modules/support/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/appBar.dart';
import '../../global/baseButton.dart';
import '../../routes/app_routes.dart';

class SupportView extends GetView<SupportController> {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const AppBarBase(),
        preferredSize: Size(Get.width, 50),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff2E3136),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Form(
            child: Card(
              color: const Color(0xff202225),
              elevation: 2,
              child: Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  width: 500,
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Suporte',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Este é o seu canal direto com nossa equipe.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Alternativamente, você também pode enviar um e-mail para:',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'suporte@b7web.com.br',
                          style: TextStyle(color: Color(0xff94A0FF)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            TextForm(
                                label: 'Assunto',
                                controller: controller.assunto,
                                obscureText: false),
                            const SizedBox(
                              height: 25,
                            ),
                            TextForm(
                                maxLines: 5,
                                label: 'Mensagem',
                                controller: controller.assunto,
                                obscureText: false),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 45,
                              width: double.infinity,
                              child: BaseButton(
                                text: "Entrar",
                                onPress: () {
                                  Get.toNamed(Routes.home);
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                          ],
                        ),
                      ])),
            ),
          )
        ]),
      ),
      drawer: const DrawerCustom(),
    );
  }
}
