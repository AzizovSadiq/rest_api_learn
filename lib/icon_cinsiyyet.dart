import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/contains.dart';

class IconCinsiyyet extends StatelessWidget {
  final IconData icon;
  final String cinsiyyet;

  IconCinsiyyet({required this.icon, required this.cinsiyyet});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyyet,
          style: kMetinstili,
        ),
      ],
    );
  }
}
