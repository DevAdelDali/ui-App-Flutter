import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class luncher_APP extends StatefulWidget {
  const luncher_APP({Key? key}) : super(key: key);

  @override
  State<luncher_APP> createState() => _luncher_APPState();
}

class _luncher_APPState extends State<luncher_APP> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, "/Out_Boarding");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [
            Colors.pink.shade100,
            Colors.blue.shade100,
          ],
        )),
        child: Center(child: Text("UI APP",style: GoogleFonts.meriendaOne(fontSize: 20,color: Colors.black),)),
      ),
    );
  }
}
