import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/input_field.dart';
import 'package:frontend/widgets/news_tile.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController(text: '');

  bool showResult = false;

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
              'Search',
              style: whiteText.copyWith(fontSize: 20, fontWeight: bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget searchInput() {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: Colors.grey[300]),
      child: Center(
        child: TextField(
          controller: searchController,
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search),
              iconColor: secondaryColor,
              hintText: 'masukkan kata kunci pencarian'),
          onEditingComplete: () {
            setState(() {
              showResult = true;
            });
          },
        ),
      ),
    );
  }

  Widget searchResult() {

    if(showResult == false){
      return Container();
    }

    return Container(
      margin: EdgeInsets.all(10),
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
    return Scaffold(
      appBar: appBar(context),
      body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
                  searchInput(),
                  searchResult(),
                  // newsList
                ]),
          )),
    );
  }
}
