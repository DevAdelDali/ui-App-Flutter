import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moumen_app_ui/Models/faq.dart';

class FAQ_Screen extends StatefulWidget {
  const FAQ_Screen({Key? key}) : super(key: key);

  @override
  State<FAQ_Screen> createState() => _FAQ_ScreenState();
}

class _FAQ_ScreenState extends State<FAQ_Screen> {
  final List<Faq> _faqList = <Faq>[
    Faq(questionTitel: "Dart is originally developed by?", answer: "Google"),
    Faq(
        questionTitel: "An___is a real-time representation  \n  of any entity.",
        answer: "Object"),
    Faq(questionTitel: "Dart has multiple interfaces.", answer: "True"),
    Faq(
        questionTitel: "What are the data types in Dart language?",
        answer: ""
            " Numbers \n Strings \n Booleans \n Lists \n Maps"),
    Faq(
        questionTitel: "What are Getters and Setters?",
        answer:
            "Ans: Getters and Setters allow the program  \n to initialize and retrieve the value of class fields.  \n It is also known as accessors and mutators."),
    Faq(
        questionTitel: "What is pub in Dart?",
        answer: "Ans:In Dart, pub is a tool for manage Dart packages."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FAQs", style: GoogleFonts.adamina()),
        ),
        body: ListView(

          scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10), children: [
  ConstrainedBox(
    constraints: BoxConstraints(
      maxWidth: 300,

    ),
            child: ExpansionPanelList(
                elevation: 8,
                expandedHeaderPadding: const EdgeInsets.all(10),
                animationDuration: const Duration(seconds: 1),
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() => _faqList[panelIndex].isExpanded = !isExpanded);
                },
                dividerColor: const Color(0xFF607EAA),
                children: _faqList.map(
              (Faq faq) {
                return ExpansionPanel(
                  canTapOnHeader: true,
                  backgroundColor: const Color(0xFFF9F5EB),
                  isExpanded: faq.isExpanded,

                  headerBuilder: (context, isExpanded) {
                    return Container(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: Row(
                        children: [
                          const Icon(Icons.question_answer,
                              color: Colors.deepOrange),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            faq.questionTitel,
                            style: GoogleFonts.adamina(
                                fontSize: 14, color: Colors.deepOrange),
                          ),
                        ],
                      ),
                    );
                  },
                  body: Container(
                    padding: EdgeInsetsDirectional.only(bottom: 15, start: 35),
                    child: ConstrainedBox(
                      constraints:const BoxConstraints(
                        maxWidth:450
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.question_answer_outlined,
                              color: Colors.black),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(faq.answer),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ).toList()),
          ),
        ]));
  }
}
//   ExpansionPanelList(
//
//   children: _faqList.map(
//   (Faq faq) => ExpansionPanelList(
//   elevation: 8,
//   expandedHeaderPadding: const EdgeInsets.all(10),
//   animationDuration: const Duration(seconds: 1),
//   expansionCallback: (panelIndex, isExpanded) {
//     setState(
//             () => _faqList[panelIndex].isExpanded = !isExpanded);
//   },
//   dividerColor: const Color(0xFF607EAA),
//   children: [
//   ExpansionPanel(
//   canTapOnHeader: true,
//   backgroundColor: const Color(0xFFF9F5EB),
//   isExpanded: faq.isExpanded,
//   headerBuilder: (context, isExpanded) {
//     return
//   },
//   body: Container(
//     padding:
//     EdgeInsetsDirectional.only(bottom: 15, start: 35),
//     child: Row(
//       children: [
//         const Icon(Icons.question_answer_outlined,
//             color: Colors.black),
//         const SizedBox(
//           width: 8,
//         ),
//         Text(faq.answer),
//       ],
//     ),
//   ),
// ) ).to
// ,
// ]
//
//
// ),
// )
