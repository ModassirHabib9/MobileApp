import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("ModassirHabib"),
            accountEmail: Text("Modassirhabib9@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(image: AssetImage(""), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text(
              "Samsung Mobile",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushNamed('home');
            },
          ),
          ListTile(
            title: Text(
              "vivo Mobile",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushNamed('categories');
            },
          ),
          ListTile(
            title: Text("Infinix Mobile",
                style: TextStyle(fontSize: 18, color: Colors.black)),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushNamed('samsung');
            },
          ),
          ListTile(
            title: Text("Apple Mobile",
                style: TextStyle(fontSize: 18, color: Colors.black)),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushNamed('extra_page');
            },
          ),
        ],
      ),
    );
  }
}
