import 'package:flutter/material.dart';
import 'package:moumen_app_ui/Screens/Drawers/about_dev.dart';
import 'package:moumen_app_ui/Screens/Drawers/faq_screen.dart';
import 'package:moumen_app_ui/Screens/Drawers/favorit_screen.dart';
import 'package:moumen_app_ui/Screens/Drawers/scand_faq_screen.dart';
import 'package:moumen_app_ui/Screens/Tabs/first_tab.dart';
import 'package:moumen_app_ui/Screens/Tabs/scand_tab.dart';
import 'package:moumen_app_ui/Screens/bn_screens/bottom_navigation_bar_screen.dart';
import 'package:moumen_app_ui/Screens/bn_screens/chat_screen.dart';
import 'package:moumen_app_ui/Screens/bn_screens/users_screen.dart';
import 'package:moumen_app_ui/Screens/bn_screens/home_screen.dart';
import 'package:moumen_app_ui/Screens/login.dart';
import 'package:moumen_app_ui/Screens/luncher_app.dart';
import 'package:moumen_app_ui/Screens/out_bording_screen.dart';
import 'package:moumen_app_ui/widgets/cart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/luncher_APP",

      routes: {
        "/luncher_APP":(context) => const luncher_APP(),
        "/Out_Boarding":(context) => const Out_Bording(),
        "/login":(context) => const LoginScreen(),
        "/ChatScreen":(context) => const ChatScreen(),
        "/UserScreen":(context) => const UserScreen(),
        "/HomeScreen":(context) => const HomeScreen(),
        "/BottomNavigationBarScreen":(context) => const BottomNavigationBarScreen(),
        "/FAQ_Screen":(context) => const FAQ_Screen(),
        "/ScandFaq":(context) => const ScandFaq(),
        "/FavoriteScreen":(context) => const FavoriteScreen(),
        "/FirstTab":(context) => const FirstTab(),
        "/ScandTab":(context) => const ScandTab(),
        "/AboutDev":(context) => const AboutDev(),
        "/MySample":(context) =>  MySample(),

      },
    );
  }
}
