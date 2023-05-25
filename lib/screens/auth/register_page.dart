import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/input_field.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController addressController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  Widget header() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'KG Media ID',
            style: primaryText.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Daftar dengan KG Media ID untuk menggunakan layanan-layanan dari KG Media',
            style: primaryText.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget formRegister(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          InputField('Nama lengkap', nameController),
          SizedBox(
            height: 15,
          ),
          InputField('Email', emailController),
          SizedBox(
            height: 15,
          ),
          InputField('No HP', phoneController),
          SizedBox(
            height: 15,
          ),
          InputField('Alamat', addressController),
          SizedBox(
            height: 15,
          ),
          InputField('Password', passwordController),
          SizedBox(
            height: 20,
          ),
          Button.withSize(
            title: 'Register',
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          style: primaryText,
          text:
              'Dengan menekan tombol “Lanjutkan”, kamu menyetujui bahwa data dan informasi KG Media ID milikmu akan digunakan untuk memberikan layanan sesuai ',
        ),
        TextSpan(
          style: blueText,
          text:
              'kebijakan',
        ),
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Spacer(
                flex: 3,
              ),
              header(),
              Spacer(
                flex: 4,
              ),
              formRegister(context),
              Spacer(
                flex: 2,
              ),
              footer(),
              Spacer(
                flex: 3,
              ),
            ],
          )),
    );
  }
}
