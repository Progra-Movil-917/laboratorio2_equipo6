import 'package:flutter/material.dart';
import 'package:laboratorio2_app/widgets/news_card.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          'App CEUTEC',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Noticias",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            NewsCard(),
            NewsCard(),
            NewsCard(),
            NewsCard(),
            NewsCard(),
          ],
        ),
      ),
    );
  }
}