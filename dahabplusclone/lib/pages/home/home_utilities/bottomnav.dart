import 'package:dahabplusclone/pages/home/home.dart';
import 'package:dahabplusclone/pages/profile/profile.dart';
import 'package:dahabplusclone/pages/services/services.dart';
import 'package:dahabplusclone/pages/summary/summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;
  List<Widget> pages = [
    const HomePage(),
    const SummaryPage(),
    const ServicesPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.green,
        child: const Icon(
          CupertinoIcons.qrcode_viewfinder,
          color: Colors.white,
          size: 40,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentindex,
          indicatorColor: Colors.green,
          elevation: 0,
          onDestinationSelected: (index) {
            setState(() {
              currentindex = index;
              pages[currentindex];
            });
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(CupertinoIcons.creditcard), label: 'Pay'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.chart_pie), label: 'Summary'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.square_grid_2x2), label: 'Services'),
            NavigationDestination(
                icon: Icon(CupertinoIcons.person), label: 'Profile'),
          ]),
      body: pages[currentindex],
    );
  }
}
