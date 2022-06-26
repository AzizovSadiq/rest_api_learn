import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/hesab.dart';
import 'package:yasam_beklentisi/user_deta.dart';

import 'contains.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SONUC SAYFASI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 8,
              child: Center(
                child: Text(
                  Hesap(_userData).hesaplama().round().toString(),
                  style: kMetinstili,
                ),
              )),
          Expanded(
            flex: 1,
            child: ButtonTheme(
              splashColor: Colors.lightBlue,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Geri don',
                  style: kMetinstili,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
