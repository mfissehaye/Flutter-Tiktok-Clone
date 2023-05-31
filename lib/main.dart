import 'package:flutter/material.dart';
import 'package:tiktok_clone/home/body.dart';
import 'package:tiktok_clone/home/header.dart';
import 'package:tiktok_clone/home/navigation.dart';
import 'package:tiktok_clone/home/playlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiktok Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool forYou = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeaderRow(
          isForYou: forYou,
          onShowForYou: () {
            setState(() {
              forYou = true;
            });
          },
        ),
        MainBody(isForYou: forYou),
        const PlayList(),
        const Navigation(),
      ],
    );
  }
}
