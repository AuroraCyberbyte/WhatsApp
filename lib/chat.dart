import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 119, 159),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 19, 27),
              ),
              child: Row(
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
                    width: 5,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/ben.jpg",
                      height: 45,
                      width: 45,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Aurora Cyberbyte",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 210,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                    size: 33,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
