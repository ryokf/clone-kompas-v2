import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';

class NewsCard extends StatelessWidget {
  String title;
  String img;
  String category;

  NewsCard(this.title, this.category, this.img);

  optionButton() {
    return Container(
      child: Text(
        '•••',
        style: primaryText.copyWith(
            fontSize: 20, fontWeight: bold, color: secondaryColor),
        textAlign: TextAlign.right,
      ),
    );
  }

  option(){
    return Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(Icons.zoom_out_outlined, color: secondaryColor,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                    Text('option', ),
                  ],
                ),
              );
  }

  optionFunc(context) {
    return GestureDetector(
      onTap: () async {
        await Flushbar(
          backgroundColor: whiteColor,
          messageText:Column(
            children: [
              option(),
              option(),
              option(),
            ],
          ),
          isDismissible: true,
        ).show(context);
      },
      child: optionButton(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://source.unsplash.com/random/1000x200?car',
                fit: BoxFit.cover,
                width: double.infinity,
              )),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            'Kategori',
            style: orangeText.copyWith(fontSize: 12),
          ),
        ),
        Container(
          child: Text(
            'perkembangan pemograman flutter semenjak versi pertama',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: primaryText.copyWith(fontSize: 16, fontWeight: bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            optionFunc(context)
          ],
        )
      ]),
    );
  }
}

// https://source.unsplash.com/random/1000x500
