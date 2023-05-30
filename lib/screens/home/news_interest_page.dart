import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/news_tile.dart';

class NewsInterestPage extends StatelessWidget {
  static Widget appBarTitle() {
    return Text(
      'Untukmu',
      style: whiteText.copyWith(fontSize: 20, fontWeight: bold),
    );
  }

  Widget header(context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Aktivitasmu',
                style: primaryText.copyWith(fontSize: 24, fontWeight: bold),
              ),
            ),
            Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.bookmark_outline,
                          color: secondaryColor,
                        ),
                        Text(
                          'Baca Nanti',
                          style: primaryText.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                        Icon(Icons.arrow_forward_ios_outlined,
                            color: secondaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 1,
              color: secondaryColor,
            )
          ]),
    );
  }

  Widget setInterest(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sesuai Minatmu',
            style: primaryText.copyWith(fontSize: 24, fontWeight: bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 2 / 3.5,
                child: Text(
                  'kami akan memberikan rekomendasi dan layanan yang lebih baik sesuai pilihanmu',
                  style: secondaryText,
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 1 / 3.5,
                  child: Button.withSize(
                    width: 10,
                    height: 40,
                    title: "atur minat",
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget newsList(context) {
    return Container(
      child: Column(
        children: [
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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 11/12,
        height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            header(context),
            setInterest(context),
            newsList(context)
          ]),
        ),
      ),
    );
  }
}

