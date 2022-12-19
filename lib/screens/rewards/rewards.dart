// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telebirr/util/constants.dart';
import 'package:telebirr/util/reward_model.dart';

import 'components/reward_filters.dart';

class RewardsPage extends StatelessWidget {
  RewardsPage({super.key});

  final List<String> types = ["Voice", "Internet", "Combo"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        foregroundColor: Colors.white,
        title: const Text('Rewards'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Positioned(
              top: kPadding,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(kPadding),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                RewardFilter(types: types),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: ListView.separated(
                      itemCount: rewards.length,
                      itemBuilder: ((context, index) {
                        var pkg = rewards[index];
                        return ListTile(
                          onTap: () {},
                          title: Row(
                            children: [
                              Text(
                                '${pkg.value} ${pkgUnits[pkg.type]}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: BoxDecoration(
                                    color: kSecondary,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  pkgValidity[pkg.validity]!,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(pkg.date),
                          leading: Icon(
                            pkgIcons[pkg.type],
                            color: kPrimary,
                          ),
                          trailing: Text(
                            "${pkg.price} ETB",
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                      separatorBuilder: ((context, index) => Divider()),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
