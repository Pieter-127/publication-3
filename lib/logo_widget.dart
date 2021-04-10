import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String imageName;

  LogoWidget(this.imageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/$imageName")),
      ),
    );
  }
}
