import 'package:flutter/material.dart';
import 'package:mobile_shopping/pages/Test.dart';
import 'package:mobile_shopping/widgets/MobList.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'dart:convert' as convert;

class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  var send = {'name': 'S20 Ultra', 'camera': '5 mpx'};
  final List<Map> details = [
    {
      'name': 'Samsung A30',
      'camera': '16 mpx',
      'cpu': 'OS 11',
      'battery': '5000mha',
      'price': '4000',
      'memory': '32/64GB'
    },
    {
      'name': 'Samsung A50',
      'camera': '48 mpx',
      'cpu': 'OS 12',
      'battery': '3000mha',
      'price': '4900',
      'memory': '8/128GB'
    },
  ];
  Future getData() async {
    var url = 'http://10.0.2.2:8080/mobile_shopping/mobtech/index.php';
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Samsung"),
          centerTitle: true,
        ),
        body: FutureBuilder<dynamic>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListView(
                    children: [
                      Text(snapshot.data[index]['na_id']),
                      Text(snapshot.data[index]['name']),
                      Text(snapshot.data[index]['last_name'])
                    ],
                  );
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
