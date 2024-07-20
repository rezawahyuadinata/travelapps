import 'package:flutter/material.dart';
import 'package:travelapps/shared/theme.dart';
import 'package:travelapps/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customNavigationNavBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavigation(
                  nama: "globe",
                  image: 'assets/images/fi_globe.png',
                  nilai: true),
              CustomNavigation(
                  nama: "booking", image: 'assets/images/fi_book-open.png'),
              CustomNavigation(
                  nama: "credit card",
                  image: 'assets/images/fi_credit-card.png'),
              CustomNavigation(
                  nama: "settings", image: 'assets/images/fi_settings.png'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [Text("Main Page"), customNavigationNavBar()],
    ));
  }
}
