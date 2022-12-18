import 'package:flutter/material.dart';
import 'package:telebirr/util/constants.dart';

class TransactionTypes extends StatelessWidget {
  const TransactionTypes({
    Key? key,
  }) : super(key: key);

  static const List transactionTypes = [
    {
      "icon": Icons.credit_card,
      "title": "Main Account Transaction",
    },
    {
      "icon": Icons.card_giftcard_outlined,
      "title": "Reward Transactions",
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Reward Balance",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Transaction Details',
                  style: TextStyle(
                    fontSize: 17,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kPadding * 0.5),
            width: size.width - 2 * kPadding,
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: transactionTypes.length,
                itemBuilder: ((context, index) {
                  return Container(
                    padding: const EdgeInsets.all(kPadding * 0.5),
                    margin: const EdgeInsets.only(right: kPadding),
                    decoration: BoxDecoration(
                      color: kPrimary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.all(kPadding * 0.4),
                        margin: const EdgeInsets.only(right: kPadding * 0.5),
                        decoration: BoxDecoration(
                          color: kPrimary,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          transactionTypes[index]['icon'],
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        transactionTypes[index]['title'],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ]),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
