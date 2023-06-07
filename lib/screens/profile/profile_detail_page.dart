import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:go_router/go_router.dart';

class ProfileDetailPage extends StatelessWidget {
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
              'Profil',
              style: whiteText.copyWith(fontSize: 20, fontWeight: bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuDivider() {
    return Container(
      width: double.infinity,
      height: 20,
      color: Colors.grey[300],
    );
  }

  Widget header(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  'https://source.unsplash.com/random/1500×1500/?programming',
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Ryo Khrisna F',
            style: primaryText.copyWith(fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text('KG Media ID'),
              Text('ryokhrisnaf@gmail.com'),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget editProfileButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(
        'Ubah Profil',
        style: blueText,
      ),
    );
  }

  Widget otherUserData(String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryText.copyWith(fontWeight: bold, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Lengkapi Profil',
            style: blueText,
          )
        ],
      ),
    );
  }

  Widget deleteAndLogout() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context),
            Divider(
              thickness: 20,
              color: Colors.grey[300],
            ),
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).push('/edit-profile');
                },
                child: editProfileButton()),
            Divider(
              thickness: 20,
              color: Colors.grey[300],
            ),
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).push('/edit-profile');
                },
                child: otherUserData('No Handphone')),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).push('/edit-profile');
                },
                child: otherUserData('Alamat Rumah')),
            Divider(
              thickness: 20,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
