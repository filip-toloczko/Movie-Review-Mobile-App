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
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          (title),
        ),
      ),
      body: Center(
        child: IconButton(icon: Image.asset(photo), onPressed: (){launchUrl(Uri.parse(site));},)
      ),
    );
  }
}
