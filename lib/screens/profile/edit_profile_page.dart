import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/input_field.dart';
import 'package:go_router/go_router.dart';

class EditProfilePage extends StatelessWidget {

  TextEditingController firstNameController = TextEditingController(text: '');
  TextEditingController lastNameController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController addressController = TextEditingController(text: '');

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('KG Media ID', style: primaryText.copyWith(fontSize: 17, fontWeight: bold),),
            SizedBox(height: 5,),
            Text('ryokhrisnaf@gmail.com', style: primaryText.copyWith(fontSize: 17),),
            SizedBox(height: 20,),
            InputField("Nama Awal", firstNameController),
            SizedBox(height: 20,),
            InputField("Nama Akhir", lastNameController),
            SizedBox(height: 20,),
            InputField("Nomor Handphone", phoneController),
            SizedBox(height: 20,),
            InputField("Alamat", addressController),
            SizedBox(height: 30,),
            Center(child: Button.withSize(title: "send", width: MediaQuery.of(context).size.width),),
            SizedBox(height: 30,),
            Text('Dengan menekan tombol simpan, kamu menyetujui bahwa data dan informasi KG Media ID milikmu akan digunakan untuk memberikan layanan sesuai kebijakan Data pribadi KG Media', textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
