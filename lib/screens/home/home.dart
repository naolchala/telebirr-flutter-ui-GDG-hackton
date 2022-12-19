// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:telebirr/common/bottom_nav.dart';
import 'package:telebirr/screens/home/componets/services_link.dart';
import 'package:telebirr/util/constants.dart';
import 'package:telebirr/util/service.dart';

import 'componets/money_status.dart';
import 'componets/transaction_types.dart';
import 'componets/user_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 1,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_on_outlined),
            color: kPrimary,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: kPrimary,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_2_rounded),
            color: kPrimary,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UserCard(),
              MoneyStatus(),
              TransactionTypes(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: kPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite Links",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              ServicesLink(),
            ],
          ),
        ),
      ),
    );
  }
}
