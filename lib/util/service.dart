import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Service {
  late String title;
  late IconData icon;

  Service({required this.title, required this.icon});
}

List<Service> services = [
  Service(title: "Deposit Cash", icon: Icons.playlist_add),
  Service(title: "Financial Service", icon: Icons.account_balance_outlined),
  Service(title: "Send Money", icon: Icons.compare_arrows_outlined),
  Service(title: "Buy Package/Airtime", icon: Icons.padding),
  Service(title: "Receive Payment", icon: Icons.arrow_forward_sharp),
];
