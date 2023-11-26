import 'package:flutter/material.dart';
import 'package:jeafriday/jeafwidget.dart';

class Guncellemeler extends StatelessWidget {
  const Guncellemeler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 19, 27),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                tobBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.groups,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          child: const Text(
                            "Sohbetler",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const InkWell(
                          
                          child: Text(
                            "Güncellemeler",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 44, 163, 117),
                          height: 3,
                          width: 115,
                        ),
                      ],
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
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Durum",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/ben.jpg",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Durumum",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Durum güncellemesi eklemek için dokunun",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Görülen güncellemeler",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Icon(
                        Icons.expand_more,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.1,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kanallar",
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 26,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "İlginizi çeken konulardaki son gelişmelerden haberdar olun. Takip edebileceğiniz kanalları aşağıda bulabilirsiniz.",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                JeaHorizontalScrollView(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        kanallar(),
                        kanallar(),
                        kanallar(),
                        kanallar(),
                        kanallar(),
                        kanallar(),
                        //ayır
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 11, 136, 105),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Daha fazlasını keşfet",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 19, 27),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 136, 105),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget kanallar() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const SizedBox(height: 20),
          ClipOval(
            child: Image.asset(
              "assets/netflix.jpg",
              fit: BoxFit.cover,
              height: 70,
              width: 70,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Netflix",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              "Takip et",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container tobBar() {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 18, 36, 44)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "WhatsApp",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
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
    );
  }
}
