import 'package:flutter/material.dart';

class TabSelectorIndicator extends StatelessWidget {
  const TabSelectorIndicator({
    Key? key,
    required int courantindexTabPageviwe,
  })  : _courantindexTabPageviwe = courantindexTabPageviwe,
        super(key: key);

  final int _courantindexTabPageviwe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabPageSelectorIndicator(
            backgroundColor: _courantindexTabPageviwe == 0
                ? const Color(0xffE24E59)
                : Colors.black12,
            borderColor: _courantindexTabPageviwe == 0
                ? Colors.white
                : Colors.transparent,
            size: 10),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
        TabPageSelectorIndicator(
            backgroundColor: _courantindexTabPageviwe == 1
                ? const Color(0xffE24E59)
                : Colors.black12,
            borderColor: _courantindexTabPageviwe == 1
                ? Colors.white
                : Colors.transparent,
            size: 10),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
        TabPageSelectorIndicator(
            backgroundColor: _courantindexTabPageviwe == 2
                ? const Color(0xffE24E59)
                : Colors.black12,
            borderColor: _courantindexTabPageviwe == 2
                ? Colors.white
                : Colors.transparent,
            size: 10),
      ],
    );
  }
}
