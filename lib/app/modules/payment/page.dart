import 'package:course_web/app/global/drawerCustomInstrutor.dart';
import 'package:course_web/app/global/text_form.dart';

import 'package:course_web/app/modules/payment/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/appBar.dart';
import '../../global/baseButton.dart';
import '../../routes/app_routes.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                              'Pagamento',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'O pagamento referente a venda de curso sera feita via PIX.',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'O pagamento sera realizado em seu PIX após 30 dias.',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Em caso de dúvida entre em contato com suporte.',
                              style: TextStyle(color: Color(0xff94A0FF)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                TextForm(
                                    label: 'Informe sua chave PIX',
                                    controller: controller.password,
                                    obscureText: false),
                                const SizedBox(
                                  height: 25,
                                ),
                                SizedBox(
                                  height: 45,
                                  width: double.infinity,
                                  child: BaseButton(
                                    text: "Salvar",
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
            ],
          ),
        ),
      ),
      drawer: const DrawerCustomInstrutor(selected: 3),
    );
  }
}
