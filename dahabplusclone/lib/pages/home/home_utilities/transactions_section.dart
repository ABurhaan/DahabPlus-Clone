import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  contentPadding: const EdgeInsets.all(5),
                  title: const Image(
                    image: AssetImage('assets/images/new_dahabplus_logo.png'),
                  ),
                  actions: [
                    Column(
                      children: [
                        Text('e-RECEIPT',
                            style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 22, color: Colors.grey))),
                        Text('\$520',
                            style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green))),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: const Image(
                            image:
                                AssetImage('assets/images/dahabplus_logo.webp'),
                            height: 70,
                          ),
                          title: Text('Sender',
                              style: GoogleFonts.lexend(
                                  textStyle: const TextStyle(
                                      fontSize: 18, color: Colors.grey))),
                          subtitle: Text('667******',
                              style: GoogleFonts.lexend(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.share,
                              color: Colors.grey,
                              size: 40,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Date',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13, color: Colors.grey))),
                                Text('Jan 20, 2024',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold))),
                                Text('Receipiant',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13, color: Colors.grey))),
                                Text('667852158',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold))),
                                Text('Receipiant Name',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                      fontSize: 13,
                                    ))),
                                Text('MOHAMED AHMED \nMOHAMED',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)))
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.qr_code_2_sharp,
                                size: 80,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('eDahab Transfer MOHAMED AHMED MOHAMED',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 15, color: Colors.grey))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 55,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.refresh,
                                        color: Colors.grey,
                                        size: 40,
                                      ),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 55,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                        size: 40,
                                      ),
                                      onPressed: () {},
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
                )
              ],
            ),
            isThreeLine: true,
          ),
          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  contentPadding: const EdgeInsets.all(5),
                  title: const Image(
                    image: AssetImage('assets/images/new_dahabplus_logo.png'),
                  ),
                  actions: [
                    Column(
                      children: [
                        Text('e-RECEIPT',
                            style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 22, color: Colors.grey))),
                        Text('\$1500',
                            style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green))),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: const Image(
                            image:
                                AssetImage('assets/images/dahabplus_logo.webp'),
                            height: 70,
                          ),
                          title: Text('Sender',
                              style: GoogleFonts.lexend(
                                  textStyle: const TextStyle(
                                      fontSize: 18, color: Colors.grey))),
                          subtitle: Text('667******',
                              style: GoogleFonts.lexend(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.share,
                              color: Colors.grey,
                              size: 40,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Date',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13, color: Colors.grey))),
                                Text('Jan 20, 2024',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold))),
                                Text('Receipiant',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13, color: Colors.grey))),
                                Text('66228',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold))),
                                Text('Receipiant Name',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                      fontSize: 13,
                                    ))),
                                Text('AMAL BANK  \n HQ',
                                    style: GoogleFonts.lexend(
                                        textStyle: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)))
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.qr_code_2_sharp,
                                size: 80,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('eDahab Transfer AMAL BANK HQ',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 15, color: Colors.grey))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 55,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.refresh,
                                        color: Colors.grey,
                                        size: 40,
                                      ),
                                      onPressed: () {},
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 55,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                        size: 40,
                                      ),
                                      onPressed: () {},
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
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
                      textStyle:
                          const TextStyle(fontSize: 17, color: Colors.grey)),
                )
              ],
            ),
            isThreeLine: true,
          )
        ],
      ),
    );
  }
}
