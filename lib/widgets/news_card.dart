import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10)),
      width: size.width,
      height: 202,
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: size.width * 0.6,
                height: 160,
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Labore excepteur velit esse laborum fugiat commodo cillum. Cillum ut fugiat cillum laboris magna minim sunt deserunt est ut nisi. Enim cupidatat commodo officia',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: size.width * 0.6,
                height: 40,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(8),
                child: const Text(
                  '10 min',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.all(10),
                child: const Placeholder()
            ),
          )
        ],
      ),
    );
  }
}