import 'package:chewie/chewie.dart';
import 'package:course_web/app/modules/course/controller.dart';
import 'package:course_web/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/appBar.dart';
import '../../global/drawerCustom.dart';

class Course extends GetView<CourseController> {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: const AppBarBase(),
          preferredSize: Size(Get.width, 50),
        ),
        body: Obx(() {
          return (SingleChildScrollView(
              child: Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff2E3136),
            child: Visibility(
                visible: !controller.loading.value,
                replacement: SizedBox(
                    height: Get.height,
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xff2DBD9C),
                      ),
                    )),
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
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
                      Expanded(
                        child: Text(
                          Get.parameters['courseName']!,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        shadowColor: const Color(0xff2DBD9C),
                        color: const Color(0xff202225),
                        elevation: 1,
                        child: Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            width: MediaQuery.of(context).size.width / 1.1,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    top: 20, bottom: 20),
                                                child: AspectRatio(
                                                  aspectRatio: 16 / 9,
                                                  child: Chewie(
                                                    controller: controller
                                                        .chewieController,
                                                  ),
                                                )),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Text(
                                                          'Introdução ao NodeJs',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Icon(
                                                          Icons.check_circle,
                                                          color:
                                                              Color(0xff2DBD9C),
                                                        )
                                                      ],
                                                    ),
                                                    TextButton(
                                                        onPressed: () {
                                                          Get.toNamed(
                                                              Routes.newTopic);
                                                        },
                                                        child: const Text(
                                                            'Novo tópico'))
                                                  ],
                                                )),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Text(
                                              'Tópicos dessa aula',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Card(
                                                child: InkWell(
                                                    onTap: () {
                                                      Get.toNamed(
                                                          Routes.commentClase);
                                                    },
                                                    child: const ListTile(
                                                      leading: Icon(Icons
                                                          .supervised_user_circle_sharp),
                                                      title: Text(
                                                          'Front-End ou Back-End?'),
                                                      trailing:
                                                          Text('6 Comentários'),
                                                    ))),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Card(
                                                child: InkWell(
                                                    onTap: () {},
                                                    child: const ListTile(
                                                      leading: Icon(Icons
                                                          .supervised_user_circle_sharp),
                                                      title: Text(
                                                          'Front-End ou Back-End?'),
                                                      trailing:
                                                          Text('6 Comentários'),
                                                    )))
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 20, left: 18),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Conteúdo do curso',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                ListView.builder(
                                                  shrinkWrap: true,
                                                  primary: false,
                                                  itemCount:
                                                      controller.data.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    ExpansionPanelList(
                                                      children: [],
                                                    );
                                                    return Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const SizedBox(
                                                          height: 4,
                                                        ),
                                                        ClipRRect(
                                                            child: Container(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                height: 30,
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left: 8,
                                                                        top: 3,
                                                                        bottom:
                                                                            3),
                                                                width:
                                                                    Get.width,
                                                                color: Colors
                                                                    .white,
                                                                child: Text(
                                                                  '${index + 1} - ${controller.data[index]['_id']}',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                            .grey[
                                                                        800],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ))),
                                                        const SizedBox(
                                                          height: 4,
                                                        ),
                                                        ListView.builder(
                                                          shrinkWrap: true,
                                                          primary: false,
                                                          itemCount: controller
                                                              .data[index]
                                                                  ['clases']
                                                              .length,
                                                          itemBuilder:
                                                              (BuildContext ctx,
                                                                  i) {
                                                            return (Column(
                                                              children: [
                                                                const SizedBox(
                                                                  height: 4,
                                                                ),
                                                                InkWell(
                                                                    onTap:
                                                                        () {},
                                                                    child: Container(
                                                                        padding: const EdgeInsets.only(left: 10),
                                                                        height: 30,
                                                                        alignment: Alignment.centerLeft,
                                                                        color: Colors.white24,
                                                                        child: Row(
                                                                          children: [
                                                                            const Icon(
                                                                              Icons.play_circle_outline,
                                                                              color: Color(0xff2DBD9C),
                                                                              size: 14,
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 10,
                                                                            ),
                                                                            Text('Aula - ${controller.data[index]['clases'][i]['clase']}')
                                                                          ],
                                                                        ))),
                                                                const SizedBox(
                                                                  height: 4,
                                                                ),
                                                              ],
                                                            ));
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                )
                                              ],
                                            )))
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ])),
          )));
        }),
        drawer: const DrawerCustom());
  }
}
