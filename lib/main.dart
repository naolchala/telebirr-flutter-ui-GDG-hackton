import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telebirr/common/bottom_nav.dart';
import 'package:telebirr/screens/explore/explore.dart';
import 'package:telebirr/screens/home/home.dart';
import 'package:telebirr/screens/menu/menu.dart';
import 'package:telebirr/screens/profile/profile.dart';
import 'package:telebirr/screens/rewards/rewards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeleBirr',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.ptSansTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const AppPage(),
    );
  }
}

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => AppPageState();
}

class AppPageState extends State<AppPage> {
  var _selectedIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    RewardsPage(),
    const ExploreScreen(),
    const ProfilePage(),
    const MenuPage(),
  ];

  void changePage(int index) {
    if (index < _pages.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNav(
        selectedIndex: _selectedIndex,
        changePage: changePage,
      ),
    );
  }
}
