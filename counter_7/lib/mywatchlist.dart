import 'package:counter_7/drawer.dart';
import 'package:counter_7/movie.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/to_watch.dart';

import 'package:flutter/material.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  Future<List<ToWatch>> fetchToWatch() async {
    var url = Uri.parse(
        'https://pbp-assignment-2-roynbb.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object ToDo
    List<ToWatch> listToWatch = [];
    for (var d in data) {
      if (d != null) {
        listToWatch.add(ToWatch.fromJson(d));
      }
    }

    return listToWatch;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const DrawerApp(),
        body: Column(children: [
          FutureBuilder(
            future: fetchToWatch(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Movie(movie: snapshot.data![index]),
                                  ));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12
                              ),
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, blurRadius: 2.0)
                              ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${snapshot.data![index].title}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ));
                }
              }
            }),
            const Text("test"),
        ],)
        
        );
  }
}
