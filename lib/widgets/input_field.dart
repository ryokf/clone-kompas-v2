import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';

class InputField extends StatelessWidget {
  String? hint;
  TextEditingController? textController;

  InputField(this.hint, this.textController);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(color: secondaryColor),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: textController,
        decoration: InputDecoration.collapsed(hintText: hint),
      ),
    );
  }
}
