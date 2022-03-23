import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  Length({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  final formGlobalKey = GlobalKey<FormState>();

  String _valLength1 = "Km";
  List _listLength1 = [
    "km",
    "m",
    "cm",
    "cm",
    "mm",
    "mile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(32),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 28,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Form(
                      key: formGlobalKey,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            child: TextFormField(),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: DropdownButton(
                              // hint: Text(""),
                              value: _valLength1,
                              items: _listLength1.map((items) {
                                return DropdownMenuItem(
                                  child: Text(items),
                                  value: items,
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _valLength1 = newValue.toString();
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: TextFormField(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(),
            ],
          ),
        ),
      ),
    );
  }
}
