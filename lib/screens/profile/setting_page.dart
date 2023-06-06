import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
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
              'Pengaturan',
              style: whiteText.copyWith(fontSize: 20, fontWeight: bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionHeader(context, String title) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Text(
        title,
        style: primaryText.copyWith(fontSize: 16, fontWeight: bold),
      ),
    );
  }

  Widget sectionMenu(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: secondaryColor,
          )
        ],
      ),
    );
  }

  Widget profileSection(context) {
    return GestureDetector(
      onTap: () {
         GoRouter.of(context).push('/profile-detail');
      },
      child: Column(
        children: [
          sectionHeader(context, 'KG Media ID'),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            'https://source.unsplash.com/random/1500×1500/?programming',
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Ryo Khrisna f !',
                          style: primaryText.copyWith(fontWeight: bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'ryokhrisnaf@gmail.com',
                          style: primaryText,
                        ),
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: secondaryColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget membershipSection(context) {
    return Container(
      child: Column(
        children: [
          sectionHeader(context, "Membership Kompas.com+"),
          sectionMenu("Gabung Kompas.com+")
        ],
      ),
    );
  }

  Widget activitySection(context) {
    return Container(
      child: Column(
        children: [
          sectionHeader(context, "Aktivitasmu"),
          sectionMenu("Baca Nanti")
        ],
      ),
    );
  }

  Widget aboutSection(context) {
    return Container(
      child: Column(
        children: [
          sectionHeader(context, "Bantuan dan Lainnya"),
          sectionMenu("Laporkan kendala aplikasi"),
          sectionMenu("tentang aplikasi"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        child: Column(
          children: [
            profileSection(context),
            membershipSection(context),
            activitySection(context),
            aboutSection(context)
          ],
        ),
      ),
    );
  }
}
