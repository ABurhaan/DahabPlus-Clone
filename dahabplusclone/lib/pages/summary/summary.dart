import 'package:dahabplusclone/pages/home/home_utilities/customer_support.dart';
import 'package:dahabplusclone/pages/home/home_utilities/drawer_section.dart';
import 'package:dahabplusclone/pages/summary/summary_util/transaction_detail.dart';
import 'package:dahabplusclone/pages/summary/summary_util/weekly_summary.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'January 2024 Summary',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 18,
                  )),
                ),
                Container(
                  width: 37,
                  height: 38,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(7)),
                  child: IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                    style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(1),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TransactionDetail()));
                    },
                    child: Text(
                      'Transaction Details',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Colors.black)),
                    )),
                OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WeeklySum(),
                          ));
                    },
                    child: Text(
                      'Weekly Summary',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Colors.black)),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Summary',
              style: GoogleFonts.lexend(
                  textStyle: const TextStyle(
                fontSize: 18,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'All Sources',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 18,
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'USD',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                      )),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 320,
              width: 150,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: 80,
                      color: Colors.blue,
                      title: '80%',
                    ),
                    PieChartSectionData(
                      value: 20,
                      color: Colors.red,
                      title: '20%',
                    ),
                  ],
                  centerSpaceRadius: 100,
                  sectionsSpace: 5,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                ),
                Text(
                  'Ammount',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Merchant',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 18,
                      )),
                    )
                  ],
                ),
                Text(
                  '\$55,530.09',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 18,
                  )),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Mobile',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 18,
                      )),
                    )
                  ],
                ),
                Text(
                  '\$10,350.00',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 18,
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
