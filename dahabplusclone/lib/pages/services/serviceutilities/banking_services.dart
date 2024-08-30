import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Banking extends StatefulWidget {
  const Banking({super.key});

  @override
  State<Banking> createState() => _BankingState();
}

class _BankingState extends State<Banking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Image(
            image: AssetImage('assets/images/dahabshiil_logo.png'),
            width: 230,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Image(
            image: AssetImage('assets/images/dahabshiil_bank.jpeg'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('BANKING SERVICES',
                  style: GoogleFonts.lexend(
                      textStyle:
                          const TextStyle(fontSize: 18, color: Colors.grey))),
            ),
            ListTile(
              leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100]),
                  child: const Icon(
                    Icons.house,
                    size: 35,
                    color: Colors.blue,
                  )),
              title: Text('Register Bank Account',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 16,
                  ))),
              subtitle: Text('Register new Dahabshiil Bank Account',
                  style: GoogleFonts.lexend(
                      textStyle:
                          const TextStyle(fontSize: 14, color: Colors.grey))),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 25,
              ),
            ),
            const Divider(),
            ListTile(
              leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100]),
                  child: const Icon(
                    Icons.location_on,
                    size: 35,
                    color: Colors.blue,
                  )),
              title: Text('Branches & ATM Locations',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 16,
                  ))),
              subtitle: Text('Find nearest branches and locations',
                  style: GoogleFonts.lexend(
                      textStyle:
                          const TextStyle(fontSize: 14, color: Colors.grey))),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 25,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
