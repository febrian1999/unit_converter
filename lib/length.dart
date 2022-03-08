import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  Length({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(32),
                child: Text(
                  "Length",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
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
