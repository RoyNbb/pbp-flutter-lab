import 'package:flutter/material.dart';
import 'package:counter_7/model/to_watch.dart';
import 'package:counter_7/drawer.dart';

class Movie extends StatelessWidget {
  const Movie({super.key, required this.movie});

  final ToWatch movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        drawer: const DrawerApp(),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(movie.title,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Text(
                      "Release Date: ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(movie.releaseDate,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ))
                  ])),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Text(
                      "Rating: ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("${movie.rating}/10",
                        style: const TextStyle(
                          fontSize: 20.0,
                        ))
                  ])),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    const Text(
                      "Status: ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(movie.watched == true ? "watched" : "not watched",
                        style: const TextStyle(
                          fontSize: 20.0,
                        ))
                  ])),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Review: ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(movie.review,
                          style: const TextStyle(
                            fontSize: 20.0,
                          )
                      )
                  )
                ])
            ),
            Expanded(child: Container()),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: const Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }))
          ],
        )
    );
  }
}
