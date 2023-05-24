import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/show_snackbar.dart';

class NewsCard extends StatelessWidget {
  String title;
  String category;
  String img;

  NewsCard(this.title, this.category, this.img);

  Widget thumbnail() {
    return Expanded(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            this.img,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity / 2,
          )),
    );
  }

  Widget categoryText() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        this.category,
        style: orangeText.copyWith(fontSize: 12),
      ),
    );
  }

  Widget titleText() {
    return Container(
      child: Text(
        this.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: primaryText.copyWith(fontSize: 16, fontWeight: bold),
      ),
    );
  }

  Widget threeDotButton(context) {
    return GestureDetector(
      onTap: () {
        ShowSnackbar.show(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Text(
              '•••',
              style: primaryText.copyWith(
                  fontSize: 20, fontWeight: bold, color: secondaryColor),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: MediaQuery.of(context).size.height / 2.5,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        thumbnail(),
        categoryText(),
        titleText(),
        threeDotButton(context)
      ]),
    );
  }
}

// https://source.unsplash.com/random/1000x500
