import 'package:flutter/material.dart';
import 'package:telebirr/util/constants.dart';
import 'package:telebirr/util/service.dart';

class ServicesLink extends StatelessWidget {
  const ServicesLink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
          children: services.asMap().entries.map((serviceEntry) {
        var index = serviceEntry.key;
        var service = serviceEntry.value;
        return Column(
          children: [
            ListTile(
              leading: Icon(
                service.icon,
                color: kPrimary,
              ),
              title: Text(
                service.title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 18),
              ),
              trailing: Icon(
                Icons.chevron_right,
              ),
              onTap: () {},
            ),
            Divider(
              color: index < services.length - 1
                  ? Theme.of(context).dividerColor
                  : Colors.transparent,
            ),
          ],
        );
      }).toList()),
    );
  }
}
