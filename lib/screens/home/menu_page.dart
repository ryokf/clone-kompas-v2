import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/theme/theme.dart';

class MenuPage extends StatelessWidget {
  static Widget appBarTitle() {
    return Text(
      'Menu',
      style: whiteText.copyWith(fontSize: 20, fontWeight: bold),
    );
  }

  Widget categoryBox() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://source.unsplash.com/random/1500×1500/?programming'))),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [
                0.05,
                0.7,
              ],
              colors: [
                Colors.black87,
                Colors.transparent,
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Programming',
                  style: whiteText.copyWith(fontSize: 17, fontWeight: bold),
                ),
                Text(
                  'berita programming terkini',
                  style: whiteText.copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.count(
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        crossAxisCount: 2,
        children: [
          categoryBox(),
          categoryBox(),
          categoryBox(),
          categoryBox(),
          categoryBox(),
          categoryBox(),
          categoryBox(),
          categoryBox(),
          categoryBox(),
        ],
      ),
    );
  }
}
