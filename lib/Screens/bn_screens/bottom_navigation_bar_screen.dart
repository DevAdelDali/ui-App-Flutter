import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moumen_app_ui/Models/bn_screen.dart';
import 'package:moumen_app_ui/Screens/bn_screens/chat_screen.dart';
import 'package:moumen_app_ui/Screens/bn_screens/home_screen.dart';
import 'package:moumen_app_ui/Screens/bn_screens/settings_screen.dart';
import 'package:moumen_app_ui/Screens/bn_screens/users_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _currentIndex = 0;

  List<BnScreen> _bnListScreens = <BnScreen>[
    BnScreen(
        titel: "Home",
        coloeAppBar: Colors.blue.shade100,
        widgetBady: HomeScreen()),
    BnScreen(
        titel: "Users",
        coloeAppBar: Colors.pink.shade100,
        widgetBady: UserScreen()),
    BnScreen(
        titel: "Chats",
        coloeAppBar: Colors.orange.shade100,
        widgetBady: ChatScreen()),
    BnScreen(
        titel: "Setteings",
        coloeAppBar: Colors.green.shade100,
        widgetBady: SetteingsScrren()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                otherAccountsPicturesSize: Size(30, 30),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fgza9-1.fna.fbcdn.net/v/t39.30808-6/313196880_1489486971533463_1615035717297016981_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=6bXvJUV0odEAX9cMbOI&_nc_ht=scontent.fgza9-1.fna&oh=00_AfAiDuXwFGUZ-_GBbNfqJUAIEk1ezgqJIE3dWbksqx9Ldw&oe=63836574"),
                ),
                otherAccountsPictures: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ))
                ],
                accountName:  Text("Adel Saleh Dali",style: GoogleFonts.adamina()),
                accountEmail:  Text("aldalyadelsalehdali2002@gmail.com",style: GoogleFonts.adamina())),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Future.delayed(
                  Duration(milliseconds: 400),
                  () {
                    Navigator.pushNamed(context, "/FAQ_Screen");
                  },
                );
              },
              leading: const Icon(Icons.question_answer),
              trailing: const Icon(Icons.arrow_forward_ios, size: 17),
              title: Text("FAQs", style: GoogleFonts.adamina()),
              subtitle: Text("Frequently Ask Questions",
                  style: GoogleFonts.adamina()),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.group),
              trailing: const Icon(Icons.arrow_forward_ios, size: 17),
              title: Text("Team ", style: GoogleFonts.adamina()),
              subtitle: Text("Devlopment Team", style: GoogleFonts.adamina()),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.developer_mode),
              trailing: const Icon(Icons.arrow_forward_ios, size: 17),
              title: Text("About Developer", style: GoogleFonts.adamina()),
            ),
            const Divider(
              color: Colors.grey,
              height: 1.7,
              endIndent: 20,
              indent: 20,
            ),
            AboutListTile(
              applicationVersion: "1.2.4",
              applicationName: "Adel  Project",
              dense: false,
              icon: const Icon(Icons.mobile_friendly),
              child: Text("About App", style: GoogleFonts.adamina()),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);

                Future.delayed(
                  Duration(microseconds: 500000),
                  () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                );
              },
              leading: const Icon(Icons.logout),
              title: Text("LogOut", style: GoogleFonts.adamina()),
              subtitle: Text("Return Login page", style: GoogleFonts.adamina()),
            ),
          ],
        ),
      ),
      appBar: AppBar(
          title: Text(_bnListScreens[_currentIndex].titel,style: GoogleFonts.adamina()),
          backgroundColor: _bnListScreens[_currentIndex].coloeAppBar),
      body: Center(
        child: _bnListScreens[_currentIndex].widgetBady,
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          iconSize: 30,
          selectedLabelStyle: GoogleFonts.montserrat(fontSize: 15),
          unselectedLabelStyle: GoogleFonts.montserrat(fontSize: 12),
          // showUnselectedLabels: true,
          unselectedIconTheme: const IconThemeData(size: 26),
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black45,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              backgroundColor: Colors.blue.shade100,
              activeIcon: const Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              activeIcon: const Icon(Icons.person),
              icon: const Icon(Icons.person_outline_outlined),
              backgroundColor: Colors.pink.shade100,
              label: "Users",
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.chat_outlined),
                activeIcon: const Icon(Icons.chat),
                backgroundColor: Colors.orange.shade100,
                label: "Chats"
            ),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings_outlined,
                ),
                activeIcon: const Icon(Icons.settings),
                backgroundColor: Colors.green.shade100,
                label: "Settings"),
          ]),
    );
  }
}
