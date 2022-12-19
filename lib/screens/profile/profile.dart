import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/util/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static final List<String> menu = [
    "Change Profile",
    "Transfer to Bank",
    "Change Pin",
    "Nearby",
    "Change Language",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        title: const Text("My Account"),
        centerTitle: true,
        backgroundColor: kPrimary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(kPadding),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kPadding),
                    child: profileCard(),
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => ListTile(
                              onTap: () {},
                              title: Text(
                                menu[index],
                                style: const TextStyle(fontSize: 18),
                              ),
                              trailing: const Icon(Icons.chevron_right),
                            ),
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: menu.length),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row profileCard() {
    return Row(
      children: [
        profilePicture(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Jane Doe",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("+251 973*****9",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600))
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: kPadding * 0.25, horizontal: kPadding),
          decoration: BoxDecoration(
            color: Colors.orange.shade300,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.amber.shade200,
                spreadRadius: 4,
              ),
            ],
          ),
          child: Column(
            children: const [
              Text(
                "Customer",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "Level 3",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  SizedBox profilePicture() {
    return SizedBox(
      height: 60,
      width: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          "assets/images/user.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
