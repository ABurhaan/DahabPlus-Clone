import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
        title: Text(
          'Customer Support',
          style: GoogleFonts.lexend(
              textStyle: const TextStyle(fontSize: 22, color: Colors.white)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  CupertinoIcons.phone_circle,
                  color: Colors.green,
                ),
              ),
              title: Text(
                'WhatsApp Support',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                )),
              ),
              subtitle: Text(
                'Find Agents through +252667767700',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  color: Colors.green,
                ),
              ),
              title: Text(
                'Live Chat',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                )),
              ),
              subtitle: Text(
                'Live Chat 24/7',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  CupertinoIcons.phone,
                  color: Colors.green,
                ),
              ),
              title: Text(
                'Call Support',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                )),
              ),
              subtitle: Text(
                'Call on WhatsApp +252667767700',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.green,
                ),
              ),
              title: Text(
                'Send Email',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                )),
              ),
              subtitle: Text(
                'yazzeryazka300@gmail.com',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.feedback_outlined,
                  color: Colors.green,
                ),
              ),
              title: Text(
                'Feedback',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                )),
              ),
              subtitle: Text(
                'Give Us your Feedback',
                style: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.grey)),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            )
          ],
        ),
      ),
    );
  }
}
