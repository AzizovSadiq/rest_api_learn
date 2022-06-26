import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_beklentisi/contains.dart';
import 'package:yasam_beklentisi/result_page.dart';
import 'package:yasam_beklentisi/user_deta.dart';

import 'icon_cinsiyyet.dart';
import 'myContainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyyet = '';
  double icilenSigaret = 15;
  double sporGunu = 3;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildRowOutLineButton('BOY'),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowOutLineButton('KİLO'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                children: [
                  Text('Həftədə neşə gün idman edir', style: kMetinstili),
                  Text(sporGunu.round().toString(), style: kSayistili),
                  Slider(
                    value: sporGunu,
                    onChanged: (double newValue) {
                      setState(() {
                        sporGunu = newValue;
                      });
                    },
                    min: 0,
                    max: 7,
                    divisions: 7,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Gündə neçə siqaret şəkirsiniz', style: kMetinstili),
                  Text(icilenSigaret.round().toString(), style: kSayistili),
                  Slider(
                    value: icilenSigaret,
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigaret = newValue;
                      });
                    },
                    min: 0,
                    max: 30,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliCinsiyyet = 'KADIN';
                      });
                    },
                    child: MyContainer(
                      reng: seciliCinsiyyet == 'KADIN'
                          ? Colors.blueAccent
                          : Colors.white,
                      child: IconCinsiyyet(
                        icon: FontAwesomeIcons.venus,
                        cinsiyyet: 'KADIN',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliCinsiyyet = 'KİŞİ';
                      });
                    },
                    child: MyContainer(
                      reng: seciliCinsiyyet == 'KİŞİ'
                          ? Colors.blueAccent
                          : Colors.white,
                      child: IconCinsiyyet(
                        icon: FontAwesomeIcons.mars,
                        cinsiyyet: 'KİŞİ',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            //splashColor: Colors.lightBlue,
            child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(UserData(
                              kilo: kilo,
                              boy: boy,
                              seciliCinsiyyet: seciliCinsiyyet,
                              icilenSigaret: icilenSigaret,
                              sporGunu: sporGunu))));
                },
                child: Text(
                  'HESABLA',
                  style: kMetinstili,
                )),
          ),
        ],
      ),
    );
  }

  Row buildRowOutLineButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(label, style: kMetinstili),
        ),
        SizedBox(width: 10),
        RotatedBox(
          quarterTurns: -1,
          child: Text(label == 'BOY' ? boy.toString() : kilo.toString(),
              style: kSayistili),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 36,
              splashColor: Colors.lightBlue,
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      label == 'BOY' ? boy++ : kilo++;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.plus,
                    size: 15,
                  )),
            ),
            ButtonTheme(
              minWidth: 36,
              splashColor: Colors.lightBlue,
              child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      label == 'BOY' ? boy-- : kilo--;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.minus,
                    size: 15,
                  )),
            )
          ],
        ),
      ],
    );
  }
}
