import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    Key? key,
    required TextEditingController emailControler,
    required String? emailError,
  }) : _emailControler = emailControler, _emailError = emailError, super(key: key);

  final TextEditingController _emailControler;
  final String? _emailError;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _emailControler,
      keyboardType: TextInputType.emailAddress,
      maxLines: null,
      minLines: null,
      expands: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: "ttastystile@gmail.com",
        constraints: BoxConstraints(maxHeight: _emailError==null ?50:70),
        hoverColor: Colors.pink,
        hintMaxLines: 1,
        focusColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 1, color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                width: 1,
                color: Color(0xffFDDBDD),
                style: BorderStyle.solid)),
        errorText: _emailError,
        errorMaxLines: 1,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red.shade300,
              width: 1,
            )),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red.shade800,
              width: 1,
            )),
      ),
    );
  }
}