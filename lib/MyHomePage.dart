import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Offset? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 160,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              backgroundColor: Colors.indigo.shade900,
              title: const Center(
                  child: Text(
                    "Movie Lists",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
              flexibleSpace: FlexibleSpaceBar(
                //FIX THE PADDING
                // titlePadding: const EdgeInsetsDirectional.only(start: 0, bottom: 16),
                centerTitle: true,
                background: Image.asset('images/movie_ticket.png'),
              )
          ),

          SliverPersistentHeader(
            pinned: true,
            delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.amber,
                    child: const Center(
                      child: Text(
                        "Drama",
                        style: TextStyle(
                            fontSize: 35
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                              onTap: (){
                                Navigator.pushNamed(context, '/oppenheimer');
                              },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/oppenheimer2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Oppenheimer_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt15398776/?ref_=nv_sr_srsg_0_tt_4_nm_4_q_oppen"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
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

                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/short');
                            },
                            onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/short2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Big_Short_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1596363/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_the%2520big"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: const Image(image: AssetImage("images/the_big_short.png"),),
                            title: const Text("The Big Short"),
                            subtitle: const Text("Adam McKay (2015)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),),
                        ),
                      ),

                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/ford');
                            },
                            onLongPress: (){
                              showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(
                                  position!.dx,
                                  position!.dy,
                                  position!.dx,
                                  position!.dy,
                                ),
                                items: [
                                  PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/ford2');},child: const Text('Movie Info'),),
                                  PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Ford_v_Ferrari"));}, child: const Text('Wikipedia'),),
                                  PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1950186/?ref_=nv_sr_srsg_0_tt_1_nm_0_q_fird%2520vs%2520fe"));}, child: const Text('IMDb'),),
                                  // add more options here
                                ],
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/ford_vs_ferrari.png"),),
                            title: Text("Ford vs Ferrari"),
                            subtitle: Text("James Mangold (2019)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/dunkirk');
                            },
                            onLongPress: (){
                              showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(
                                  position!.dx,
                                  position!.dy,
                                  position!.dx,
                                  position!.dy,
                                ),
                                items: [
                                  PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/dunkirk2');},child: const Text('Movie Info'),),
                                  PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Dunkirk_(2017_film)"));}, child: const Text('Wikipedia'),),
                                  PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt5013056/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_dunkirk"));}, child: const Text('IMDb'),),
                                  // add more options here
                                ],
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/dunkirk.png"),),
                            title: Text("Dunkirk"),
                            subtitle: Text("Chris Nolan (2017)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),
                      ),)
                    ],
                  ),
                );
              },
              childCount: 1,
            ),

          ),

          SliverPersistentHeader(
              pinned: true,
              delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.amber.shade400,
                    child: Center(
                      child: Text(
                        "Science Fiction",
                        style: TextStyle(
                            fontSize: 35
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/dune');
                            },
                            onLongPress: (){
                              showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(
                                  position!.dx,
                                  position!.dy,
                                  position!.dx,
                                  position!.dy,
                                ),
                                items: [
                                  PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/dune2');},child: const Text('Movie Info'),),
                                  PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Dune_(2021_film)"));}, child: const Text('Wikipedia'),),
                                  PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1160419/?ref_=nv_sr_srsg_3_tt_8_nm_0_q_dune"));}, child: const Text('IMDb'),),
                                  // add more options here
                                ],
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/dune.png"),),
                            title: Text("Dune"),
                            subtitle: Text("D. Villeneuve (2021)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/interstellar');
                            },
                            onLongPress: (){
                              showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(
                                  position!.dx,
                                  position!.dy,
                                  position!.dx,
                                  position!.dy,
                                ),
                                items: [
                                  PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/interstellar2');},child: const Text('Movie Info'),),
                                  PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Interstellar_(film)"));}, child: const Text('Wikipedia'),),
                                  PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0816692/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inter"));}, child: const Text('IMDb'),),
                                  // add more options here
                                ],
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/interstellar.png"),),
                            title: Text("Interstellar"),
                            subtitle: Text("Chris Nolan (2014)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/blade');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/blade2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Blade_Runner_2049"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1856101/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_blade"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/bladerunner_2049.png"),),
                            title: Text("Blade Runner 2049"),
                            subtitle: Text("D. Villeneuve (2017)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/inception');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/incpetion2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Inception"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1375666/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_inceptio"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/inception.png"),),
                            title: Text("Inception"),
                            subtitle: Text("Chris Nolan (2010)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
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
            delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.amber.shade300,
                    child: Center(
                      child: Text(
                        "Action",
                        style: TextStyle(
                            fontSize: 35
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/drive');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/drive2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Drive_(2011_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0780504/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_drive"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/drive.png"),),
                            title: Text("Drive"),
                            subtitle: Text("Nicolas Refn (2011)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/batman');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/batman2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Batman_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1877830/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520batman"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/batman.png"),),
                            title: Text("The Batman"),
                            subtitle: Text("Matt Reeves (2022)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/topgun');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/topgun2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Top_Gun"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0092099/?ref_=nv_sr_srsg_3_tt_7_nm_1_q_top%2520gun"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/topgun.png"),),
                            title: Text("Top Gun"),
                            subtitle: Text("Tony Scott (1986)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),)
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/fury');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/fury2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Fury_(2014_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt2713180/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_fury"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/fury.png"),),
                            title: Text("Fury"),
                            subtitle: Text("David Ayer (2014)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
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
            delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.amber.shade200,
                    child: Center(
                      child: Text(
                        "Horror",
                        style: TextStyle(
                            fontSize: 35
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/aquietplace');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/aquietplace2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/A_Quiet_Place"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt6644200/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_a%2520quiet%2520plac"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/quiet_place.png"),),
                            title: Text("A Quiet Place"),
                            subtitle: Text("J. Krasinski (2018)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/split');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/split2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Split_(2016_American_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt4972582/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_split"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/split.png"),),
                            title: Text("Split"),
                            subtitle: Text("Shyamalan (2016)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),)
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/americanpsycho');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/americanpsycho2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/American_Psycho_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0144084/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_american%2520ps"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/american_psycho.png"),),
                            title: Text("American Psycho"),
                            subtitle: Text("Mary Harron (2000)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),)
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/jaws');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/jaws2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Jaws_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0073195/?ref_=nv_sr_srsg_0_tt_7_nm_1_q_jaws"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/jaws.png"),),
                            title: Text("Jaws"),
                            subtitle: Text("Spielberg (1975)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),)
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
            delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.amber.shade100,
                    child: Center(
                      child: Text(
                        "Comedy",
                        style: TextStyle(
                            fontSize: 35
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/thehangover');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/thehangover2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Hangover"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1119646/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520hang"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/hangover.png"),),
                            title: Text("The Hangover"),
                            subtitle: Text("Todd Phillips (2009)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),)
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/theniceguys');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/theniceguys2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/The_Nice_Guys"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt3799694/?ref_=nv_sr_srsg_0_tt_8_nm_0_q_the%2520nice"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/nice_guys.png"),),
                            title: Text("The Nice Guys"),
                            subtitle: Text("Shane Black (2016)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),)
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/21jumpstreet');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/21jumpstreet2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/21_Jump_Street_(film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt1232829/?ref_=nv_sr_srsg_3_tt_6_nm_2_q_21"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/21.png"),),
                            title: Text("21 Jump Street"),
                            subtitle: Text("Phil Lord (2012)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),)
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.indigo.shade900,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: GestureDetector(
                            onTapDown: (details){
                              position = details.globalPosition;
                            },
                            child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/badboys');
                            },
                              onLongPress: (){
                                showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    position!.dx,
                                    position!.dy,
                                    position!.dx,
                                    position!.dy,
                                  ),
                                  items: [
                                    PopupMenuItem(value: 1, onTap: (){Navigator.pushNamed(context, '/badboys2');},child: const Text('Movie Info'),),
                                    PopupMenuItem(value: 2, onTap: (){launchUrl(Uri.parse("https://en.wikipedia.org/wiki/Bad_Boys_(1995_film)"));}, child: const Text('Wikipedia'),),
                                    PopupMenuItem(value: 3, onTap: (){launchUrl(Uri.parse("https://www.imdb.com/title/tt0112442/?ref_=nv_sr_srsg_6_tt_8_nm_0_q_badbo"));}, child: const Text('IMDb'),),
                                    // add more options here
                                  ],
                                );
                              },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/bad_boys.png"),),
                            title: Text("Bad Boys"),
                            subtitle: Text("Michael Bay (1995)"),
                            isThreeLine: true,
                            tileColor: Colors.blue.shade50,
                          ),
                        ),)
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
      // This trailing comma makes auto-formatting nicer for build methods.
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
