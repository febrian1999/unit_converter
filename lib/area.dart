import 'package:flutter/material.dart';

class Area extends StatefulWidget {
  Area({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  final formGlobalKey = GlobalKey<FormState>();

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
                            child: ExpansionPanelList(
                              expansionCallback:
                                  (int index, bool isExpanded) {},
                              children: [
                                ExpansionPanel(
                                  headerBuilder:
                                      (BuildContext context, bool isExpanded) {
                                    return ListTile(
                                        // title: Text('Item 1'),
                                        );
                                  },
                                  body: ListTile(
                                    title: Text('Item 1 child'),
                                    subtitle: Text('Details goes here'),
                                  ),
                                  isExpanded: true,
                                ),
                              ],
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
