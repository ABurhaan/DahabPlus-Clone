import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionDetail extends StatefulWidget {
  const TransactionDetail({super.key});

  @override
  State<TransactionDetail> createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Transaction Details',
            style: GoogleFonts.lexend(
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color(0xff1d1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0)
            ]),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                hintStyle: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 18, color: Colors.grey)),
                contentPadding: EdgeInsets.only(left: 15, right: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                items: [
                  DropdownMenuItem(
                      child: Text(
                    'All Sources',
                    style: GoogleFonts.lexend(
                        textStyle:
                            const TextStyle(fontSize: 18, color: Colors.black)),
                  )),
                ],
                onChanged: (value) {},
              ),
              DropdownButton(
                items: [
                  DropdownMenuItem(
                      child: Text(
                    'All Currencies',
                    style: GoogleFonts.lexend(
                        textStyle:
                            const TextStyle(fontSize: 18, color: Colors.black)),
                  )),
                ],
                onChanged: (value) {},
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange[100],
                    ),
                    child: Icon(
                      Icons.compare_arrows,
                      color: Colors.orange[400],
                      size: 35,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'MOHAMED AHMED MOHAMED',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '667852158',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$520',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Yesterday',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 210, 254, 212),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent[400],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'AMAL BANK XARUNTA WAYN CASHIER 1',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '66228',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$1500',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Today',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[100],
                    ),
                    child: Icon(
                      Icons.phone_android,
                      color: Colors.red[200],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'ZAKARIYE ABDIRASHID CASAYR',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '667756185',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$700',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Today',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 210, 254, 212),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent[400],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'AMAL BANK XARUNTA WAYN CASHIER 1',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '66228',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$700',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Today',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 210, 254, 212),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent[400],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'AMAL BANK XARUNTA WAYN CASHIER 1',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '66228',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$700',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Today',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 210, 254, 212),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent[400],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'AMAL BANK XARUNTA WAYN CASHIER 1',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '66228',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$700',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Today',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 210, 254, 212),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent[400],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'AMAL BANK XARUNTA WAYN CASHIER 1',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '66228',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$700',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Today',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 210, 254, 212),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent[400],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'AMAL BANK XARUNTA WAYN CASHIER 1',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '66228',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$700',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'Today',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                ),
                ListTile(
                  onTap: () {},
                  leading: Container(
                    width: 45,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 210, 254, 212),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.greenAccent[400],
                      size: 30,
                    ),
                  ),
                  title: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'AMAL BANK XARUNTA WAYN CASHIER 1',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '66228',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        '\$700',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'jan 8,2024',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                                fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  isThreeLine: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
