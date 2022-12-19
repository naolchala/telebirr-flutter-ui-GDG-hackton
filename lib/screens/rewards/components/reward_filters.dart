import 'package:flutter/material.dart';
import 'package:telebirr/util/constants.dart';

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
      padding: const EdgeInsets.all(kPadding * 1 / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
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
              duration: const Duration(milliseconds: 300),
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
