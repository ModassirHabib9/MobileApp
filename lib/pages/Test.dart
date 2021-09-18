import 'dart:convert';

import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        body: FutureBuilder(
            future: getData(),
            // initialData: initialData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return Container(
                        child: Text(snapshot.data[0]['title']),
                      );
                    });
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
