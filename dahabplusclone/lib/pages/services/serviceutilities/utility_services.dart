import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utility extends StatefulWidget {
  const Utility({super.key});

  @override
  State<Utility> createState() => _UtilityState();
}

class _UtilityState extends State<Utility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Utility Services',
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
              image: AssetImage('assets/images/sompower_logo.jpg'),
              width: 40,
            ),
            title: Text('Sompowe Elecrtic Co',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Pay SomPower Bills',
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
              image: AssetImage('assets/images/Aloog.jpg'),
              width: 40,
            ),
            title: Text('Aloog Electric Co',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Pay Aloog Bills',
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
