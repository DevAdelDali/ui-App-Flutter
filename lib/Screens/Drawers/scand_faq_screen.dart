import 'package:flutter/material.dart';
import 'package:moumen_app_ui/Models/faq.dart';

class ScandFaq extends StatefulWidget {
  const ScandFaq({Key? key}) : super(key: key);

  @override
  State<ScandFaq> createState() => _ScandFaqState();
}

class _ScandFaqState extends State<ScandFaq> {
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
    Faq(
        questionTitel: "What is pub in Dart?",
        answer: "Ans:In Dart, pub is a tool for manage Dart packages."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _faqList.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(_faqList[index].questionTitel),
            leading:const  Icon(Icons.question_answer_outlined),
            collapsedBackgroundColor: const Color(0xFFF9F5EB),
            collapsedIconColor: Colors.deepOrange,
            collapsedTextColor: Colors.deepOrange,
            textColor: Colors.black,
            iconColor: Colors.black,


            backgroundColor: const Color(0xFFF9F5EB),
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                child: Row(
                  children: [
                    const Icon(Icons.question_answer),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(_faqList[index].answer)
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
