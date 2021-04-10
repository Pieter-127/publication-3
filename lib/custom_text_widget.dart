import 'package:flutter/material.dart';
import 'package:flutter_article_3/custom_text_model.dart';
import 'package:flutter_article_3/logo_widget.dart';

class CustomTextWidget extends StatelessWidget {
  final CustomTextModel customTextModel;

  CustomTextWidget(this.customTextModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          LogoWidget(customTextModel.imagePath),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.only(left: 8, bottom: 8),
                child: Text(
                  customTextModel.headingText,
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Text(customTextModel.subtext),
            ],
          )
        ],
      ),
    );
  }
}