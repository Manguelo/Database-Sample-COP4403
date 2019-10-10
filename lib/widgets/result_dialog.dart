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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          header,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Card(
              elevation: 4,
              color: color,
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 0),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topRight: const Radius.circular(4.0),
                    bottomRight: const Radius.circular(4.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        body,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
