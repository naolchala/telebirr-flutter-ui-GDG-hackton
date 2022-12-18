import 'package:flutter/material.dart';
import 'package:telebirr/util/constants.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key, required this.selectedIndex, required this.changePage});

  final int selectedIndex;
  final Function changePage;

  final List<IconData> icons = [
    Icons.home_outlined,
    Icons.card_giftcard,
    Icons.explore_outlined,
    Icons.person_outline,
    Icons.menu
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPadding * 0.5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            color: kPrimary.withOpacity(0.2),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: icons.asMap().entries.map((iconEntry) {
          var index = iconEntry.key;
          var icon = iconEntry.value;
          double dotSize = selectedIndex == index ? 5 : 0;
          return Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              IconButton(
                icon: Icon(icon),
                onPressed: () => changePage(index),
                color: selectedIndex == index ? kSecondary : kPrimary,
              ),
              Positioned(
                bottom: 5,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInCubic,
                  width: dotSize,
                  height: dotSize,
                  decoration: BoxDecoration(
                      color: kSecondary,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: kSecondary,
                          blurRadius: 4,
                        )
                      ]),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
