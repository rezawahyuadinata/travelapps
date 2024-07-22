import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerMenu() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children:     [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Heya, \nReza Wahyu Adinata",
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Where to fly today?",
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                ),
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listDaftarItem() {
      return ListView(
        children: [
          headerMenu(),
        ],
      );
    }

    return Scaffold(
      body: listDaftarItem(),
    );
  }
}
