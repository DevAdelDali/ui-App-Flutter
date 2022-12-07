import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moumen_app_ui/Screens/Drawers/favorit_screen.dart';

class AboutDev extends StatefulWidget {
  const AboutDev({Key? key}) : super(key: key);

  @override
  State<AboutDev> createState() => _AboutDevState();
}

class _AboutDevState extends State<AboutDev>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
            ),
            Text("Adel Dali",textAlign: TextAlign.center, style: GoogleFonts.adamina(fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            TabBar(
                controller: _tabController,
                 labelColor: Colors.black,
                tabs: [
              Text("First",style: GoogleFonts.adamina(
                fontSize: 18
              )),
              Text("Scand",style: GoogleFonts.adamina(
                  fontSize: 18
              )),
            ]), SizedBox(
              height: 20,
            ),
            Container(
                height: 600,
                child: Custom_Tab_View(tabController: _tabController)),
          ],
        ),
      ),
    );
  }
}
