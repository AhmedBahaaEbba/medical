import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  final Widget widget;
  final String title;
  final String description;

  SliderPage(this.widget, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget,
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, right: 70, left: 70),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              letterSpacing: 0.7,
            ),
          ),
        ),
      ],
    );
  }
}
