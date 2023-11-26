import 'package:flutter/material.dart';
import 'package:whatsapp/archive.dart';
import 'package:whatsapp/guncellemeler.dart';

import 'package:whatsapp/home_page.dart';

import 'chat.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp',
        routes: {
          "/home": (p) => const HomePage(),
          "/archive": (p) => const Archive(),
          "/chat": (p) => const Chat(),
          "/guncellemeler": (p) => const Guncellemeler(),
        },
        home: const Guncellemeler());
  }
}
