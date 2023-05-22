import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';

class Button extends StatelessWidget {
  String title;
  Color color;
  double? height;
  double? width;

  Button([this.title = 'title', this.color = Colors.blue]);

  Button.withSize({
      String this.title = 'title',
      Color this.color = Colors.blue,
      double? this.height,
      double? this.width
    });

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 80 / 100;

    return Container(
      height: this.height == null ? buttonWidth / 7 : this.height,
      width: this.width == null ? buttonWidth : this.width,
      child: Material(
        borderRadius: BorderRadius.circular(5),
        color: this.color,
        child: InkWell(
          child: Center(
              child: Text(
            this.title,
            style: whiteText,
          )),
          onTap: () {},
        ),
      ),
    );
  }
}
