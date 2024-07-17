import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 20),
        child: Text(
          'Join us and get \n your next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget typeInput({
        required String labelText,
        required String hintText,
        String? type,
      }) {
        return Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(labelText),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                obscureText: type ==
                    "password", // Menambahkan logika untuk `obscureText`
                decoration: InputDecoration(
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // Mengubah posisi bayangan
            ),
          ],
        ),
        child: Column(
          children: [
            typeInput(
                labelText: "Full Name",
                hintText: "Silahkan Masukkan Nama Lengkap Anda"),
            typeInput(
                labelText: "Email Address",
                hintText: "Silahkan Masukkan Email Anda"),
            typeInput(
                labelText: "Password",
                hintText: "Silahkan Masukkan Password Baru Anda",
                type: "password"),
            typeInput(
                labelText: "Email Address",
                hintText: "Silahkan Masukkan Hobby Anda"),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              margin: const EdgeInsets.only(bottom: 10, top: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bonus');
                },
                style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text(
                  'Get Started',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        padding: const EdgeInsets.only(
          bottom: 73,
          top: 80,
        ),
        child: Center(
          child: Text(
            "Terms and Conditions",
            style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
