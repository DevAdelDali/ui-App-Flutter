import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login "),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Sign up",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    // fontFamily: "ProximaNovaFont",
                    color: Color(0xff8D8D8D)),
              )),
          TextField(
            style: TextStyle(fontFamily: "ProximaNovaFont"),
            onTap: () {
              print("object Tabed ");
            },
            onChanged: (value) => print(value),
            textInputAction: TextInputAction.search,
            onSubmitted: (value) => print("Search : $value"),
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            textCapitalization: TextCapitalization.none,
            // textDirection: TextDecoration.,

            obscureText: true,
            obscuringCharacter: "*",
          )
        ],
      ),
    );
  }
}
