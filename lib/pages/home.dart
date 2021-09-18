import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:mobile_shopping/widgets/mydrawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          brightness: Brightness.dark,
          backgroundColor: Colors.blue,
          elevation: 6,
          leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ),
        endDrawer: MyDrawer(),
        body: ListView(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                images: [
                  NetworkImage(
                      'https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBpY3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                  NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBXxj6IPg3UL8NLgO3bNcC_UKeXz7A8h2rnw&usqp=CAU'),
                  NetworkImage(
                      "https://images.pexels.com/photos/36029/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500")
                ],
                dotSize: 8,
                dotIncreaseSize: 2,
                dotColor: Colors.white70,
                dotBgColor: Colors.blue.withOpacity(0.5),
                boxFit: BoxFit.cover,
                dotIncreasedColor: Colors.white70,
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.all(10.0),
              child: Text("Categories",
                  style: TextStyle(color: Colors.blue, fontSize: 18)),
            ),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        "assets/childs.jpg",
                        fit: BoxFit.fill,
                        width: 80,
                        height: 80,
                      ),
                      subtitle: Container(
                        child: Text(
                          "Samsung",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        "assets/childs.jpg",
                        fit: BoxFit.fill,
                        width: 80,
                        height: 80,
                      ),
                      subtitle: Container(
                        child: Text(
                          "Samsung",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('categories');
                      },
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        "assets/childs.jpg",
                        fit: BoxFit.fill,
                        width: 80,
                        height: 80,
                      ),
                      subtitle: Container(
                        child: Text(
                          "Samsung",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                      title: Image.asset(
                        "assets/childs.jpg",
                        fit: BoxFit.fill,
                        width: 80,
                        height: 80,
                      ),
                      subtitle: Container(
                        child: Text(
                          "Samsung",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Categories",
                  style: TextStyle(color: Colors.blue, fontSize: 18)),
            ),
            Container(
              height: 400,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  InkWell(
                    child: GridTile(
                      child: Image.asset("assets/childs.jpg"),
                      footer: Container(
                        height: 20,
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          "P30 PRO",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      print("P30 Pro");
                    },
                  ),
                  GridTile(
                    child: Image.asset("assets/childs.jpg"),
                    footer: Container(
                      height: 20,
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        "P30 PRO",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  GridTile(
                    child: Image.asset("assets/childs.jpg"),
                    footer: Container(
                      height: 20,
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        "P30 PRO",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  GridTile(
                    child: Image.asset("assets/childs.jpg"),
                    footer: Container(
                      height: 20,
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        "P30 PRO",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
