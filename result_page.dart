import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/contains.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NƏTİCƏ SƏİFƏSİ'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Text(
              'Gözlənilən Həyat müddəti: ',
              style: kMetinstili,
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Geri qayıt',
                style: kMetinstili,
              ),
            ),
          )
        ],
      ),
    );
  }
}
