import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget businessCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/bg_card.png"),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.50),
              blurRadius: 50,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama",
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        "Reza Wahyu ",
                        style: whiteTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/plane_logo.png"),
                        ),
                      ),
                    ),
                    Text(
                      "PAY",
                      style: whiteTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Balance",
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  Text(
                    "RP. 20.000.00",
                    style: whiteTextStyle.copyWith(
                        fontSize: 22, fontWeight: semiBold),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget textNeeded({
      required String type,
      required String content,
    }) {
      return Container(
        margin: EdgeInsets.only(top: type == "judul" ? 80 : 10),
        child: Text(
          content,
          style: blackTextStyle.copyWith(
            fontSize: type == "judul" ? 32 : 16,
            fontWeight: type == "judul" ? semiBold : light,
          ),
          textAlign: type != "judul" ? TextAlign.center : null,
        ),
      );
    }

    Widget buttonGetBonus() {
      return Container(
        width: 220,
        height: 55,
        margin: const EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18))),
          child: Text(
            "Start Fly Now",
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            businessCard(),
            textNeeded(type: "judul", content: "Big Bonus 🎉"),
            textNeeded(
                type: "subjudul",
                content:
                    "We give you early credit so that \nyou can buy a flight ticket"),
            buttonGetBonus(),
          ],
        ),
      ),
    );
  }
}
