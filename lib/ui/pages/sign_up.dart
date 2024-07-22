import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';
import 'package:travelapps/ui/widgets/custom_button.dart';
import 'package:travelapps/ui/widgets/custom_form_input.dart';

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
        child: const Column(
          children: [
            TypeInput(
              labelText: "Full Name",
              hintText: "Silahkan Masukkan Nama Lengkap Anda",
              bawah: 20,
            ),
            TypeInput(
              labelText: "Email Address",
              hintText: "Silahkan Masukkan Email Anda",
              bawah: 20,
            ),
            TypeInput(
              labelText: "Password",
              hintText: "Silahkan Masukkan Password Baru Anda",
              type: true,
              bawah: 20,
            ),
            TypeInput(
              labelText: "Email Address",
              hintText: "Silahkan Masukkan Hobby Anda",
              bawah: 20,
            ),
            CustomButton(
              textCaption: "Get Started",
              url: '/bonus',
              atas: 30,
              bawah: 10,
              lebar: double.infinity,
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
