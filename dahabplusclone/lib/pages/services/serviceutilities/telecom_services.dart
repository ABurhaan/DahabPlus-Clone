import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Telecom extends StatefulWidget {
  const Telecom({super.key});

  @override
  State<Telecom> createState() => _TelecomState();
}

class _TelecomState extends State<Telecom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Telecom Services',
            style: GoogleFonts.lexend(
                textStyle: const TextStyle(
                    fontSize: 22,
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
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/images/somtel.png'),
              width: 40,
            ),
            title: Text('Airtime & Data Bundles',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Buy Somtel Airtime & Data Bundles',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
          ),
          const Divider(
            thickness: 0.5,
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/images/somtel.png'),
              width: 40,
            ),
            title: Text('Smart Pay Products',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Buy Now & Pay Later',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
