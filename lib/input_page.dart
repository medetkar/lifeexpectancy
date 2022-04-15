import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

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
                    renk: Colors.purple,
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
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color renk;
  MyContainer({required this.renk});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: renk,
      ),
    );
  }
}
