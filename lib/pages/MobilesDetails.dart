import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobilesDetails extends StatefulWidget {
  @override
  _MobilesDetailsState createState() => _MobilesDetailsState();
}

class _MobilesDetailsState extends State<MobilesDetails> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MobileDetails"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              child: GridTile(
                child: Image.asset("assets/childs.jpg"),
                footer: Container(
                    height: 80,
                    color: Colors.black.withOpacity(0.3),
                    // alignment: Alignment.center,
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "P30 Pro",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "1200\$",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Mobiles",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Samsung:  ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "P30 Pro",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    padding: EdgeInsets.all(10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Vivo Y: 30",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextSpan(
                            text: "Vivo Y: 30  ",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Samsung:  ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "P30 Pro",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    padding: EdgeInsets.all(10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Vivo Y: 30",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextSpan(
                            text: "Vivo Y: 30  ",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
