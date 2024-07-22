import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';

class TypeInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool type;

  final double atas;
  final double bawah;
  final double kiri;
  final double kanan;
  final double? tinggi;
  final double? lebar;

  const TypeInput({
    super.key,
    required this.labelText,
    required this.hintText,
    this.type = false,
    this.atas = 0,
    this.bawah = 0,
    this.kiri = 0,
    this.kanan = 0,
    this.tinggi,
    this.lebar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: bawah, top: atas, left: kiri, right: kanan),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: type == true, // Menambahkan logika untuk `obscureText`
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
}
