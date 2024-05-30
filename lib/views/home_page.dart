import 'package:flutter/material.dart';
import 'package:netflix_clone/services/movies_service.dart';

import 'movie_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> movies = [
    "movie1",
    "movie2",
    "movie3",
    "movie3",
    "movie3",
    "movie3",
    "movie3",
    "movie3",
    "movie3",
  ];


  @override
  void initState() {
    final service = MoviesService();
    service.searchMoviesAndShows("searchQuery");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("My List", style: TextStyle(fontSize: 30,),),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: movies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => movieItem(movies[index]),
              ),
            ),
            // Text("My List"),
            // ListView.builder(
            //   itemCount: movies.length,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) => movieItem(movies[index]),
            // ),
          ],
        ),
      ),
    );
  }

  movieItem(String movie) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (c) => MovieView()));
      },
      child: Container(
        height: 200,
        width: 100,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        color: Colors.grey,
        child: Text(movie),
      ),
    );
  }
}
