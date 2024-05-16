import 'package:flutter/material.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text("App CEUTEC")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 69, 69, 70),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.music_note,
                      size: 90,
                      color: Color.fromARGB(255, 255, 254, 254),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cancion",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Artista",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.skip_previous,
                  size: 40,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.play_arrow,
                  size: 130,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.skip_next,
                  size: 40,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 5,
              color: const Color.fromARGB(255, 22, 67, 216),
            ),
          ],
        ),
      ),
    );
  }
}