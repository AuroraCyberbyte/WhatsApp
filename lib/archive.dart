import 'package:flutter/material.dart';

class Archive extends StatelessWidget {
  const Archive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 19, 27),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                        size: 33,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Arşivlenmiş",
                      style: TextStyle(color: Colors.grey, fontSize: 25),
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 33,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Bu sohbetler yeni mesajlar alındığında arşivde kalmaya devam eder. Değiştirmek için dokunun.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
            sohbet(),
          ],
        ),
      ),
    );
  }

  Padding sohbet() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/ben.jpg",
                    height: 60,
                    width: 60,
                  ),
                ),
              ],
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
    );
  }
}
