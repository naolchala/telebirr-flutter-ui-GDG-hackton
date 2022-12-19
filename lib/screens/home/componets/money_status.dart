import 'package:flutter/material.dart';
import 'package:telebirr/util/constants.dart';

class MoneyStatus extends StatelessWidget {
  const MoneyStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(
        vertical: kPadding,
      ),
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            color: kPrimary.withOpacity(0.5),
            blurRadius: 5,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: -10,
            top: -10,
            child: Container(
              height: 80,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Positioned(
            left: -10,
            top: -10,
            child: Container(
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Column(
              children: [
                const Text(
                  "Balance",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ETB 400",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye),
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
