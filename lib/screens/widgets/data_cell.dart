import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataCell extends StatelessWidget {
  DataCell({this.item});

  final Map<String, dynamic> item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Card(
        elevation: 4,
        color: Colors.indigoAccent,
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
            height: 55,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  item['email'].toString(),
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  item['password'].toString(),
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
