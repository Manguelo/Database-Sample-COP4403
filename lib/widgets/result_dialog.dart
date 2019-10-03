import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPane extends StatelessWidget {
  ResultPane({this.header, this.body, this.color});

  final Color color;
  final String header;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          header,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 15, 25, 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              padding: EdgeInsets.all(10),
              color: color,
              child: Text(
                body,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
