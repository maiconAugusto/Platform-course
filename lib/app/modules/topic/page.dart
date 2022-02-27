import 'package:course_web/app/modules/topic/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/appBar.dart';
import '../../global/baseButton.dart';
import '../../routes/app_routes.dart';

class TopicView extends GetView<TopicController> {
  const TopicView({Key? key}) : super(key: key);

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
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.1,
            child: Row(children: [
              Expanded(
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      ))),
              const Expanded(
                child: Text(
                  'Novo tópico',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            child: Card(
              color: const Color(0xff202225),
              elevation: 2,
              child: Container(
                margin: const EdgeInsets.only(left: 40, right: 40),
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 1.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Novo tópico',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
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
                            labelStyle: const TextStyle(color: Colors.white),
                            label: const Text('Descreva o tópico')),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      maxLines: 6,
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
                          labelStyle: const TextStyle(color: Colors.white),
                          label: const Text('Descreva...')),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width,
                      child: SizedBox(
                        height: 45,
                        width: 200,
                        child: BaseButton(
                          text: "Enviar",
                          onPress: () {
                            controller.displaySuccessMotionToast();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
