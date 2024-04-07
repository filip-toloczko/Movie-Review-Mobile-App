import 'package:flutter/material.dart';


class InfoPage extends StatelessWidget {

  const InfoPage({super.key, required this.actors,
    required this.runtime, required this.title, required this.director,
    required this.rating1, required this.rating2
  });

  final String title;
  final String director;
  final String actors;
  final String runtime;
  final String rating1;
  final String rating2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              ("\nTitle: $title\n"),
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            Text(("Directed By: $director\n"),
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            const Text(
              ("Starring:"),
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              (actors),
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              ("\nRuntime: $runtime\n"),
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              ("Rotten Tomatoes : $rating1\n"),
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              ("IMDb : $rating2\n"),
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
          ],
        ),
      )
    );
  }
}