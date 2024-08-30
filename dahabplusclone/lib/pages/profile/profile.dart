import 'package:dahabplusclone/pages/home/home_utilities/customer_support.dart';
import 'package:dahabplusclone/pages/home/home_utilities/drawer_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Customer()));
                },
                icon: const Icon(CupertinoIcons.person_circle),
              ),
            )
          ],
        ),
        drawer: const DrawerSection(),
        body: ListView(
          children: [
            ExpansionTile(
              shape: InputBorder.none,
              initiallyExpanded: true,
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
              title: Center(
                child: Text('ABDULLAHI BURHAN',
                    style: GoogleFonts.lexend(
                        textStyle: const TextStyle(
                      fontSize: 18,
                    ))),
              ),
              subtitle: Center(
                  child: Text('252667767700',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.grey)))),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Email',
                          style: GoogleFonts.lexend(
                              textStyle: const TextStyle(
                                  fontSize: 17, color: Colors.grey))),
                      Text('yazzeryazka300@gmail.com',
                          style: GoogleFonts.lexend(
                              textStyle: const TextStyle(
                            fontSize: 18,
                          )))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('WhatsApp Number',
                          style: GoogleFonts.lexend(
                              textStyle: const TextStyle(
                                  fontSize: 17, color: Colors.grey))),
                      Text('252667767700',
                          style: GoogleFonts.lexend(
                              textStyle: const TextStyle(
                            fontSize: 18,
                          )))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('OTP Preferences',
                          style: GoogleFonts.lexend(
                              textStyle: const TextStyle(
                                  fontSize: 17, color: Colors.grey))),
                      Text('[SMS, WhatsApp, Email]',
                          style: GoogleFonts.lexend(
                              textStyle: const TextStyle(
                            fontSize: 18,
                          )))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: Text('Set Name',
                            style: GoogleFonts.lexend(
                                textStyle: const TextStyle(
                                    fontSize: 18, color: Colors.green))),
                        style: const ButtonStyle(),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Account Settings',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.grey))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.green,
                    ),
                    title: Text('Change Password',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email_outlined,
                      color: Colors.green,
                    ),
                    title: Text('Change Email',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      CupertinoIcons.chat_bubble,
                      color: Colors.green,
                    ),
                    title: Text('Change WhatsApp Number',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phonelink_ring_outlined,
                      color: Colors.green,
                    ),
                    title: Text('OTP Delivery Preferences',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      CupertinoIcons.creditcard,
                      color: Colors.green,
                    ),
                    title: Text('Add Source of Fund',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.add,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            const Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Security Settings',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.grey))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      Icons.lock,
                      color: Colors.green,
                    ),
                    title: Text('Screen Lock',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('More',
                      style: GoogleFonts.lexend(
                          textStyle: const TextStyle(
                              fontSize: 18, color: Colors.grey))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      Icons.help_center_outlined,
                      color: Colors.green,
                    ),
                    title: Text('Get Help',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Customer(),
                          ));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 18),
                  child: ListTile(
                    leading: const Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.green,
                    ),
                    title: Text('Privacy Policy',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 18, bottom: 20),
                  child: ListTile(
                    leading: const Icon(
                      Icons.library_books_outlined,
                      color: Colors.green,
                    ),
                    title: Text('Terms and conditions',
                        style: GoogleFonts.lexend(
                            textStyle: const TextStyle(
                          fontSize: 18,
                        ))),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
