import 'package:flutter/material.dart';
import 'package:telebirr/util/constants.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.only(right: kPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset("assets/images/user.jpg", fit: BoxFit.cover),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hello 👋",
                style: TextStyle(fontSize: kPadding),
              ),
              Text(
                "Jane Doe",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
