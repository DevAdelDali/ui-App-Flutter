import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView(
          padding: EdgeInsets.all(10),
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, mainAxisExtent: 255,childAspectRatio: 164/226),
          children: [
            Container(
              color: Colors.pink.shade100,
            ),
            Container(
              color: Colors.blue.shade100,
            ),
            Container(
              color: Colors.green.shade100,
            ),
            Container(
              color: Colors.orange.shade100,
            ),
            Container(
              color: Colors.pink.shade100,
            ),
            Container(
              color: Colors.blue.shade100,
            ),
            Container(
              color: Colors.green.shade100,
            ),
            Container(
              color: Colors.orange.shade100,
            ),
            Container(
              color: Colors.pink.shade100,
            ),
            Container(
              color: Colors.blue.shade100,
            ),
            Container(
              color: Colors.green.shade100,
            ),
            Container(
              color: Colors.orange.shade100,
            ),
            Container(
              color: Colors.pink.shade100,
            ),
            Container(
              color: Colors.blue.shade100,
            ),
            Container(
              color: Colors.green.shade100,
            ),
            Container(
              color: Colors.orange.shade100,
            ),
          ])
    ;
  }
}
