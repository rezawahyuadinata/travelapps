import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';

class CustomNavigation extends StatelessWidget {
  final String image;
  final String? nama;
  final bool? nilai;

  const CustomNavigation({
    super.key,
    this.nama,
    required this.image,
    this.nilai = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: nilai == true ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
