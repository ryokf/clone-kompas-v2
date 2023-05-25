import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/input_field.dart';
import 'package:frontend/widgets/news_card.dart';
import 'package:frontend/widgets/news_tile.dart';

class NewsPage extends StatefulWidget {
  static Widget appBarTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Confess',
          style: whiteText.copyWith(
              fontSize: 23, fontWeight: bold, fontStyle: FontStyle.italic),
        ),
        Text(
          '.com',
          style: orangeText.copyWith(
              fontSize: 24, fontWeight: bold, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Widget trending() {
    return Container(
      // color: Colors.lightBlueAccent,
      height: MediaQuery.of(context).size.height / 12,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Center(
                child: Text(
              'Trending',
              style: orangeText.copyWith(fontWeight: bold, fontSize: 14),
            )),
          ),
          Container(
            // color: Colors.amber,
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Programming'),
                  SizedBox(
                    child: Center(
                        child: Text(
                      '|',
                      style: secondaryText.copyWith(fontSize: 24),
                    )),
                    width: 30,
                  ),
                  Text('Otomotif'),
                  SizedBox(
                    child: Center(
                        child: Text(
                      '|',
                      style: secondaryText.copyWith(fontSize: 24),
                    )),
                    width: 30,
                  ),
                  Text('travel'),
                  SizedBox(
                    child: Center(
                        child: Text(
                      '|',
                      style: secondaryText.copyWith(fontSize: 24),
                    )),
                    width: 30,
                  ),
                  Text('Kuliner'),
                  SizedBox(
                    child: Center(
                        child: Text(
                      '|',
                      style: secondaryText.copyWith(fontSize: 24),
                    )),
                    width: 30,
                  ),
                  Text('politik'),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headNews() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Editorial Top Stories",
            style: primaryText.copyWith(fontSize: 24, fontWeight: bold),
          ),
          SizedBox(
            height: 15,
          ),
          NewsCard("perkembangan flutter semenjak versi pertama", "pemogaraman",
              "https://source.unsplash.com/random/1500×1500/?programming"),
        ],
      ),
    );
  }

  Widget newsCardList() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: MediaQuery.of(context).size.height * 3 / 4.5,
      child: GridView.count(
          primary: false,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            NewsCard(
                "perkembangan flutter semenjak versi pertama",
                "pemogaraman",
                "https://source.unsplash.com/random/1500×1500/?programming"),
            NewsCard(
                "perkembangan flutter semenjak versi pertama",
                "pemogaraman",
                "https://source.unsplash.com/random/1500×1500/?programming"),
            NewsCard(
                "perkembangan flutter semenjak versi pertama",
                "pemogaraman",
                "https://source.unsplash.com/random/1500×1500/?programming"),
            NewsCard(
                "perkembangan flutter semenjak versi pertama",
                "pemogaraman",
                "https://source.unsplash.com/random/1500×1500/?programming"),
            NewsCard(
                "perkembangan flutter semenjak versi pertama",
                "pemogaraman",
                "https://source.unsplash.com/random/1500×1500/?programming"),
            NewsCard(
                "perkembangan flutter semenjak versi pertama",
                "pemogaraman",
                "https://source.unsplash.com/random/1500×1500/?programming"),
          ]),
    );
  }

  Widget popularNews() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Terpopuler',
              style: primaryText.copyWith(fontSize: 24, fontWeight: bold),
            ),
          ),
          SizedBox(height: 20,),
          Column(children: [
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
        ],
      ),
    );
  }

  Widget latestNews() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Berita Terbaru',
              style: primaryText.copyWith(fontSize: 24, fontWeight: bold),
            ),
          ),
          SizedBox(height: 20,),
          Column(children: [
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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [trending(), headNews(), newsCardList(), popularNews(), latestNews()],
        ),
      ),
    );
  }
}
