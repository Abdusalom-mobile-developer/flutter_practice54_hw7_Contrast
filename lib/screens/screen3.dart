import 'package:flutter/material.dart';
import 'package:flutter_practice54_hw7/modul.dart';

class Screen3 extends StatelessWidget {
  static const String id = "/screen3";
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    List<CardMaker> list = [
      CardMaker(Colors.green[200]!, Icons.grass_outlined, "Grass"),
      CardMaker(Colors.blue[200]!, Icons.air_rounded, "Air"),
      CardMaker(Colors.blueGrey[200]!, Icons.whatshot_outlined, "Whatshot"),
      CardMaker(Colors.red[200]!, Icons.umbrella_rounded, "Umbrella"),
      CardMaker(Colors.purple[200]!, Icons.wallpaper_rounded, "Nature"),
      CardMaker(Colors.limeAccent[200]!, Icons.airplanemode_on, "Plane"),
      CardMaker(Colors.pink[200]!, Icons.anchor, "Anchor"),
      CardMaker(Colors.brown[200]!, Icons.water_drop_outlined, "Water Drop"),
    ];

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 15, color: Colors.white),
            const Text(
              textAlign: TextAlign.center,
              "More? Oh yes.               We've got the boring             basics too.",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Everything you'd expect. A to Z. Whether you're an expert or just getting started.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3 / 1,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14),
              itemCount: list.length,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    color: list[index].color,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(list[index].icon, size: 35),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(list[index].text,
                          style: const TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
