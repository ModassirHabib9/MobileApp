import 'package:flutter/material.dart';

class MobList extends StatelessWidget {
  final name;
  final camera;
  final cpu;
  final price;
  final memory;
  final battery;
  MobList(
      {this.battery,
      this.camera,
      this.cpu,
      this.memory,
      this.name,
      this.price});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 160,
        width: 100,
        child: Card(
          child: Row(
            children: [
              Expanded(flex: 1, child: Image.asset("assets/childs.jpg")),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topRight,
                  height: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(name, textAlign: TextAlign.center),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            camera,
                            style: TextStyle(color: Colors.grey),
                          )),
                          Text(
                            "Camera",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            cpu,
                            style: TextStyle(color: Colors.grey),
                          )),
                          Text(
                            "Cpu",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            memory,
                            style: TextStyle(color: Colors.grey),
                          )),
                          Text(
                            "Memory",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            battery,
                            style: TextStyle(color: Colors.grey),
                          )),
                          Text(
                            "battery",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.red,
                            // margin: EdgeInsets.only(top: 12),
                            child: Text(price),
                          ),
                          Text("price: "),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed("MobileDetails");
        // Navigator.of(context).pushNamed('samsung');
      },
    );
  }
}
