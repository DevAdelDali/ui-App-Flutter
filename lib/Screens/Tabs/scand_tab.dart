import 'package:flutter/material.dart';

class ScandTab extends StatefulWidget {
  const ScandTab({Key? key}) : super(key: key);

  @override
  State<ScandTab> createState() => _ScandTabState();
}

class _ScandTabState extends State<ScandTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,

      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20),
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 15 ),
          elevation: 4,
          color: Colors.grey.shade300,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
}
