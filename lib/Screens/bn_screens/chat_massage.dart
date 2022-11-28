import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moumen_app_ui/Models/massage.dart';

class ChatMassage extends StatefulWidget {
  const ChatMassage({Key? key}) : super(key: key);

  @override
  State<ChatMassage> createState() => _ChatMassageState();
}

class _ChatMassageState extends State<ChatMassage> {
  List<Massage>  _massList =  [
    const Massage(content: "Joey has already told 😂  1", isOwner: true),
    const Massage(
        content:
            "You will come to the coffee shop in the evening?You will come to the coffee shop in the evening?You will come to the coffee shop in the evening? 2",
        isOwner: false),
    const Massage(content: "😂😂😂😂😂😂 ", isOwner: true),
    const Massage(content: "Hallo 4", isOwner: false),
    const Massage(content: "Will you be there already?", isOwner: true),
    const Massage(content: "I’ll come after work🚶🏽", isOwner: false),
    const Massage(content: "Hallo 3", isOwner: true),
    const Massage(content: "Hallo 4", isOwner: false),
    const Massage(
        content: "You will come to the coffee shop in the evening?",
        isOwner: true),
    const Massage(content: "Hallo 1", isOwner: true),
    const Massage(content: "Hallo 2", isOwner: false),
    const Massage(content: "Hallo 3", isOwner: true),
    const Massage(content: "Hallo 4", isOwner: false),
    const Massage(content: "Hallo 6", isOwner: true),
    const Massage(content: "Hallo 2", isOwner: false),
    const Massage(content: "Hallo 3", isOwner: true),
    const Massage(content: "Hallo 4", isOwner: false),
    const Massage(content: "Hallo 6", isOwner: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text("Chat"),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: _massList.map((Massage massage) {
                  return Align(
                    alignment: massage.isOwner
                        ? AlignmentDirectional.centerEnd
                        : AlignmentDirectional.centerStart,
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 5,
                        bottom: 10,
                        left: 20,
                      ),
                      margin: massage.isOwner
                          ? const EdgeInsetsDirectional.fromSTEB(60, 10, 10, 5)
                          : const EdgeInsetsDirectional.fromSTEB(10, 10, 60, 5),
                      decoration: BoxDecoration(
                          color: massage.isOwner
                              ? const Color(0xffE9868E)
                              : Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(massage.content,
                          style: GoogleFonts.poppins(fontSize: 16)),
                    ),
                  );
                }).toList()),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.black38,
                        blurRadius: 6)
                  ]),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                onTap: () {},
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions_outlined)),
                    suffixIcon: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 100, maxHeight: 50),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 90),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon:
                                        const Icon(Icons.attach_file_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.send)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    hintText: "Enter massage here..."),
              ),
            )
          ],
        ));
  }
}
