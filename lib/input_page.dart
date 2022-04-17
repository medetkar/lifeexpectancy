import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/myStyles/text_style.dart';
import 'myWidgets/genderColumn.dart';
import 'myWidgets/myColumn.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;
  double icilenSigara = 0;
  double sporGunSayisi = 0;
  //Color butonRenk;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haftada kaç gün spor yapıyorsunuz?",
                    style: myTextStyle(),
                  ),
                  Text(
                    sporGunSayisi.round().toString(),
                    style: myTextStyle(),
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    divisions: 7,
                    value: sporGunSayisi,
                    onChanged: (double newValue) {
                      setState(
                        () {
                          sporGunSayisi = newValue;
                        },
                      );
                    },
                  ),
                ],
              ),
              renk: Colors.white,
            ),
          ), //Spor gün sayısı
          Expanded(
            flex: 1,
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Günde kaç sigara içiyorsun?",
                    style: myTextStyle(),
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: myTextStyle(),
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: icilenSigara,
                    onChanged: (double newValue) {
                      setState(
                        () {
                          icilenSigara = newValue;
                        },
                      );
                    },
                  ),
                ],
              ),
              renk: Colors.white,
            ),
          ), //sigara sayısı
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onTap: () {
                      setState(
                        () {
                          seciliCinsiyet = 'KADIN';
                        },
                      );
                    },
                    child: GenderColumn(
                      cinsiyet: 'KADIN',
                      icon: FontAwesomeIcons.venus,
                    ),
                    renk:
                        seciliCinsiyet == 'KADIN' ? Colors.green : Colors.white,
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onTap: () {
                      setState(
                        () {
                          seciliCinsiyet = 'ERKEK';
                        },
                      );
                    },
                    child: GenderColumn(
                      cinsiyet: 'ERKEK',
                      icon: FontAwesomeIcons.mars,
                    ),
                    renk:
                        seciliCinsiyet == 'ERKEK' ? Colors.green : Colors.white,
                  ),
                ),
              ],
            ),
          ), //cinsiyet seçimi
        ],
      ),
    );
  }
}
