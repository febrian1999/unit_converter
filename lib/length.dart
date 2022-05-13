import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  Length({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  final formGlobalKey = GlobalKey<FormState>();

  String _valLengthA = "km";
  String _valLengthB = "m";
  List _listLength = [
    "km",
    "m",
    "cm",
    "mm",
    "mile",
  ];

  lengthAOnChanged() {
    switch (_valLengthA) {
      case "km":
        switch (_valLengthB) {
          case "m":
            {
              // *1000
            }
            break;
          case "cm":
            {
              // *100000
            }
            break;
          case "mm":
            {
              //
            }
            break;
          case "mile":
            {
              //
            }
            break;
          default:
        }
        break;
      case "m":
        switch (_valLengthB) {
          case "km":
            {
              //
            }
            break;
          case "cm":
            {
              //
            }
            break;
          case "mm":
            {
              //
            }
            break;
          case "mile":
            {
              //
            }
            break;
          default:
        }
        break;
      case "cm":
      case "mm":
      case "mile":
      default:
    }
  }

  lengthBonChanged() {}

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
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: DropdownButton(
                              // hint: Text(""),
                              value: _valLengthA,
                              items: _listLength.map((items) {
                                return DropdownMenuItem(
                                  child: Text(items),
                                  value: items,
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _valLengthA = newValue.toString();
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            child: DropdownButton(
                              // hint: Text(""),
                              value: _valLengthB,
                              items: _listLength.map((items) {
                                return DropdownMenuItem(
                                  child: Text(items),
                                  value: items,
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _valLengthB = newValue.toString();
                                });
                              },
                            ),
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
