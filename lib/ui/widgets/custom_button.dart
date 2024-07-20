import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String? name;
  final String textCaption;
  final String url;

  final int atas;
  final int bawah;
  final int kiri;
  final int kanan;
  final double? tinggi;
  final double? lebar;

  const CustomButton({
    super.key,
    this.name,
    required this.textCaption,
    required this.url,
    this.lebar,
    this.tinggi,
    this.atas = 0,
    this.bawah = 0,
    this.kiri = 0,
    this.kanan = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lebar?.toDouble() ?? 220.0,
      height: tinggi?.toDouble() ?? 55.0,
      margin: EdgeInsets.only(
          top: atas.toDouble(),
          bottom: bawah.toDouble(),
          left: kiri.toDouble(),
          right: kanan.toDouble()),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, url);
        },
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
        child: Text(
          textCaption,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
      ),
    );
  }
}
