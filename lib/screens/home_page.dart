import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/input_field.dart';
import 'package:frontend/widgets/news_card.dart';
import 'package:frontend/widgets/news_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: NewsCard('a', 'a', 'https://source.unsplash.com/random/1500×1500/?fruit'),
        ),
      )
    );
  }
}
