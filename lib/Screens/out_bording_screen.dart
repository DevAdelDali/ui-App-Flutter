import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moumen_app_ui/widgets/page_indecator.dart';
import 'package:moumen_app_ui/widgets/page_view_content.dart';
import 'package:moumen_app_ui/widgets/tab_page_selector_indecator.dart';

class Out_Bording extends StatefulWidget {
  const Out_Bording({Key? key}) : super(key: key);

  @override
  State<Out_Bording> createState() => _Out_BordingState();
}

class _Out_BordingState extends State<Out_Bording> {
  int _courantIndexTabPageviwe = 0;
  late PageController _counrolerPageView;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counrolerPageView = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _counrolerPageView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Visibility(
                visible: _courantIndexTabPageviwe != 2,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  child: Text("START",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                ),
                child: TextButton(
                  onPressed: () {
                    _counrolerPageView.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeOutExpo);
                  },
                  child: Text("SKIP",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                ),
              ),
            ),

            // if (_courantIndexTabPageviwe != 2)
            // Align(
            //   heightFactor: 1.6,
            //   alignment: AlignmentDirectional.bottomEnd,
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text("SKIP",
            //         style: GoogleFonts.poppins(
            //           color: Colors.black,
            //           fontSize: 20,
            //         )),
            //   ),
            // ),
            // if (_courantIndexTabPageviwe == 2)
            //   Align(
            //     heightFactor: 1.6,
            //     alignment: AlignmentDirectional.bottomEnd,
            //     child: TextButton(
            //       onPressed: () {},
            //       child: Text("START",
            //           style: GoogleFonts.poppins(
            //             color: Colors.black,
            //             fontSize: 20,
            //           )),
            //     ),
            //   ),
            Expanded(
              child: PageView(
                controller: _counrolerPageView,
                onPageChanged: (int courantindexTabPageviwe) {
                  setState(() {
                    _courantIndexTabPageviwe = courantindexTabPageviwe;
                  });
                },
                children: const [
                  PageView_Content(
                    img: "Couple",
                    titel: "Meet your perfect match",
                    subTitel:
                        "Please read our privacy policy \n and policy regarding before registering",
                  ),
                  PageView_Content(
                    img: "Friends",
                    titel: "Meet new friends",
                    subTitel:
                        "Please read our privacy policy \n and policy regarding before registering",
                  ),
                  PageView_Content(
                    img: "Eminem",
                    titel: "Make your playlist ",
                    subTitel:
                        "Please read our privacy policy \n and policy regarding before registering",
                  ),
                ],
              ),
            ),
            TabSelectorIndicator(
                courantindexTabPageviwe: _courantIndexTabPageviwe),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Page_Indecator(
                  iscurrentPadge: _courantIndexTabPageviwe == 0,
                ),
                Page_Indecator(
                    iscurrentPadge: _courantIndexTabPageviwe == 1,
                    margin_symatric_horizantal: 14),
                Page_Indecator(iscurrentPadge: _courantIndexTabPageviwe == 2),
              ],
            ),
            const SizedBox(
              height: 40,
            ),

            // Padding(
            //   padding: const EdgeInsets.only(
            //     right: 15.0,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       //     IconButton(
            //       //         onPressed: () {
            //       //           if (_courantIndexTabPageviwe != 0) {
            //       //             _counrolerPageView.previousPage(
            //       //                 duration: const Duration(seconds: 1),
            //       //                 curve: Curves.easeOutBack);
            //       //           }
            //       //         },
            //       //         icon: const Icon(Icons.arrow_back_ios)),
            //       //     IconButton(
            //       //         onPressed: () {
            //       //           if (_courantIndexTabPageviwe != 2) {
            //       //             _counrolerPageView.nextPage(
            //       //                 duration: const Duration(seconds: 1),
            //       //                 curve: Curves.easeOutBack);
            //       //           }
            //       //         },
            //       //         icon: const Icon(Icons.arrow_forward_ios,size: 30,)),
            //     ],
            //   ),
            // ),

            Visibility(
              visible: _courantIndexTabPageviwe == 2,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              replacement: IconButton(
                  onPressed: () {
                    if (_courantIndexTabPageviwe != 2) {
                      _counrolerPageView.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeOutBack);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                  )),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      backgroundColor: const Color(0xffE24E59),
                      minimumSize: const Size(323, 60)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  child: Text(
                    "START",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
            Visibility(
              visible: _courantIndexTabPageviwe != 2,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 300,
                  ),
                  IconButton(
                      onPressed: () {
                        if (_courantIndexTabPageviwe != 2) {
                          _counrolerPageView.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeOutBack);
                        }
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 30,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
/*
class AA extends StatefulWidget {
  const AA({Key? key}) : super(key: key);

  @override
  State<AA> createState() => _AAState();
}

class _AAState extends State<AA> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/
