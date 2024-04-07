import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhotoPage extends StatelessWidget {

  const PhotoPage({super.key, required this.photo, required this.site, required this.title, required this.director});

  final String photo;
  final String site;
  final String title;
  final String director;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Make the background indigo
      backgroundColor: Colors.indigo.shade900,
      appBar: AppBar(
        //Make the title and the text indigo
        title: Text(
          (title),
          style: TextStyle(
              color: Colors.indigo.shade900
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.indigo.shade900
        ),
        //Make the appbar round
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        //Make the appbar amber
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: IconButton(
          //Display the image for the film
          icon: Image.asset(photo),
          //Make the image launch the imdb for the film
          onPressed: (){launchUrl(Uri.parse(site));},
        )
      ),
    );
  }
}
