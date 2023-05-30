import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/screens/home/news_interest_page.dart';
import 'package:frontend/screens/home/news_page.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/input_field.dart';
import 'package:frontend/widgets/news_card.dart';
import 'package:frontend/widgets/news_tile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  PreferredSizeWidget appBar() {
    Widget showTitle(int selectedIndex) {
      if (selectedIndex == 0) {
        return NewsPage.appBarTitle();
      } else if (selectedIndex == 1) {
        return NewsInterestPage.appBarTitle();
      } else {
        return Text('Profile');
      }
    }

    return AppBar(
      backgroundColor: black1Color,
      centerTitle: true,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: kToolbarHeight - 5,
            alignment: Alignment.center,
            child: showTitle(_selectedIndex),
          ),
        ],
      ),
      actions: [
        Icon(
          Icons.search,
          size: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.person,
          size: 30,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  Widget showPage(int selectedIndex) {
    if (selectedIndex == 0) {
      return NewsPage();
    } else if (selectedIndex == 1) {
      return NewsInterestPage();
    } else {
      return Text('Profile');
    }
  }

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: showPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Hari ini',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Untukmu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
