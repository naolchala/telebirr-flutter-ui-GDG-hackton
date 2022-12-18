// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/util/constants.dart';
import 'package:telebirr/util/reward_model.dart';

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
                          onTap: () {},
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

class RewardFilter extends StatefulWidget {
  const RewardFilter({
    Key? key,
    required this.types,
  }) : super(key: key);

  final List<String> types;

  @override
  State<RewardFilter> createState() => _RewardFilterState();
}

class _RewardFilterState extends State<RewardFilter> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kPadding * 2),
      padding: EdgeInsets.all(kPadding * 1 / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            color: kPrimary.withOpacity(0.2),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widget.types.asMap().entries.map((e) {
          String filter = e.value;
          int index = e.key;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selected = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(
                horizontal: kPadding,
                vertical: kPadding * 0.25,
              ),
              decoration: BoxDecoration(
                  color: index == _selected ? kPrimary : Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                filter,
                style: TextStyle(
                    color: index == _selected ? Colors.white : Colors.black,
                    fontSize: 16),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
