import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/widgets/button.dart';
import 'package:frontend/widgets/input_field.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController(text: '');

  TextEditingController passwordController = TextEditingController(text: '');

  Widget header() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Akses',
                style: primaryText.copyWith(fontSize: 24, fontWeight: bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Fitur Lengkap',
                style: whiteText.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                    backgroundColor: primary2Color),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'dengan akunmu',
            style: primaryText.copyWith(fontWeight: bold, fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget formLogin() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(children: [
        InputField('email', emailController),
        SizedBox(
          height: 25,
        ),
        InputField('password', passwordController),
        SizedBox(
          height: 50,
        ),
        Button('Login'),
      ]),
    );
  }

  Widget footer(BuildContext context) {
    return Container(
      child: Column(children: [
        GestureDetector(
          onTap: () {
            context.go('/register');
          },
          child: Text(
            'Tidak punya KG Media ID?',
            style: blueText.copyWith(decoration: TextDecoration.underline, fontSize: 16),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          'atau',
          style: secondaryText.copyWith(fontWeight: bold, fontSize: 16),
        ),
        SizedBox(height: 15,),
        GestureDetector(
          onTap: () {
            context.go('/');
          },
          child: Text(
            'Nanti saja',
            style: primaryText.copyWith(fontWeight: bold, fontSize: 16),
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Spacer(
              flex: 3,
            ),
            header(),
            Spacer(
              flex: 3,
            ),
            formLogin(),
            Spacer(
              flex: 2,
            ),
            footer(context),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
