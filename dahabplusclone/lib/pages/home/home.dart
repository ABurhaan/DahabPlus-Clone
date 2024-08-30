// ignore_for_file: avoid_unnecessary_containers
import 'package:dahabplusclone/pages/home/home_utilities/customer_support.dart';
import 'package:dahabplusclone/pages/home/home_utilities/drawer_section.dart';
import 'package:dahabplusclone/pages/home/home_utilities/header_section.dart';
import 'package:dahabplusclone/pages/home/home_utilities/middle_buttons.dart';
import 'package:dahabplusclone/pages/home/home_utilities/transactions_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Image(
            image: AssetImage('assets/images/new_dahabplus_logo.png'),
            width: 180,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Customer()));
              },
              icon: const Icon(CupertinoIcons.person_circle),
            ),
          )
        ],
      ),
      drawer: const DrawerSection(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderSection(),
          const SizedBox(
            height: 30,
          ),
          const MiddleButtons(),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Image(
                        image: AssetImage('assets/images/somtel.jpeg'),
                        width: 200,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Image(
                        image: AssetImage('assets/images/sompower.jpeg'),
                        width: 200,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Image(
                        image: AssetImage('assets/images/pay_bill.jpeg'),
                        width: 200,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Image(
                        image: AssetImage('assets/images/gps.jpeg'),
                        width: 200,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Image(
                    image: AssetImage('assets/images/gas.jpeg'),
                    width: 200,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 17, color: Colors.green)),
                    ))
              ],
            ),
          ),
          const Transactions(),
        ],
      ),
    );
  }
}
