import 'package:flutter/material.dart';
import 'package:mobile_shopping/widgets/mydrawer.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Categories"),
          centerTitle: true,
        ),
        endDrawer: MyDrawer(),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            InkWell(
              child: Container(
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/childs.jpg",
                        fit: BoxFit.cover,
                      )),
                      Container(
                          child: Text(
                        "brand",
                        style: TextStyle(fontSize: 18),
                      ))
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('samsung');
              },
            ),
            Container(
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset(
                      "assets/childs.jpg",
                      fit: BoxFit.cover,
                    )),
                    Container(
                        child: Text(
                      "brand",
                      style: TextStyle(fontSize: 18),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset(
                      "assets/childs.jpg",
                      fit: BoxFit.cover,
                    )),
                    Container(
                        child: Text(
                      "brand",
                      style: TextStyle(fontSize: 18),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset(
                      "assets/childs.jpg",
                      fit: BoxFit.cover,
                    )),
                    Container(
                        child: Text(
                      "brand",
                      style: TextStyle(fontSize: 18),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
