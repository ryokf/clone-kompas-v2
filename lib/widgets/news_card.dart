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

  Widget threeDotButton() {
    return Container(
      child: Text(
        '•••',
        style: primaryText.copyWith(
            fontSize: 20, fontWeight: bold, color: secondaryColor),
        textAlign: TextAlign.right,
      ),
    );
  }

  Widget threeDotMenu(IconData icon, String title, Function onTap) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        height: 40,
        width: double.infinity,
        child: Row(
          children: [
            Icon(
              icon,
              color: secondaryColor,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            Text(
              title,
            ),
          ],
        ),
      ),
    );
  }

  void showSnackbar(context) {
    late Flushbar flushbar;

    flushbar = Flushbar(
      duration: null,
      backgroundColor: whiteColor,
      blockBackgroundInteraction: true,
      routeBlur: 0.5,
      routeColor: Colors.black54,
      messageText: Column(
        children: [
          threeDotMenu(Icons.chat, 'Lihat Komentar', (){}),
          threeDotMenu(Icons.bookmark_border, 'Simpan ke baca nanti', (){}),
          threeDotMenu(Icons.share, 'Bagikan', (){}),
          Divider(thickness: 1, ),
          threeDotMenu(Icons.dangerous_outlined, 'Batalkan', (){
            flushbar.dismiss();
          })
        ],
      ),
    );

    flushbar.show(context);
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
        GestureDetector(
          onTap: () {
            showSnackbar(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [threeDotButton()],
          ),
        )
      ]),
    );
  }
}

// https://source.unsplash.com/random/1000x500
