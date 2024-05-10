import 'package:flutter/material.dart';
import 'package:laboratorio2_app/screens/Podcast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ReproductorWidget(),
    );
  }
}
