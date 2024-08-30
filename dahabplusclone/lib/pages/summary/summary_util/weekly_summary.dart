import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class WeeklySum extends StatefulWidget {
  const WeeklySum({super.key});

  @override
  State<WeeklySum> createState() => _WeeklySumState();
}

class _WeeklySumState extends State<WeeklySum> {
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Weekly Summary',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
                Text(
                  '1-7 January Week',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 231, 226, 226))),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            DropdownButton(
              iconEnabledColor: Colors.white,
              items: [
                DropdownMenuItem(
                    child: Text(
                  'USD',
                  style: GoogleFonts.lexend(
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.white)),
                )),
              ],
              onChanged: (value) {},
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              ))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Weekly Spending',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.black)),
                    ),
                    Text(
                      '\$5,919.40',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.black)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expense Distribution',
                    style: GoogleFonts.lexend(
                        textStyle:
                            const TextStyle(fontSize: 18, color: Colors.black)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
