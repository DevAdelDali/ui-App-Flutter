import 'package:flutter/material.dart';
import 'package:moumen_app_ui/Screens/login.dart';
import 'package:moumen_app_ui/Screens/luncher_app.dart';
import 'package:moumen_app_ui/Screens/out_bording_screen.dart';

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

      },
    );
  }
}
