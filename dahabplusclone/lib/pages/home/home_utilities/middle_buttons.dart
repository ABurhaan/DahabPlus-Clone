import 'package:dahabplusclone/pages/home/home_utilities/statement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiddleButtons extends StatefulWidget {
  const MiddleButtons({super.key});

  @override
  State<MiddleButtons> createState() => _MiddleButtonsState();
}

class _MiddleButtonsState extends State<MiddleButtons> {
  // ignore: non_constant_identifier_names
  List<String> SourceOfFund = [
    'USD 667767700',
  ];
  String selectedradio = 'Dollar';
  String selectedsource = 'USD 667767700';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: 58,
                height: 65,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 254, 212),
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        enableDrag: true,
                        context: context,
                        builder: (context) {
                          return Column(
                            children: [
                              Container(
                                height: 75,
                                decoration:
                                    const BoxDecoration(color: Colors.green),
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
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                    Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.green[50]),
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
                                                DropdownMenuItem<String>>(
                                            (String value) {
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
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Container(
                                    decoration:
                                        BoxDecoration(color: Colors.green[50]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
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
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'Merchant Number',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green[50]),
                                      child: const TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'Merchant Name',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green[50]),
                                      child: const TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'Amount',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green[50]),
                                      child: const TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'eDahab PIN',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, right: 60),
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
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.greenAccent[400],
                    size: 40,
                  ),
                )),
            Container(
                width: 58,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        enableDrag: true,
                        context: context,
                        builder: (context) {
                          return Column(
                            children: [
                              Container(
                                height: 75,
                                decoration:
                                    const BoxDecoration(color: Colors.green),
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
                                      'Send To Mobile',
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
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                    Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.green[50]),
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
                                                DropdownMenuItem<String>>(
                                            (String value) {
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
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Container(
                                    decoration:
                                        BoxDecoration(color: Colors.green[50]),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
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
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'Mobile Number',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green[50]),
                                      child: const TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'Subscriber Name',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green[50]),
                                      child: const TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'Amount',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green[50]),
                                      child: const TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'eDahab PIN',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, right: 60),
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
                  icon: Icon(
                    Icons.phone_android,
                    size: 40,
                    color: Colors.red[200],
                  ),
                )),
            Container(
                width: 58,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.compare_arrows,
                    size: 50,
                    color: Colors.orange[300],
                  ),
                )),
            Container(
              width: 58,
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.globe,
                  color: Colors.purple[300],
                  size: 40,
                ),
              ),
            ),
            Container(
                width: 58,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: ((context) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'eDahab Operations',
                                  style: GoogleFonts.lexend(
                                      textStyle: const TextStyle(
                                    fontSize: 20,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.attach_money,
                                            color: Colors.blueGrey[900],
                                            size: 40,
                                          )),
                                    ),
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.green[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.lock,
                                            color: Colors.green[900],
                                            size: 40,
                                          )),
                                    ),
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.orange[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.currency_exchange,
                                          color: Colors.orangeAccent[400],
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50,
                                  right: 50,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '    Cash\n     Out',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                    Text(
                                      '    Change\n     PIN',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                    Text(
                                      'Exchage\nCurrency',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.red[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_circle_down_sharp,
                                            color: Colors.redAccent[700],
                                            size: 40,
                                          )),
                                    ),
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.green[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_circle_up,
                                            color: Colors.green,
                                            size: 40,
                                          )),
                                    ),
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.pink[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Colors.pink[700],
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50,
                                  right: 50,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Account\n Deposit',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                    Text(
                                      '  Account\nWithdrawal',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                    Text(
                                      'Account\nBalance',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                actions: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Text(
                                                            'SHOW EDAHAB STATEMENT',
                                                            style: GoogleFonts
                                                                .lexend(
                                                                    textStyle:
                                                                        const TextStyle(
                                                              fontSize: 18,
                                                            ))),
                                                      ),
                                                      const SizedBox(
                                                        height: 15,
                                                      ),
                                                      Text('Choose Wallet',
                                                          style: GoogleFonts.lexend(
                                                              textStyle:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .grey))),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Container(
                                                        height: 70,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color: Colors
                                                                .green[50]),
                                                        child: DropdownButton(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 15,
                                                                  right: 15),
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          isExpanded: true,
                                                          value: selectedsource,
                                                          onChanged: (String?
                                                              newvalue) {
                                                            setState(() {
                                                              selectedsource =
                                                                  newvalue!;
                                                            });
                                                          },
                                                          items: SourceOfFund.map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              value) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: value,
                                                              child:
                                                                  Text(value),
                                                            );
                                                          }).toList(),
                                                        ),
                                                      ),
                                                      Text('Choose Currency',
                                                          style: GoogleFonts.lexend(
                                                              textStyle:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .grey))),
                                                      Container(
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            color:
                                                                Colors.green),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 30,
                                                                  right: 30),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                  height: 25,
                                                                  width: 85,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      color: Colors
                                                                          .white),
                                                                  child: Center(
                                                                    child: Text(
                                                                        'Dollar',
                                                                        style: GoogleFonts.lexend(
                                                                            textStyle: const TextStyle(
                                                                                fontSize: 17,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Colors.black))),
                                                                  )),
                                                              Text('Shilling',
                                                                  style: GoogleFonts.lexend(
                                                                      textStyle: const TextStyle(
                                                                          fontSize:
                                                                              17,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              Colors.white)))
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text('Enter eDhab PIN',
                                                          style: GoogleFonts
                                                              .lexend(
                                                                  textStyle:
                                                                      const TextStyle(
                                                            fontSize: 18,
                                                          ))),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 60,
                                                                right: 60),
                                                        child: Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child:
                                                              const TextField(
                                                            obscureText: true,
                                                            maxLength: 4,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            decoration:
                                                                InputDecoration(),
                                                          ),
                                                        ),
                                                      ),
                                                      Center(
                                                        child: ElevatedButton(
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green),
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const Statement()),
                                                              );
                                                            },
                                                            child: Text('SHOW',
                                                                style: GoogleFonts.lexend(
                                                                    textStyle: const TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        color: Colors
                                                                            .white)))),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            );
                                          },
                                          icon: Icon(
                                            Icons.receipt,
                                            color: Colors.blue[400],
                                            size: 40,
                                          )),
                                    ),
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.purple[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.receipt,
                                            color: Colors.purple[700],
                                            size: 40,
                                          )),
                                    ),
                                    Container(
                                      height: 75,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.close,
                                          color: Colors.blue[400],
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 50,
                                  right: 50,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '  eDahab\nStatement',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                    Text(
                                      '   Remit\nStatement',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                    Text(
                                      'Remove\n  Wallet',
                                      style: GoogleFonts.lexend(
                                          textStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }));
                  },
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 40,
                  ),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Merchant',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 13,
                )),
              ),
              Text(
                'Mobile',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 13,
                )),
              ),
              Text(
                'Transfer',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 13,
                )),
              ),
              Text(
                'Remit',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 13,
                )),
              ),
              Text(
                'More',
                style: GoogleFonts.lexend(
                    textStyle: const TextStyle(
                  fontSize: 13,
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
