import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(224, 224, 224, 1)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.arrow_2_circlepath,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.currency_exchange,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/dahabshiil-removebg-preview.png',
            ),
            opacity: 0.2,
          ),
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 50, 141, 55),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet Account',
                    style: GoogleFonts.lexend(
                        textStyle:
                            const TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                  Text(
                    '667767700',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Balance',
                    style: GoogleFonts.lexend(
                        textStyle:
                            const TextStyle(fontSize: 17, color: Colors.white)),
                  ),
                  Text(
                    '*****',
                    style: GoogleFonts.lexend(
                        textStyle:
                            const TextStyle(fontSize: 25, color: Colors.white)),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Text(
                    'eDahab',
                    style: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(153, 196, 196, 196),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                          size: 27,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}
