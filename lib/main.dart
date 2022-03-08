import 'package:flutter/material.dart';
import 'package:unit_converter/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Unit Converter'),
    );
  }
}

class Example extends StatefulWidget {
  Example({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Text("Example"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
