import 'package:flutter/material.dart';

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
      body: Container(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Text("Unit Converter"),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    lengthButtonOnPressed();
                  },
                  child: Text("Length"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
