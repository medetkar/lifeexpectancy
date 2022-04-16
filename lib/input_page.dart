import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'myWidgets/genderColumn.dart';
import 'myWidgets/myColumn.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    renk: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    renk: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MyContainer(
              renk: Colors.greenAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: MyContainer(
              renk: Colors.orangeAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    child: GenderColumn(cinsiyet: 'Kadın',icon: FontAwesomeIcons.venus,),
                    renk: Colors.purple,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    child: GenderColumn(cinsiyet: 'Erkek',icon: FontAwesomeIcons.mars,),
                    renk: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}