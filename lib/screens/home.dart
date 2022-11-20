import 'package:coding_test/screens/profile.dart';
import 'package:coding_test/widget/body_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Get.to(() => ProfilePage(), transition: Transition.fadeIn);
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Data"),
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
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Container(
                            width: 300,
                            height: 150,
                            child:
                                Card(child: Text("Hello"), color: Colors.white),
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
                            child:
                                Card(child: Text("Hello"), color: Colors.white),
                          ));
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
