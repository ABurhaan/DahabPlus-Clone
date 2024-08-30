import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  // ignore: non_constant_identifier_names
  List<String> SourceOfFund = [
    'USD 667767700',
  ];
  String selectedradio = 'Dollar';
  String selectedsource = 'USD 667767700';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Education Services',
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
            leading: const Icon(
              Icons.school,
              size: 30,
            ),
            title: Text('Universities',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 18,
                ))),
            subtitle: Text('Pay Your Fess',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ))),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 25,
            ),
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          height: 75,
                          decoration: const BoxDecoration(color: Colors.green),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                              const SizedBox(
                                width: 43,
                              ),
                              Text(
                                'Pay Merchant',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Source Of Fund',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 18, color: Colors.grey)),
                              ),
                              Container(
                                height: 70,
                                decoration:
                                    BoxDecoration(color: Colors.green[50]),
                                child: DropdownButton(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                  isExpanded: true,
                                  value: selectedsource,
                                  onChanged: (String? newvalue) {
                                    setState(() {
                                      selectedsource = newvalue!;
                                    });
                                  },
                                  items: SourceOfFund.map<
                                      DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Currency',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 18, color: Colors.grey)),
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.green[50]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: RadioListTile(
                                    title: const Text(
                                      'Dollar',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    value: 'Dollar',
                                    groupValue: selectedradio,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedradio = value.toString();
                                      });
                                    }),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'Merchant Number',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 18, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green[50]),
                                child: const TextField(
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'Merchant Name',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 18, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green[50]),
                                child: const TextField(
                                  readOnly: true,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'Amount',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 18, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green[50]),
                                child: const TextField(
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'eDahab PIN',
                                style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                        fontSize: 18, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 60, right: 60),
                              child: Container(
                                height: 70,
                                decoration: const BoxDecoration(),
                                child: const TextField(
                                  obscureText: true,
                                  maxLength: 4,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
