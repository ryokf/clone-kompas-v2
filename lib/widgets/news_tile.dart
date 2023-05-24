import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/show_snackbar.dart';

class NewsTile extends StatelessWidget {
  String title;
  String category;
  String img;
  String date;

  NewsTile(this.title, this.category, this.img, this.date);

  Widget titleAndCat(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 60/100,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.category,
              style: orangeText,
            ),
            Padding(padding: EdgeInsets.all(3)),
            Text(
              this.title,
              style: primaryText.copyWith(fontWeight: bold, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  Widget thumbnail(context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.3,
      height: MediaQuery.of(context).size.height / 10,
      // color: Colors.amber,
      child: Expanded(
          child: ClipRRect(
           borderRadius: BorderRadius.circular(10),
              child: Image.network(
                this.img,
                fit: BoxFit.cover,
                width: double.infinity,
      ))),
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

  Widget releaseDate(){
    return Text(this.date, style: primaryText,);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      height: MediaQuery.of(context).size.height / 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [titleAndCat(context), thumbnail(context)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [releaseDate(), threeDotButton(context)],
          )
        ],
      ),
    );
  }
}
