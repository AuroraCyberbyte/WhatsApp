import 'package:flutter/material.dart';
import 'package:jeadesing/jeadesing.dart';
import 'package:jeafriday/jeafwidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 19, 27),
      body: JDBody(scrollable: true, children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "WhatsApp",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.groups,
              color: Colors.grey,
            ),
            Column(
              children: [
                const Text(
                  "Sohbetler",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Container(
                  color: const Color.fromARGB(255, 44, 163, 117),
                  height: 3,
                  width: 80,
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/guncellemeler");
              },
              child: const Text(
                "Güncellemeler",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
            const Text(
              "Aramalar",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const Icon(
                Icons.archive,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/archive");
                },
                child: const Text(
                  "Arşivlenmiş",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),

        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),
        sohbet(context),

        //ayır]
      ]),
    );
  }

  Widget sohbet(context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/chat");
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "assets/ben.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aurora Cyberbyte",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 120),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.grey,
                      ),
                      Text(
                        "Merhaba ben WhatsApp kullanıyorum!",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
