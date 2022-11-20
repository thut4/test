import 'package:coding_test/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/body_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String text = "Available";
  void textChanged() {
    setState(() {
      if (text == "Currently Working") {
        text = "Available";
      } else {
        text = "Currently Working";
      }
      // print("clicked");
    });
  }

  @override
  Widget build(BuildContext context) {
    // final Controller controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 200.0,
                color: Colors.deepPurple,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: textChanged,
                      icon: const Icon(Icons.autorenew_outlined),
                      color: Colors.white,
                    ),
                  ],
                )),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Jhon Doe",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text("FLutter Developer"),
                        BodyText(
                          text: "Skill",
                          fontWeight: FontWeight.normal,
                          size: 14,
                          color: Colors.black,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("asset/flutter.png"),
                              Image.asset("asset/laravel.png"),
                              Image.asset("asset/node-js.png"),
                              Image.asset("asset/react.png")
                            ]),
                        BodyText(
                          text: "About me",
                          fontWeight: FontWeight.normal,
                          size: 14,
                          color: Colors.black,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id libero iaculis, sodales magna in, efficitur tortor. Aliquam nec pellentesque orci. Praesent nunc felis, vestibulum a commodo eget, mattis sit amet orci. Curabitur sollicitudin leo et massa aliquet, vel dictum lectus cursus. Proin at enim in elit pretium aliquam ac eu ligula. In aliquam ante metus, non dapibus felis mattis at. Donec accumsan ornare leo. Etiam vitae lectus fringilla, blandit ex id, vulputate mi."),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 150.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 100.0,
              width: 100.0,
              child: CircleAvatar(),
            ),
          )
        ],
      ),
    );
  }
}
