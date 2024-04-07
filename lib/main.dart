import 'package:flutter/material.dart';
import 'InfoPage.dart';
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
            title: "Oppenheimer",
            director: "Chris Nolan (2023)"
        ),
        '/oppenheimer2': (context) => const InfoPage(
          title: "Oppenheimer",
          director: "Chris Nolan",
          actors: "Cillian Murphy\nEmily Blunt",
          runtime: "3:00",
          rating1: "93%",
          rating2: "8.3/10",
        ),
        '/short': (context) => const PhotoPage(
            photo: "images/the_big_short.png",
            site: 'https://www.imdb.com/title/tt1596363/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_the%2520big',
            title: "The Big Short",
            director: "Adam McKay (2015)"
        ),
        '/short2': (context) => const InfoPage(
          title: "The Big Short",
          director: "Adam McKay",
          actors: "Christian Bale\nSteve Carell",
          runtime: "2:10",
          rating1: "89%",
          rating2: "7.8/10",
        ),
        '/ford': (context) => const PhotoPage(
            photo: "images/ford_vs_ferrari.png",
            site: 'https://www.imdb.com/title/tt1950186/?ref_=nv_sr_srsg_0_tt_1_nm_7_q_ford',
            title: "Ford vs Ferrari",
            director: "James Mangold (2019)"
        ),
        '/ford2': (context) => const InfoPage(
          title: "Ford vs Ferrari",
          director: "James Mangold",
          actors: "Matt Damon\nChristian Bale",
          runtime: "2:32",
          rating1: "92%",
          rating2: "8.1/10",
        ),
        '/dunkirk': (context) => const PhotoPage(
            photo: "images/dunkirk.png",
            site: 'https://www.imdb.com/title/tt5013056/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_dunk',
            title: "Dunkirk - ",
            director: "Chris Nolan (2017)"
        ),
        '/dunkirk2': (context) => const InfoPage(
          title: "Dunkirk",
          director: "Chris Nolan",
          actors: "Fionn Whitehead\nBarry Keoghan",
          runtime: "1:46",
          rating1: "92%",
          rating2: "7.8/10",
        ),
        '/dune': (context) => const PhotoPage(
            photo: "images/dune.png",
            site: 'https://www.imdb.com/title/tt1160419/?ref_=nv_sr_srsg_3_tt_8_nm_0_q_dune',
            title: "Dune",
            director: "D. Villeneuve (2021)"
        ),
        '/dune2': (context) => const InfoPage(
          title: "Dune",
          director: "D. Villeneuve",
          actors: "Timothee Chalamet\nRebecca Ferguson",
          runtime: "2:35",
          rating1: "83%",
          rating2: "8.0/10",
        ),
        '/interstellar': (context) => const PhotoPage(
            photo: "images/interstellar.png",
            site: 'https://www.imdb.com/title/tt0816692/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inter',
            title: "Interstellar",
            director: "Chris Nolan (2014)"
        ),
        '/interstellar2': (context) => const InfoPage(
          title: "Interstellar",
          director: "Chris Nolan",
          actors: "Matthew McConaughey\nAnne Hathaway",
          runtime: "2:49",
          rating1: "73%",
          rating2: "8.7/10",
        ),
        '/blade': (context) => const PhotoPage(
            photo: "images/bladerunner_2049.png",
            site: 'https://www.imdb.com/title/tt1856101/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_blad',
            title: "Blade Runner 2049",
            director: "D. Villeneuve (2017)"
        ),
        '/blade2': (context) => const InfoPage(
          title: "Blade Runner 2049",
          director: "D. Villeneuve",
          actors: "Harrison Ford\nRyan Gosling",
          runtime: "2:43",
          rating1: "88%",
          rating2: "8.0/10",
        ),
        '/inception': (context) => const PhotoPage(
            photo: "images/inception.png",
            site: 'https://www.imdb.com/title/tt1375666/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inceptio',
            title: "Inception",
            director: "Chris Nolan (2010)"
        ),
        '/inception2': (context) => const InfoPage(
          title: "Inception",
          director: "Chris Nolan",
          actors: "Leonardo DiCaprio\nElliot Page",
          runtime: "2:28",
          rating1: "87%",
          rating2: "8.8/10",
        ),
        '/drive': (context) =>  const PhotoPage(
          photo: "images/drive.png",
          site: 'https://www.imdb.com/title/tt0780504/?ref_=fn_al_tt_1',
          title: "Drive",
          director: "Nicolas Refn (2011)",
        ),
        '/drive2': (context) => const InfoPage(
          title: "Drive",
          director: "Nicholas Refn",
          actors: "Ryan Gosling\nBryan Cranston",
          runtime: "1:40",
          rating1: "93%",
          rating2: "7.8/10",
        ),
        '/batman': (context) =>  const PhotoPage(
          photo: "images/batman.png",
          site: 'https://www.imdb.com/title/tt1877830/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_batman',
          title: "The Batman",
          director: "Matt Reeves (2022)",
        ),
        '/batman2': (context) => const InfoPage(
          title: "Batman",
          director: "Matt Reeves",
          actors: "Robert Pattinson\nZoe Kravitz",
          runtime: "2:56",
          rating1: "85%",
          rating2: "7.8/10",
        ),
        '/topgun': (context) =>  const PhotoPage(
          photo: "images/topgun.png",
          site: 'https://www.imdb.com/title/tt0092099/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_topgun',
          title: "Top Gun",
          director: "Tony Scott (1986)",
        ),
        '/topgun2': (context) => const InfoPage(
          title: "Top Gun",
          director: "Tony Scott",
          actors: "Tom Cruise\nTim Robbins",
          runtime: "1:49",
          rating1: "85%",
          rating2: "6.9/10",
        ),
        '/fury': (context) =>  const PhotoPage(
          photo: "images/fury.png",
          site: 'https://www.imdb.com/title/tt2713180/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_fury',
          title: "Fury",
          director: "David Ayer (2014)",
        ),
        '/fury2': (context) => const InfoPage(
          title: "Fury",
          director: "David Ayer",
          actors: "Brad Pitt\nShia LaBeouf",
          runtime: "2:14",
          rating1: "76%",
          rating2: "7.6/10",
        ),
        '/aquietplace': (context) =>  const PhotoPage(
          photo: "images/quiet_place.png",
          site: 'https://www.imdb.com/title/tt6644200/?ref_=nv_sr_srsg_0_tt_6_nm_2_q_a%2520qui',
          title: "A Quiet Place",
          director: "J. Krasinski (2018)",
        ),
        '/aquietplace2': (context) => const InfoPage(
          title: "A Quiet Place",
          director: "J. Krasinski",
          actors: "Emily Blunt\nJohn Krasinski",
          runtime: "1:30",
          rating1: "96%",
          rating2: "7.5/10",
        ),
        '/split': (context) =>  const PhotoPage(
          photo: "images/split.png",
          site: 'https://www.imdb.com/title/tt4972582/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_split',
          title: "Split",
          director: "Shyamalan (2016)",
        ),
        '/split2': (context) => const InfoPage(
          title: "Split",
          director: "Shyamalan",
          actors: "James McAvoy\nAnya Taylor-Joy",
          runtime: "1:57",
          rating1: "78%",
          rating2: "7.3/10",
        ),
        '/americanpsycho': (context) =>  const PhotoPage(
          photo: "images/american_psycho.png",
          site: 'https://www.imdb.com/title/tt0144084/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_american%2520ps',
          title: "American Pyscho",
          director: "Mary Harron (2000)",
        ),
        '/americanpsycho2': (context) => const InfoPage(
          title: "American Psycho",
          director: "Mary Harron",
          actors: "Christian Bale\nJustin Theroux",
          runtime: "1:42",
          rating1: "68%",
          rating2: "7.6/10",
        ),
        '/jaws': (context) =>  const PhotoPage(
          photo: "images/jaws.png",
          site: 'https://www.imdb.com/title/tt0073195/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_jaws',
          title: "Jaws",
          director: "Spielberg (1975)",
        ),
        '/jaws2': (context) => const InfoPage(
          title: "Jaws",
          director: "Spielberg",
          actors: "Roy Scheider\nRobert Shaw",
          runtime: "2:04",
          rating1: "97%",
          rating2: "8.1/10",
        ),
        '/thehangover': (context) =>  const PhotoPage(
          photo: "images/hangover.png",
          site: 'https://www.imdb.com/title/tt1119646/?ref_=nv_sr_srsg_3_tt_8_nm_0_q_the%2520han',
          title: "The Hangover",
          director: "Todd Phillips (2009)",
        ),
        '/thehangover2': (context) => const InfoPage(
          title: "The Hangover",
          director: "Todd Phillips",
          actors: "Zach Galifianakis\nBradley Cooper",
          runtime: "1:40",
          rating1: "79%",
          rating2: "7.7/10",
        ),
        '/theniceguys': (context) =>  const PhotoPage(
          photo: "images/nice_guys.png",
          site: 'https://www.imdb.com/title/tt3799694/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520nice',
          title: "The Nice Guys",
          director: "Shane Black (2016)",
        ),
        '/theniceguys2': (context) => const InfoPage(
          title: "The Nice Guys",
          director: "Shane Black",
          actors: "Russel Crowe\nRyan Gossling",
          runtime: "1:56",
          rating1: "91%",
          rating2: "7.4/10",
        ),
        '/21jumpstreet': (context) =>  const PhotoPage(
          photo: "images/21.png",
          site: 'https://www.imdb.com/title/tt1232829/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_21%2520jump',
          title: "21 Jump Street",
          director: "Phil Lord (2012)",
        ),
        '/21jumpstreet2': (context) => const InfoPage(
          title: "21 Jump Street",
          director: "Phil Lord",
          actors: "Jonah Hill\nChanning Tatum",
          runtime: "1:49",
          rating1: "85%",
          rating2: "7.2/10",
        ),
        '/badboys': (context) =>  const PhotoPage(
          photo: "images/bad_boys.png",
          site: 'https://www.imdb.com/title/tt0112442/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_bad%2520boy',
          title: "Bad Boys",
          director: "Michael Bay (1995)",
        ),
        '/badboys2': (context) => const InfoPage(
          title: "Bad Boys",
          director: "Michael Bay",
          actors: "Will Smith\nMartin Lawrence",
          runtime: "1:59",
          rating1: "43%",
          rating2: "6.8/10",
        ),

      },
    );
  }
}

