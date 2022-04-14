import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        //brightness: Brightness.dark,
        primaryColor: Colors.blueAccent[900],
        backgroundColor: Colors.blueAccent[100],
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Form Alanı'),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          //colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.pink),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Theme.of(context).primaryColor),
        ),
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}