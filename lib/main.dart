import 'package:flutter/material.dart';
import 'package:mobile_shopping/pages/MobilesDetails.dart';
import 'package:mobile_shopping/pages/Test.dart';
import 'package:mobile_shopping/pages/categories.dart';
import 'package:mobile_shopping/pages/extra_page.dart';
import 'package:mobile_shopping/pages/home.dart';
import 'package:mobile_shopping/pages/samsung.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MobileApp",
      home: Home(), //Test
      routes: {
        'home': (context) {
          return Test();
        },
        'categories': (context) {
          return Categories();
        },
        'samsung': (context) {
          return Samsung();
        },
        'MobileDetails': (context) {
          return MobilesDetails();
        },
        'extra_page': (context) {
          return CustomStoryView();
        },
      },
    );
  }
}

//Scaffold(
//         appBar: AppBar(
//           title: Text("Home"),
//           brightness: Brightness.dark,
//           backgroundColor: Colors.blue,
//           elevation: 6,
//           leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
//         ),
//         endDrawer: Drawer(
//           child: ListView(
//             children: [
//               UserAccountsDrawerHeader(
//                 accountName: Text("ModassirHabib"),
//                 accountEmail: Text("Modassirhabib9@gmail.com"),
//                 currentAccountPicture: CircleAvatar(
//                   child: Icon(Icons.person),
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   image: DecorationImage(image: NetworkImage(""), fit: BoxFit.cover),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
