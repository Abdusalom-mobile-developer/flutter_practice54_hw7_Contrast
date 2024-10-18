import 'package:flutter/material.dart';
import 'package:flutter_practice54_hw7/screens/screen2.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "/home_screen";
  const HomeScreen({
    super.key,
  });

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Stack(children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(right: 40, top: 20),
                    height: 170,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 2,
                              offset: Offset(7, 6))
                        ],
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/enabled_lo/564x/fb/c9/66/fbc9669802865ca442e78e90dd266652.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(20)),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 110,
                      margin: const EdgeInsets.only(bottom: 20, right: 60),
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 2,
                              offset: Offset(5, 4))
                        ],
                        borderRadius: BorderRadiusDirectional.circular(13),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/enabled_lo/564x/c8/3e/8c/c83e8cdb08a510522db1dbe43e1c49c5.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                                offset: Offset(6, 4))
                          ],
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/736x/41/19/3d/41193d3ae831bde09727ead3d46bdf2c.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.black,
                          borderRadius: BorderRadiusDirectional.circular(20)),
                    ),
                  )
                ])),
            Expanded(
                flex: 3,
                child: Column(children: [
                  const Text(
                    "Engage your audience,            until the end",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Meet the new way to to run webinars. Fun, engaging and authentically you.",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 58,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.black, width: 3)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Screen2.id);
                      },
                      child: const Text(
                        "Book a Demo",
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.black, width: 3)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Screen2.id);
                      },
                      child: const Text(
                        "Start for free",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
