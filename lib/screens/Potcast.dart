import 'package:flutter/material.dart';

class ReproductorWidget extends StatefulWidget {
  const ReproductorWidget({super.key});

  @override
  Reproductor_Widget createState() => Reproductor_Widget();
}

class Reproductor_Widget extends State<ReproductorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 238, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 164, 164),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("App CEUTEC"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
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
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 69, 69, 70),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.music_note,
                      size: 90,
                      color: const Color.fromARGB(255, 255, 254, 254),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cancion",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Artista",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
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
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 5,
              color: Color.fromARGB(255, 22, 67, 216),
            ),
          ],
        ),
      ),
    );
  }
}
