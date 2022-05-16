import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  Length({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  final formGlobalKey = GlobalKey<FormState>();

  TextEditingController controllerLengthA = TextEditingController();
  TextEditingController controllerLengthB = TextEditingController();

  String _valLengthA = "km";
  String _valLengthB = "m";

  int lengthA = 0;
  int lengthB = 0;

  List _listLength = [
    "km",
    "m",
    "cm",
    "mm",
    "mile",
  ];

  lengthAOnChanged() {
    if (controllerLengthA.text.isNotEmpty) {
      lengthA = int.parse(controllerLengthA.text);

      switch (_valLengthA) {
        case "km":
          switch (_valLengthB) {
            case "km":
              {
                controllerLengthB.text = lengthA.toString();
              }
              break;
            case "m":
              {
                controllerLengthB.text = (lengthA * 1000).toString();
              }
              break;
            case "cm":
              {
                controllerLengthB.text = (lengthA * 100000).toString();
              }
              break;
            case "mm":
              {
                controllerLengthB.text = (lengthA * 1000000).toString();
              }
              break;
            case "mile":
              {
                controllerLengthB.text = (lengthA * 0.621371).toString();
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
            case "m":
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
    } else {
      controllerLengthB.text = "0";
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
                              controller: controllerLengthA,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 4, 12, 4),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              onChanged: (text) {
                                lengthAOnChanged();
                              },
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
                              controller: controllerLengthB,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(12, 4, 12, 4),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.black12,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: 18,
                              ),
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
