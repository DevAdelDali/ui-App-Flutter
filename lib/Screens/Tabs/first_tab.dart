import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {

          return ListTile(
            leading: Icon(Icons.person),
            title: Text("Person Number : $index "),
          );
        },


   );
  }
}
