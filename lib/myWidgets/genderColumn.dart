import 'package:flutter/material.dart';

class GenderColumn extends StatelessWidget {

  final IconData icon;
  final String cinsiyet;

  GenderColumn({@required this.icon,@required this.cinsiyet});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon),
        SizedBox(height: 10,),
        Text(
          cinsiyet,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}