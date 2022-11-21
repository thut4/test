import 'package:coding_test/screens/profile.dart';
import 'package:coding_test/widget/body_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => ProfilePage(),
                  transition: Transition.circularReveal);
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage("asset/profile.jpg"),
            ),
          ),
        ],
      ),
      body: Obx(
        () => Column(
          children: [
            BodyText(
              text: "Find your \ndream job",
              fontWeight: FontWeight.bold,
              size: 36,
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(controller.list[index].type),
                      ),
                    );
                  }),
            ),
            Column(
              children: [
                BodyText(
                  text: "for you",
                  fontWeight: FontWeight.normal,
                  size: 16,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // itemCount: 4,
                      itemCount: controller.list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Container(
                              width: 300,
                              height: 150,
                              child: Card(
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            controller.list[index].logo,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 12),
                                            child: Column(
                                              children: [
                                                Text(controller
                                                    .list[index].name),
                                                Text(controller
                                                        .list[index].count
                                                        .toString() +
                                                    " Posts")
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8),
                                            child: Column(
                                              children: [
                                                Text(controller
                                                    .list[index].type),
                                                Text(
                                                    controller.list[index].date)
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ));
                      }),
                ),
                BodyText(
                  text: "recent",
                  fontWeight: FontWeight.normal,
                  size: 16,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 325,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Container(
                              width: 300,
                              height: 150,
                              child: Card(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          controller.list[index].logo,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 12),
                                          child: Column(
                                            children: [
                                              Text(controller.list[index].name),
                                              Text(controller.list[index].count
                                                      .toString() +
                                                  " Posts")
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text(controller.list[index].type),
                                              Text(controller.list[index].date)
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ));
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
