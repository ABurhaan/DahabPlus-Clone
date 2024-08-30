import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statement extends StatefulWidget {
  const Statement({super.key});

  @override
  State<Statement> createState() => _StatementState();
}

class _StatementState extends State<Statement> {
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
          'Edahab statement',
          style: GoogleFonts.lexend(
              textStyle: const TextStyle(fontSize: 22, color: Colors.white)),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          DropdownButton(
            isExpanded: true,
            padding: const EdgeInsets.only(left: 15, right: 15),
            items: const [
              DropdownMenuItem(
                child: Center(child: Text('667767700-DOLLAR (USD)')),
              ),
            ],
            onChanged: (value) {},
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.download,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                labelText: 'Recipient Number',
                labelStyle: GoogleFonts.lexend(
                    textStyle:
                        const TextStyle(fontSize: 18, color: Colors.grey))),
          ),
          const SizedBox(
            height: 15,
          ),
          Table(
            border: TableBorder.all(),
            columnWidths: const {0: FlexColumnWidth(2), 1: FlexColumnWidth(2)},
            children: [
              TableRow(children: [
                TableCell(
                    child: Text(
                  'Recipient',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  )),
                )),
                TableCell(
                    child: Text(
                  'Date',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  )),
                )),
                TableCell(
                    child: Text(
                  'Type',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  )),
                )),
                TableCell(
                    child: Text(
                  'Amount',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  )),
                )),
                TableCell(
                    child: Text(
                  'Balance',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  )),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text(
                  '661558325',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '22-01-2024',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    '-',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                )),
                TableCell(
                    child: Text(
                  '100',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '0.0',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text(
                  '661521003',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '22-01-2024',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    '+',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                      fontSize: 17,
                    )),
                  ),
                )),
                TableCell(
                    child: Text(
                  '200',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '200',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text(
                  '667767700',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '20-01-2024',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    '+',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                      fontSize: 17,
                    )),
                  ),
                )),
                TableCell(
                    child: Text(
                  '1000',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '1020',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text(
                  '660000000',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '15-01-2024',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    '-',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                )),
                TableCell(
                    child: Text(
                  '200',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '520',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text(
                  '660000000',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '15-01-2024',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    '-',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                )),
                TableCell(
                    child: Text(
                  '200',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '520',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text(
                  '660000000',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '15-01-2024',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    '-',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                )),
                TableCell(
                    child: Text(
                  '200',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '520',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text(
                  '660000000',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '15-01-2024',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Center(
                  child: Text(
                    '+',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                      fontSize: 17,
                    )),
                  ),
                )),
                TableCell(
                    child: Text(
                  '200',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
                TableCell(
                    child: Text(
                  '520',
                  style: GoogleFonts.lexend(
                      textStyle: const TextStyle(
                    fontSize: 17,
                  )),
                )),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
