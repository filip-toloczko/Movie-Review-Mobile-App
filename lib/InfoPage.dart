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
        //Make the icon and text amber
        iconTheme: const IconThemeData(
          color: Colors.amber
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.amber
          ),
        ),
        //Make the appbar rounded
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        //Make appbar blue
        backgroundColor: Colors.indigo.shade900,
      ),
      //Display the information centered
      body: Center(
        child: Column(
          children: [
            Text(
              ("\nTitle: $title\n"),
              style: TextStyle(
                fontSize: 35,
                color: Colors.indigo.shade900
              ),
            ),
            Text(("Directed By: $director\n"),
              style: TextStyle(
                fontSize: 35,
                color: Colors.indigo.shade900
              ),
            ),
            Text(
              ("Starring:"),
              style: TextStyle(
                fontSize: 35,
                color: Colors.indigo.shade900
              ),
            ),
            Text(
              (actors),
              style: TextStyle(
                fontSize: 35,
                color: Colors.indigo.shade900
              ),
            ),
            Text(
              ("\nRuntime: $runtime\n"),
              style: TextStyle(
                fontSize: 35,
                color: Colors.indigo.shade900
              ),
            ),
            Text(
              ("Rotten Tomatoes : $rating1\n"),
              style: TextStyle(
                fontSize: 35,
                color: Colors.indigo.shade900
              ),
            ),
            Text(
              ("IMDb : $rating2\n"),
              style: TextStyle(
                fontSize: 35,
                color: Colors.indigo.shade900
              ),
            ),
          ],
        ),
      )
    );
  }
}