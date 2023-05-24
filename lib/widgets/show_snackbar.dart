import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';

class ShowSnackbar {
  static void show(context) {
    late Flushbar flushbar;

    Widget threeDotMenu(IconData icon, String title, Function onTap) {
      return GestureDetector(
        onTap: () {
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

    flushbar = Flushbar(
      duration: null,
      backgroundColor: whiteColor,
      blockBackgroundInteraction: true,
      routeBlur: 0.5,
      routeColor: Colors.black54,
      messageText: Column(
        children: [
          threeDotMenu(Icons.chat, 'Lihat Komentar', () {}),
          threeDotMenu(Icons.bookmark_border, 'Simpan ke baca nanti', () {}),
          threeDotMenu(Icons.share, 'Bagikan', () {}),
          Divider(
            thickness: 1,
          ),
          threeDotMenu(Icons.dangerous_outlined, 'Batalkan', () {
            flushbar.dismiss();
          })
        ],
      ),
    );

    flushbar.show(context);
  }
}
