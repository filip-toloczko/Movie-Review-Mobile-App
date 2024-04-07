import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Store the offset for where the user clicks
  Offset? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: CustomScrollView(
        slivers: [
          //Create the appbar
          SliverAppBar(
            //Appbar is pinned
            pinned: true,
            //Max and min heights for the appbar
            expandedHeight: 160,
            collapsedHeight: 60,
            //make the appbar rounded
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            backgroundColor: Colors.indigo.shade900,
            //Display the title of the app
            title: Center(
              child: Text(
                "Movie Lists",
                style: TextStyle(
                  color: Colors.blue.shade50,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              //Add the image
              background: Image.asset('images/movie_ticket.png'),
            )
          ),

          //Header for drama films
          SliverPersistentHeader(
            //Pinned and not floating
            pinned: true,
            floating: false,
            delegate: CategoryHeader(
              //Minimum and maximum heights for the header
              minExtent: 50,
              maxExtent: 85,
              child: Container(
                color: Colors.amber,
                child: Center(
                  //Display Header Text
                  child: Text(
                    "Drama",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              )
            ),
          ),

          //List for drama films
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  height: 200,
                  //List to store cards
                  child: ListView(
                    //Make the list horizontal
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      //Oppenheimer
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/oppenheimer');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/oppenheimer2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Oppenheimer_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt15398776/?ref_=nv_sr_srsg_0_tt_4_nm_4_q_oppen"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/oppenheimer.png"),
                              ),
                              title: Text("Oppenheimer"),
                              subtitle: Text("Chris Nolan (2023)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                      //The Big Short
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/short');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/short2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Big_Short_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1596363/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_the%2520big"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/the_big_short.png"),
                              ),
                              title: const Text("The Big Short"),
                              subtitle: const Text("Adam McKay (2015)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        ),
                      ),
                      //Ford vs Ferrari
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/ford');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/ford2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Ford_v_Ferrari"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1950186/?ref_=nv_sr_srsg_0_tt_1_nm_0_q_fird%2520vs%2520fe"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/ford_vs_ferrari.png"),
                              ),
                              title: const Text("Ford vs Ferrari"),
                              subtitle: const Text("James Mangold (2019)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        ),
                      ),
                      //Dunkirk
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/dunkirk');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/dunkirk2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Dunkirk_(2017_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt5013056/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_dunkirk"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/dunkirk.png"),
                              ),
                              title: const Text("Dunkirk"),
                              subtitle: const Text("Chris Nolan (2017)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),

          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: CategoryHeader(
                //Minimum and maximum heights for the header
                minExtent: 50,
                maxExtent: 85,
                child: Container(
                  color: Colors.amber.shade400,
                  child: Center(
                    //Display Header Text
                    child: Text(
                      "Science Fiction",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.indigo.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ),
              )
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  height: 200,
                  //List to store cards
                  child: ListView(
                    //Make the list horizontal
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      //Dune
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/dune');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/dune2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Dune_(2021_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1160419/?ref_=nv_sr_srsg_3_tt_8_nm_0_q_dune"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/dune.png"),
                              ),
                              title: const Text("Dune"),
                              subtitle: const Text("D. Villeneuve (2021)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                      //Interstellar
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/interstellar');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/interstellar2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Interstellar_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0816692/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inter"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/interstellar.png"),
                              ),
                              title: const Text("Interstellar"),
                              subtitle: const Text("Chris Nolan (2014)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        ),
                      ),
                      //Blade Runner 2049
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/blade');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/blade2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Blade_Runner_2049"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1856101/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_blade"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/bladerunner_2049.png"),
                              ),
                              title: const Text("Blade Runner 2049"),
                              subtitle: const Text("D. Villeneuve (2017)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                      //Inception
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/inception');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/incpetion2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Inception"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1375666/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inceptio"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/inception.png"),
                              ),
                              title: const Text("Inception"),
                              subtitle: const Text("Chris Nolan (2010)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),

          ),

          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: CategoryHeader(
              //Minimum and maximum heights for the header
              minExtent: 50,
              maxExtent: 85,
              child: Container(
                color: Colors.amber.shade300,
                child: Center(
                  //Display Header Text
                  child: Text(
                    "Action",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              )
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  height: 200,
                  //List to store cards
                  child: ListView(
                    //Make the list horizontal
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      //Drive
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/drive');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/drive2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Drive_(2011_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0780504/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_drive"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/drive.png"),
                              ),
                              title: const Text("Drive"),
                              subtitle: const Text("Nicolas Refn (2011)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                      //The Batman
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/batman');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/batman2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Batman_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1877830/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520batman"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/batman.png"),
                              ),
                              title: const Text("The Batman"),
                              subtitle: const Text("Matt Reeves (2022)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                      //Top Gun
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/topgun');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/topgun2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Top_Gun"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0092099/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_top%2520gun"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/topgun.png"),
                              ),
                              title: const Text("Top Gun"),
                              subtitle: const Text("Tony Scott (1986)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        )
                      ),
                      //Fury
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/fury');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/fury2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Fury_(2014_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt2713180/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_fury"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/fury.png"),
                              ),
                              title: const Text("Fury"),
                              subtitle: const Text("David Ayer (2014)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),

          ),

          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: CategoryHeader(
              //Minimum and maximum heights for the header
              minExtent: 50,
              maxExtent: 85,
              child: Container(
                color: Colors.amber.shade200,
                child: Center(
                  //Display Header Text
                  child: Text(
                    "Horror",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              )
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  height: 200,
                  //List to store cards
                  child: ListView(
                    //Make the list horizontal
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      //A Quiet Place
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/aquietplace');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/aquietplace2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/A_Quiet_Place"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt6644200/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_a%2520quiet%2520plac"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/quiet_place.png"),
                              ),
                              title: const Text("A Quiet Place"),
                              subtitle: const Text("J. Krasinski (2018)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                      //Split
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/split');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/split2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Split_(2016_American_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt4972582/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_split"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/split.png"),
                              ),
                              title: const Text("Split"),
                              subtitle: const Text("Shyamalan (2016)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          )
                        ),
                      ),
                      //American Psycho
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/americanpsycho');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/americanpsycho2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/American_Psycho_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0144084/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_american%2520ps"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/american_psycho.png"),
                              ),
                              title: const Text("American Psycho"),
                              subtitle: const Text("Mary Harron (2000)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        )
                      ),
                      //Jaws
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/jaws');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/jaws2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Jaws_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0073195/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_jaws"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/jaws.png"),
                              ),
                              title: const Text("Jaws"),
                              subtitle: const Text("Spielberg (1975)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),

          ),

          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: CategoryHeader(
              //Minimum and maximum heights for the header
              minExtent: 50,
              maxExtent: 85,
              child: Container(
                color: Colors.amber.shade100,
                child: Center(
                  //Display Header Text
                  child: Text(
                    "Comedy",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              )
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  height: 200,
                  //List to store cards
                  child: ListView(
                    //Make the list horizontal
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      //The Hangover
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/thehangover');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/thehangover2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Hangover"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1119646/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520hang"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/hangover.png"),
                              ),
                              title: const Text("The Hangover"),
                              subtitle: const Text("Todd Phillips (2009)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        )
                      ),
                      //The Nice Guys
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/theniceguys');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/theniceguys2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Nice_Guys"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt3799694/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520nice"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/nice_guys.png"),
                              ),
                              title: const Text("The Nice Guys"),
                              subtitle: const Text("Shane Black (2016)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        )
                      ),
                      //21 Jump Street
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/21jumpstreet');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/21jumpstreet2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/21_Jump_Street_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1232829/?ref_=nv_sr_srsg_3_tt_6_nm_2_q_21"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(
                                image: AssetImage("images/21.png"),
                              ),
                              title: const Text("21 Jump Street"),
                              subtitle: const Text("Phil Lord (2012)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        ),
                      ),
                      //Bad Boys
                      Container(
                        width: 300,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          //Get the position of where the user clicks
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              //On click open the photo page
                              onTap: (){
                                Navigator.pushNamed(context, '/badboys');
                              },
                              //On hold being up menu
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  //Menu items to launch info page, wiki, and imdb
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/badboys2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Bad_Boys_(1995_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0112442/?ref_=nv_sr_srsg_6_tt_8_nm_0_q_badbo"));}, child: const Text('IMDb'),),
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              //Display image, title, director/date
                              leading: const Image(image: AssetImage("images/bad_boys.png"),),
                              title: const Text("Bad Boys"),
                              subtitle: const Text("Michael Bay (1995)"),
                              isThreeLine: true,
                              tileColor: Colors.blue.shade50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryHeader extends SliverPersistentHeaderDelegate{
  CategoryHeader({
    required this.minExtent,
    required this.maxExtent,
    required this.child,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent){
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate){
    return true;
  }

  @override
  final double minExtent;
  @override
  final double maxExtent;
  final Widget child;
}
