import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'MyHomePage.dart';
import 'PhotoPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(),
        '/oppenheimer': (context) => const PhotoPage(
            photo: "images/oppenheimer.png",
            site: 'https://www.imdb.com/title/tt15398776/?ref_=sr_i_4',
            title: "Oppenheimer - ",
            director: "Chris Nolan (2023)"
        ),
        '/short': (context) => const PhotoPage(
            photo: "images/the_big_short.png",
            site: 'https://www.imdb.com/title/tt1596363/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_the%2520big',
            title: "The Big Short - ",
            director: "Adam McKay (2015)"
        ),
        '/ford': (context) => const PhotoPage(
            photo: "images/ford_vs_ferrari.png",
            site: 'https://www.imdb.com/title/tt1950186/?ref_=nv_sr_srsg_0_tt_1_nm_7_q_ford',
            title: "Ford vs Ferrari - ",
            director: "James Mangold (2019)"
        ),
        '/dunkirk': (context) => const PhotoPage(
            photo: "images/dunkirk.png",
            site: 'https://www.imdb.com/title/tt5013056/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_dunk',
            title: "Dunkirk - ",
            director: "Chris Nolan (2017)"
        ),
        '/dune': (context) => const PhotoPage(
            photo: "images/dune.png",
            site: 'https://www.imdb.com/title/tt1160419/?ref_=nv_sr_srsg_3_tt_8_nm_0_q_dune',
            title: "Dune - ",
            director: "D. Villeneuve (2021)"
        ),
        '/interstellar': (context) => const PhotoPage(
            photo: "images/interstellar.png",
            site: 'https://www.imdb.com/title/tt0816692/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inter',
            title: "Interstellar - ",
            director: "Chris Nolan (2014)"
        ),
        '/blade': (context) => const PhotoPage(
            photo: "images/bladerunner_2049.png",
            site: 'https://www.imdb.com/title/tt1856101/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_blad',
            title: "Blade Runner 2049 - ",
            director: "D. Villeneuve (2017)"
        ),
        '/inception': (context) => const PhotoPage(
            photo: "images/inception.png",
            site: 'https://www.imdb.com/title/tt1375666/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inceptio',
            title: "Inception - ",
            director: "Chris Nolan (2010)"
        ),
        '/drive': (context) =>  const PhotoPage(
          photo: "images/drive.png",
          site: 'https://www.imdb.com/title/tt0780504/?ref_=fn_al_tt_1',
          title: "Drive - ",
          director: "Nicolas Refn (2011)",
        ),
        '/batman': (context) =>  const PhotoPage(
          photo: "images/batman.png",
          site: 'https://www.imdb.com/title/tt1877830/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_batman',
          title: "The Batman - ",
          director: "Matt Reeves (2022)",
        ),
        '/topgun': (context) =>  const PhotoPage(
          photo: "images/topgun.png",
          site: 'https://www.imdb.com/title/tt0092099/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_topgun',
          title: "Top Gun - ",
          director: "Tony Scott (1986)",
        ),
        '/fury': (context) =>  const PhotoPage(
          photo: "images/fury.png",
          site: 'https://www.imdb.com/title/tt2713180/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_fury',
          title: "Fury - ",
          director: "David Ayer (2014)",
        ),
        '/aquietplace': (context) =>  const PhotoPage(
          photo: "images/quiet_place.png",
          site: 'https://www.imdb.com/title/tt6644200/?ref_=nv_sr_srsg_0_tt_6_nm_2_q_a%2520qui',
          title: "A Quiet Place - ",
          director: "J. Krasinski (2018)",
        ),
        '/split': (context) =>  const PhotoPage(
          photo: "images/split.png",
          site: 'https://www.imdb.com/title/tt4972582/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_split',
          title: "Split - ",
          director: "Shyamalan (2016)",
        ),
        '/americanpsycho': (context) =>  const PhotoPage(
          photo: "images/american_psycho.png",
          site: 'https://www.imdb.com/title/tt0144084/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_american%2520ps',
          title: "American Pyscho - ",
          director: "Mary Harron (2000)",
        ),
        '/jaws': (context) =>  const PhotoPage(
          photo: "images/jaws.png",
          site: 'https://www.imdb.com/title/tt0073195/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_jaws',
          title: "Jaws - ",
          director: "Spielberg (1975)",
        ),
        '/thehangover': (context) =>  const PhotoPage(
          photo: "images/hangover.png",
          site: 'https://www.imdb.com/title/tt1119646/?ref_=nv_sr_srsg_3_tt_8_nm_0_q_the%2520han',
          title: "The Hangover - ",
          director: "Todd Phillips (2009)",
        ),
        '/theniceguys': (context) =>  const PhotoPage(
          photo: "images/nice_guys.png",
          site: 'https://www.imdb.com/title/tt3799694/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520nice',
          title: "The Nice Guys - ",
          director: "Shane Black (2016)",
        ),
        '/21jumpstreet': (context) =>  const PhotoPage(
          photo: "images/21.png",
          site: 'https://www.imdb.com/title/tt1232829/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_21%2520jump',
          title: "21 Jump Street - ",
          director: "Phil Lord (2012)",
        ),
        '/badboys': (context) =>  const PhotoPage(
          photo: "images/bad_boys.png",
          site: 'https://www.imdb.com/title/tt0112442/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_bad%2520boy',
          title: "Bad Boys - ",
          director: "Michael Bay (1995)",
        ),

      },
    );
  }
}

