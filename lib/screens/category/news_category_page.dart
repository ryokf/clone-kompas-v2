import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/news_tile.dart';
import 'package:go_router/go_router.dart';

class NewsCategory extends StatelessWidget {
 PreferredSizeWidget appBar(context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          GoRouter.of(context).pop();
        },
        child: Container(
          height: kToolbarHeight - 5,
          alignment: Alignment.center,
          child: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: black1Color,
      centerTitle: true,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: kToolbarHeight - 5,
            alignment: Alignment.center,
            child: Text(
              'Category',
              style: whiteText.copyWith(fontSize: 20, fontWeight: bold),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(children: [
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
          NewsTile(
              "perkembangan flutter semenjak versi pertama",
              "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming",
              "12-12-2012"),
        ]),
      ),
    );
  }
}
