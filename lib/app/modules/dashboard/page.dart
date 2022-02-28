import 'package:course_web/app/global/drawerCustomInstrutor.dart';
import 'package:course_web/app/modules/topic/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/appBar.dart';
import '../../global/baseButton.dart';

class DashboardClassView extends GetView<TopicController> {
  const DashboardClassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: const AppBarBase(),
          preferredSize: Size(Get.width, 50),
        ),
        body: SingleChildScrollView(
            child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff2E3136),
                child: Wrap(
                  children: [
                    Card(
                      elevation: 4,
                      shadowColor: const Color(0xff2DBD9C),
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Cursos vendidos: 6',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            ]),
                      ),
                    ),
                    Card(
                      child: Container(
                          height: 200,
                          width: 200,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cursos cadastrados: 6',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ])),
                    ),
                    Card(
                      child: Container(
                          height: 200,
                          width: 200,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Valor total de vendas: 6',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ])),
                    ),
                    Card(
                      child: Container(
                          height: 200,
                          width: 200,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cursos vendidos: 6',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ])),
                    )
                  ],
                ))),
        drawer: const DrawerCustomInstrutor(
          selected: 0,
        ));
  }
}
