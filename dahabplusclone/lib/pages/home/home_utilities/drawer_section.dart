import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class DrawerSection extends StatefulWidget {
  const DrawerSection({super.key});

  @override
  State<DrawerSection> createState() => _DrawerSectionState();
}

class _DrawerSectionState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: ListView(
        children: [
          Column(
            children: [
              const Image(
                image: AssetImage('assets/images/dahabplus_logo.webp'),
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Registrations',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              color: Colors.grey, fontSize: 15)),
                    )),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.add),
                title: Text(
                  'Create Dahabshiil Account',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: Text(
                  'Register New eDahab',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Link To DahabPlus',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              color: Colors.grey, fontSize: 15)),
                    )),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.add),
                title: Text(
                  'eDahab Wallet',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: Text(
                  'DahabPay Account',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: Text(
                  'DBI Account',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Operations',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              color: Colors.grey, fontSize: 15)),
                    )),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: Text(
                  'Pay Merchant',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.phone_android),
                title: Text(
                  'Send To Mobile',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.compare_arrows),
                title: Text(
                  'Account Transfer',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.globe),
                title: Text(
                  'Send Remmitance',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.money_dollar),
                title: Text(
                  'Cash Out',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: Text(
                  'Change eDahab PIN',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: Text(
                  'Change DBI PIN',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.currency_exchange),
                title: Text(
                  'Exchange Currency',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_down),
                title: Text(
                  'Account Deposit',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_up),
                title: Text(
                  'Account Withdraw',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.remove_red_eye),
                title: Text(
                  'Account Balance',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.close),
                title: Text(
                  'Remove Wallet',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.close),
                title: Text(
                  'Remove Account',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Statements',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              color: Colors.grey, fontSize: 15)),
                    )),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.receipt),
                title: Text(
                  'eDahab Statement',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.receipt),
                title: Text(
                  'Account Statement',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.receipt),
                title: Text(
                  'Remittance Statement',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Support',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              color: Colors.grey, fontSize: 15)),
                    )),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.help_outline_outlined),
                title: Text(
                  'Get Help',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.security),
                title: Text(
                  'Security info',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 15,
                  )),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {},
              ),
              Text(
                'Log Out',
                style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              Text(
                'Secure Your Account',
                style: GoogleFonts.urbanist(
                    textStyle: const TextStyle(
                  fontSize: 15,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.logout),
                    color: Colors.red[300],
                    iconSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Version 1.0.0',
                  style: GoogleFonts.urbanist(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 145, 143, 143))),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
