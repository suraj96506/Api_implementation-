import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Usermodel.dart';

class FetchUser {
  var data = [];
  List<Userlist> result = [];
  String fetchurl = "https://mmr-allapi.herokuapp.com/recipe";

  Future<List<Userlist>> getUserList({String query}) async {
    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        result = data.map((e) => Userlist.fromJson(e)).toList();
        if (query != null) {
          result = result
              .where((element) =>
                  element.name.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {
        print("Api error");
      }
    } on Exception catch (e) {
      print("error $e");
    }
    return result;
  }
}
