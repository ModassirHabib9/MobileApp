import 'package:flutter/material.dart';

class CustomStoryView extends StatefulWidget {
  @override
  _CustomStoryViewState createState() => _CustomStoryViewState();
}

class _CustomStoryViewState extends State<CustomStoryView>
    with SingleTickerProviderStateMixin {
  final List _colorsList = [
    Colors.indigo,
    Colors.indigo,
    Colors.indigo,
    Colors.indigo,
  ];
  final PageController _controller = PageController();
  double? _progressIndicators;
  int _page = 0;
  AnimationController? _animationController;
  bool dragEnded = true;
  Size? _pageSize;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController!.forward();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _pageSize = MediaQuery.of(context).size;
      _progressIndicators = (_pageSize!.width - 100) / 6;
    });
    super.initState();
  }

  @override
  void dispose() {
    // _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app"),
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.builder(
              controller: _controller,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: _colorsList[index],
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: _colorsList.length,
            ),
            Column(
              children: [
                SizedBox(
                    height: 100,
                    child: Center(
                      child: Text("Upload Documents",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )),
                Positioned(
                  top: 48,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: ([0, 1, 2, 3]
                        .map((e) => (e == _page)
                            ? Stack(
                                children: [
                                  Container(
                                    width: _progressIndicators,
                                    height: 8,
                                    color: Colors.black54,
                                  ),
                                  AnimatedBuilder(
                                    animation: _animationController!,
                                    builder: (ctx, widget) {
                                      return AnimatedContainer(
                                        width: _progressIndicators! *
                                            _animationController!.value,
                                        height: 8,
                                        color: Colors.teal,
                                        duration: Duration(milliseconds: 100),
                                      );
                                    },
                                  ),
                                ],
                              )
                            : Container(
                                width: _progressIndicators,
                                height: 8,
                                color:
                                    (_page >= e) ? Colors.teal : Colors.white70,
                              ))
                        .toList()),
                  ),
                ),
                SizedBox(height: 50),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Search"),
                  onPressed: () {
                    if (_controller.page != (_colorsList.length - 0)) {
                      setState(() {
                        _page = 0;
                      });
                    }
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Search"),
                  onPressed: () {
                    if (_controller.page != (_colorsList.length - 0)) {
                      setState(() {
                        _page = 1;
                      });
                    }
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Search"),
                  onPressed: () {
                    if (_controller.page != (_colorsList.length - 1)) {
                      setState(() {
                        _page = 2;
                      });
                    }
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("Search"),
                  onPressed: () {
                    if (_controller.page != (_colorsList.length - 1)) {
                      setState(() {
                        _page = 3;
                      });
                    }
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
