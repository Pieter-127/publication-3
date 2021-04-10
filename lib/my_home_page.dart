import 'package:flutter/material.dart';
import 'package:flutter_article_3/custom_text_model.dart';

import 'custom_text_widget.dart';
class MyHomePage extends StatelessWidget {
  final heading = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"];
  final subtext = [
    "Subtext for One",
    "Subtext for Two",
    "Subtext for Three",
    "Subtext for Four",
    "Subtext for Five",
    "Subtext for Six",
    "Subtext for Seven"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Flutter Series: Part 3"),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              final customTextModel =
              CustomTextModel(heading[index], subtext[index], "$index.jpg");
              return CustomTextWidget(customTextModel);
            },
          )),
    );
  }
}