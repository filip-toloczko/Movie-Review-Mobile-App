import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              backgroundColor: Colors.purple,
              title: Center(
                  child: const Text(
                    "Movie Lists",
                    style: TextStyle(
                      color: Colors.blue,
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
                    color: Colors.teal,
                    child: Center(
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
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/oppenheimer');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(
                              image: AssetImage("images/oppenheimer.png"),
                            ),
                            title: Text("Oppenheimer"),
                            subtitle: Text("Chris Nolan (2023)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),

                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/short');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/the_big_short.png"),),
                            title: Text("The Big Short"),
                            subtitle: Text("Adam McKay (2015)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),

                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/ford');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/ford_vs_ferrari.png"),),
                            title: Text("Ford vs Ferrari"),
                            subtitle: Text("James Mangold (2019)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),

                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/dunkirk');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/dunkirk.png"),),
                            title: Text("Dunkirk"),
                            subtitle: Text("Chris Nolan (2017)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
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

          SliverPersistentHeader(
              pinned: true,
              delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.greenAccent,
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
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/dune');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/dune.png"),),
                            title: Text("Dune"),
                            subtitle: Text("D. Villeneuve (2021)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/interstellar');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/interstellar.png"),),
                            title: Text("Interstellar"),
                            subtitle: Text("Chris Nolan (2014)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/blade');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/bladerunner_2049.png"),),
                            title: Text("Blade Runner 2049"),
                            subtitle: Text("D. Villeneuve (2017)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/inception');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/inception.png"),),
                            title: Text("Inception"),
                            subtitle: Text("Chris Nolan (2010)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
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

          SliverPersistentHeader(
            pinned: true,
            delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.lightGreen,
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
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/drive');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/drive.png"),),
                            title: Text("Drive"),
                            subtitle: Text("Nicolas Refn (2011)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/batman');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/batman.png"),),
                            title: Text("The Batman"),
                            subtitle: Text("Matt Reeves (2022)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/topgun');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/topgun.png"),),
                            title: Text("Top Gun"),
                            subtitle: Text("Tony Scott (1986)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/fury');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/fury.png"),),
                            title: Text("Fury"),
                            subtitle: Text("David Ayer (2014)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
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

          SliverPersistentHeader(
            pinned: true,
            delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.yellow,
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
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/aquietplace');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/quiet_place.png"),),
                            title: Text("A Quiet Place"),
                            subtitle: Text("J. Krasinski (2018)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/split');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/split.png"),),
                            title: Text("Split"),
                            subtitle: Text("Shyamalan (2016)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/americanpsycho');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/american_psycho.png"),),
                            title: Text("American Psycho"),
                            subtitle: Text("Mary Harron (2000)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/jaws');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/jaws.png"),),
                            title: Text("Jaws"),
                            subtitle: Text("Spielberg (1975)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
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

          SliverPersistentHeader(
            pinned: true,
            delegate: CategoryHeader(
                minExtent: 65.0,
                maxExtent: 85.0,
                child: Container(
                    color: Colors.amber,
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
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/thehangover');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/hangover.png"),),
                            title: Text("The Hangover"),
                            subtitle: Text("Todd Phillips (2009)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/theniceguys');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/nice_guys.png"),),
                            title: Text("The Nice Guys"),
                            subtitle: Text("Shane Black (2016)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/21jumpstreet');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/21.png"),),
                            title: Text("21 Jump Street"),
                            subtitle: Text("Phil Lord (2012)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, '/badboys');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            leading: Image(image: AssetImage("images/bad_boys.png"),),
                            title: Text("Bad Boys"),
                            subtitle: Text("Michael Bay (1995)"),
                            isThreeLine: true,
                            tileColor: Colors.white,
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
