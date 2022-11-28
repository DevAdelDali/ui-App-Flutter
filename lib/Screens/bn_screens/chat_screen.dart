import 'package:flutter/material.dart';
import 'package:moumen_app_ui/Screens/chat_massage.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static const  List _names = [
    "Adel ",
    "Shadi",
    "Dalia",
    "Ahlam",
    "Ahmed",
    "Abeer",
  ];

  @override
  Widget build(BuildContext context) {
    return
 ListView.separated(
        
        
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:  (context) => const ChatMassage(),));
              },
              leading: const Icon(Icons.chat),
              title: Text("${_names[index]  } : $index "),
              subtitle: const Text("hallo..How are you?"),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black12,
              height: 0,
              thickness: 1,
              endIndent: 10,
              indent: 10,
            );
          },
          itemCount: _names.length);

      // body: ListView.builder(
      //   itemCount: 30,
      //   itemBuilder: (context, index) {

      // return const ListTile(

      //               leading: Icon(Icons.chat),
      //               title: Text("User Name "),
      //               subtitle: Text("hallo..How are you?"),
      //             ) ;
      //
      // },),
      // body: ListView(
      //   shrinkWrap: true,
      //   children:const [
      //       ListTile(

      //       leading: Icon(Icons.chat),
      //       title: Text("User Name "),
      //       subtitle: Text("hallo..How are you?"),
      //     )
      //   ],
      // ),

  }
}
