import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/input_field.dart';
import 'package:frontend/widgets/news_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    List<int> rowColumnCounts = [1, 2];
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.count(
            childAspectRatio: 1 / 1.2,
            crossAxisCount: 1,
            children: List.generate(rowColumnCounts.length, (index) {
              int columns = rowColumnCounts[index];
              return Row(
                children: List.generate(columns, (columnIndex) {
                  return Expanded(child: Container(
                    margin: EdgeInsets.all(10),
                    child: NewsCard("judul", "kategori", "https://source.unsplash.com/random/1000x200?car")));
                }),
              );
            }),

            // Container(
            //   height: 500,
            //   width: double.infinity,
            //   padding: EdgeInsets.all(10),
            //   child: NewsCard(),
            // ),
            // Container(
            //   height: 500,
            //   width: double.infinity,
            //   padding: EdgeInsets.all(10),
            //   child: NewsCard(),
            // ),
          )),
    );
  }
}
