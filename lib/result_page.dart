import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_expectancy/hesap.dart';

import 'input_page.dart';
import 'myStyles/text_style.dart';
import 'user_data.dart';

class ResultPage extends StatelessWidget {
  //const ResultPage({Key? key}) : super(key: key);
  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sonuç Sayfası',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                Hesap(_userData).hesaplama().round().toString(),
                style: myTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Geri Dön',
                          style: myTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
