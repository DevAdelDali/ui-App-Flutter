import 'package:flutter/material.dart';


class SliderCutom extends StatefulWidget {
  const SliderCutom({Key? key}) : super(key: key);

  @override
  State<SliderCutom> createState() => _SliderCutomState();
}

class _SliderCutomState extends State<SliderCutom> {

  double _value = 1;
  RangeValues _valueRange = RangeValues(2, 5);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [


        RangeSlider(
            values: _valueRange,
            max: 10,
            min: 1,
            onChanged: (value) {
              setState(() {
                _valueRange = value;
              });
            }),
        Slider(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
          onChangeEnd: (value) {
            setState(() {
              _value = value;
            });
          },
          onChangeStart: (value) {
            setState(() {
              print(value);

              _value = value;
            });
          },
          max: 10,
          min: 1,
          label: "Choose Level..",
        )
      ],
    );
  }
}
