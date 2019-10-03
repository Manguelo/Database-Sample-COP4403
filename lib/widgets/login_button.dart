import 'package:flutter/cupertino.dart';

class LoginButton extends StatelessWidget {
  LoginButton({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      alignment: FractionalOffset.center,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF28324E)),
        borderRadius: BorderRadius.all(const Radius.circular(6.0)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xFF28324E),
          fontSize: 15,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}
