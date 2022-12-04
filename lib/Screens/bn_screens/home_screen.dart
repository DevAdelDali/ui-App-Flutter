import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Slecte Titel ",
              style: GoogleFonts.adamina(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Spacer(),
            TextButton(
                onPressed: () {},
                child: Text("see all", style: GoogleFonts.adamina()))
          ],
        ),
        // ConstrainedBox(
        //   constraints: const BoxConstraints(
        //     maxHeight: 120,
        //   ),
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: _itemCount,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         color: index % 2 == 0
        //             ? Colors.pink.shade200
        //             : Colors.blue.shade200,
        //         height: 100,
        //         width: 100,
        //         margin: EdgeInsetsDirectional.only(end: index != _itemCount -1  ? 7 : 0),
        //       );
        //     },
        //   ),
        // )
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 80),
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 10),
            itemCount: _itemCount,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                // margin: EdgeInsetsDirectional.all( index != _itemCount -1  ? 10 : 0),
                width: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(index % 2 == 0
                      ? "https://fr.web.img4.acsta.net/pictures/16/03/22/12/38/275927.jpg"
                      : "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Slecte Titel ",
              style: GoogleFonts.adamina(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  "see all",
                  style: GoogleFonts.adamina(),
                ))
          ],
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 7,
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisExtent: 150,
          ),
          scrollDirection: Axis.vertical,
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              color:
                  index % 2 == 0 ? Colors.pink.shade200 : Colors.blue.shade200,
              height: 100,
              width: 100,
              margin: EdgeInsetsDirectional.only(
                  end: index != _itemCount - 1 ? 7 : 0),
              child: Image.network(
                index % 2 == 0
                    ? "https://thebigmansworld.com/wp-content/uploads/2021/07/keto-drink-mix4.jpeg"
                    : "https://media.cnn.com/api/v1/images/stellar/prod/211006114703-best-meal-delivery-service-freshly.jpg?q=w_1601,h_900,x_0,y_0,c_fill",
                fit: BoxFit.fill,
              ),
            );
          },
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Slecte Titel ",
              style: GoogleFonts.adamina(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Spacer(),
            TextButton(
                onPressed: () {},
                child: Text("see all", style: GoogleFonts.adamina()))
          ],
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisCount: 1,
            crossAxisSpacing: 5,
            mainAxisExtent: 150,
          ),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              color:
                  index % 2 == 0 ? Colors.pink.shade200 : Colors.blue.shade200,
              height: 100,
              width: 100,
              margin: EdgeInsetsDirectional.only(
                  end: index != _itemCount - 1 ? 7 : 0),
              child: Image.network(
                index % 2 == 0
                    ? "https://thebigmansworld.com/wp-content/uploads/2021/07/keto-drink-mix4.jpeg"
                    : "https://media.cnn.com/api/v1/images/stellar/prod/211006114703-best-meal-delivery-service-freshly.jpg?q=w_1601,h_900,x_0,y_0,c_fill",
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ],
    );
  }
}
