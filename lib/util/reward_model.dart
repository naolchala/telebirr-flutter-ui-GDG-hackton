import 'package:flutter/material.dart';

class Reward {
  late PackageValidity validity;
  late int price;
  late String date;
  late PackageTypes type;
  late int value;

  Reward({
    required this.value,
    required this.type,
    required this.validity,
    required this.date,
    required this.price,
  });
}

List<Reward> rewards = [
  Reward(
      value: 48,
      type: PackageTypes.voice,
      validity: PackageValidity.daily,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 48,
      type: PackageTypes.internet,
      validity: PackageValidity.weekly,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 148,
      type: PackageTypes.message,
      validity: PackageValidity.yearly,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 48,
      type: PackageTypes.voice,
      validity: PackageValidity.daily,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 48,
      type: PackageTypes.internet,
      validity: PackageValidity.weekly,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 148,
      type: PackageTypes.message,
      validity: PackageValidity.yearly,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 48,
      type: PackageTypes.voice,
      validity: PackageValidity.daily,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 48,
      type: PackageTypes.internet,
      validity: PackageValidity.weekly,
      date: '11-11-2012',
      price: 50),
  Reward(
      value: 148,
      type: PackageTypes.message,
      validity: PackageValidity.yearly,
      date: '11-11-2012',
      price: 50),
];

const pkgIcons = {
  PackageTypes.voice: Icons.call,
  PackageTypes.message: Icons.message_outlined,
  PackageTypes.internet: Icons.compare_arrows_outlined,
};

const pkgUnits = {
  PackageTypes.voice: "Min",
  PackageTypes.message: "Msgs",
  PackageTypes.internet: "MB",
};

const pkgValidity = {
  PackageValidity.daily: "Daily",
  PackageValidity.weekly: "Weekly",
  PackageValidity.yearly: "Yearly",
  PackageValidity.hourly: "Hourly",
};

enum PackageTypes { voice, internet, message }

enum PackageValidity {
  daily,
  weekly,
  yearly,
  hourly,
}
