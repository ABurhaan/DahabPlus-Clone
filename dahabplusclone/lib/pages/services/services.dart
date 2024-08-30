import 'package:dahabplusclone/pages/home/home_utilities/customer_support.dart';
import 'package:dahabplusclone/pages/home/home_utilities/drawer_section.dart';
import 'package:dahabplusclone/pages/services/serviceutilities/banking_services.dart';
import 'package:dahabplusclone/pages/services/serviceutilities/education_services.dart';
import 'package:dahabplusclone/pages/services/serviceutilities/telecom_services.dart';
import 'package:dahabplusclone/pages/services/serviceutilities/utility_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
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
      body: ListView(
        children: [
          ListTile(
            leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red[600],
                ),
                child: const Icon(
                  Icons.sim_card,
                  color: Colors.white,
                  size: 30,
                )),
            title: Text('TELECOM SERVICES',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Somtel SmartPay, Airtime & Internet',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Telecom(),
                  ));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.orange[600],
                ),
                child: const Icon(
                  Icons.lightbulb,
                  color: Colors.white,
                  size: 30,
                )),
            title: Text('UTILITY SERVICES',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Sompower & Aloog Electricty Bills',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Utility(),
                  ));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.pink[600],
                ),
                child: const Icon(
                  Icons.menu_book_sharp,
                  color: Colors.white,
                  size: 30,
                )),
            title: Text('EDUCATION SERVICES',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('University Fees Payment',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Education(),
                  ));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.purple[600],
                ),
                child: const Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                  size: 30,
                )),
            title: Text('MARKETS SERVICES',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Oil & Gas, Food & Electronics',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue[600],
                ),
                child: const Icon(
                  Icons.villa,
                  color: Colors.white,
                  size: 30,
                )),
            title: Text('BANKING SERVICES',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Dahabshiil Bank International Services',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Banking(),
                  ));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green[600],
                ),
                child: const Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                  size: 30,
                )),
            title: Text('SUPPORT SERVICES',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Live Chat, WhatsApp & Call Center',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Customer(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
