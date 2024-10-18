import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice54_hw7/screens/screen3.dart';

class Screen2 extends StatefulWidget {
  static const String id = "/screen2";
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "contrast",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.menu, color: Colors.black, size: 34),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 15, color: Colors.white),
            Expanded(
                child: Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color.fromARGB(210, 146, 211, 232),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 239, 245),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 2,
                              offset: Offset(4, 2))
                        ],
                        border: Border.all(color: Colors.black, width: 3)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Screen3.id);
                      },
                      child: const Text(
                        "Our Story",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "The way we                      create and consume",
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius:
                                    BorderRadiusDirectional.circular(15)),
                            child: const Text(
                              textAlign: TextAlign.center,
                              "video",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          const Icon(
                            CupertinoIcons.video_camera,
                            size: 57,
                          )
                        ],
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "has changed a lot",
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 7,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pinkAccent),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
