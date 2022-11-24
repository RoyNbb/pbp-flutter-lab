import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/to_watch.dart';

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