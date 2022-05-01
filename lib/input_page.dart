import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/myStyles/text_style.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/user_data.dart';
import 'myWidgets/genderColumn.dart';
import 'myWidgets/myColumn.dart';
//import 'user_data.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;
  double icilenSigara = 0;
  double sporGunSayisi = 0;
  int boy = 180;
  int kilo = 90;
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
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: [
                buildBoyKiloKart('BOY'),
                buildBoyKiloKart('KİLO'),
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
                    style: myTextStyle,
                  ),
                  Text(
                    sporGunSayisi.round().toString(),
                    style: myNumberStyle,
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
                    style: myTextStyle,
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: myNumberStyle,
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
          ),
          SizedBox(
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      UserData(
                        kilo: kilo,
                        seciliCinsiyet: seciliCinsiyet,
                        sporGunSayisi: sporGunSayisi,
                        boy: boy,
                        icilenSigara: icilenSigara,
                      ),
                    ),
                  ),
                );
              },
              child: Text(
                'Hesapla',
                style: myTextStyle,
              ),
            ),
          ), //cinsiyet seçimi
        ],
      ),
    );
  }

  Expanded buildBoyKiloKart(String label) {
    return Expanded(
      flex: 1,
      child: MyContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    label,
                    style: myTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    label == 'BOY' ? boy.toString() : kilo.toString(),
                    //value.toString(),
                    style: myNumberStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: TextButton(
                        child: const Icon(FontAwesomeIcons.plus),
                        onPressed: () {
                          setState(
                            () {
                              label == 'BOY' ? boy++ : kilo++;
                              // if (label == 'BOY') {
                              //   boy++;
                              // } else if (label == 'KİLO') {
                              //   kilo++;
                              // }
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: TextButton(
                        child: const Icon(FontAwesomeIcons.minus),
                        onPressed: () {
                          setState(
                            () {
                              label == 'BOY' ? boy-- : kilo--;
                              // if (label == 'BOY') {
                              //   boy--;
                              // } else if (label == 'KİLO') {
                              //   kilo--;
                              // }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //renk: Colors.yellow,
      ),
    );
  }
}
