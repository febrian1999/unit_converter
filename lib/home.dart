import 'package:flutter/material.dart';
import 'package:unit_converter/drawer.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

lengthButtonOnPressed() {}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      drawer: Container(
        child: Column(
          children: [
            Container(
              child: Text("Text"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(32),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    lengthButtonOnPressed();
                  },
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.straighten,
                            // size: 24,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Length",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // child: Text(
                    //   "Length",
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //   ),
                    //   textAlign: TextAlign.left,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
