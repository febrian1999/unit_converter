import 'package:flutter/material.dart';

appDrawer() {
  Container(
    color: Colors.blue,
    padding: EdgeInsets.all(16),
    child: SafeArea(
      child: Column(
        children: [
          Container(
            child: Text(
              "Text",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
