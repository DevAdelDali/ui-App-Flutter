import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = true;

  late TextEditingController _emailControler;
  late TextEditingController _passwordControler;

  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailControler = TextEditingController();
    _passwordControler = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _emailControler.dispose();
    _passwordControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login "),
      // ),
      body: ListView(
        padding: EdgeInsets.only(top: 82),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        // fontFamily: "ProximaNovaFont",
                        color: Color(0xff8D8D8D)),
                  )),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 25.0,
              //     bottom: 14,
              //     top: 32,
              //   ),
              //   child: Text(
              //     "Email address",
              //     style: GoogleFonts.poppins(
              //       fontSize: 15,
              //       color: Color(0xff8D8D8D),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: TextField(
              //     // minLines: null,
              //     // maxLines: null,
              //     // expands: true,
              //     style: TextStyle(fontFamily: "ProximaNovaFont"),
              //     onTap: () {
              //       print("object Tabed ");
              //     },
              //     onChanged: (value) => print(value),
              //     textInputAction: TextInputAction.search,
              //     onSubmitted: (value) => print("Search : $value"),
              //     keyboardType: TextInputType.emailAddress,
              //     ///////////////////////////////
              //
              //     textAlignVertical: TextAlignVertical.center,
              //     textCapitalization: TextCapitalization.none,
              //     ///////////////////////////////
              //     textDirection: TextDirection.ltr,
              //     textAlign: TextAlign.start,
              //     ///////////////////////////////
              //     obscureText: false,
              //     obscuringCharacter: "*",
              //     ///////////////////////////////
              //     enabled: true,
              //     readOnly: false,
              //     ///////////////////////////////
              //     // maxLength: 40,
              //     // buildCounter: (
              //     //   /// The build context for the TextField.
              //     //   BuildContext context, {
              //
              //     // /// The length of the string currently in the input.
              //     // required int currentLength,
              //
              //     // /// The maximum string length that can be entered into the TextField.
              //     // required int? maxLength,
              //
              //     //   /// Whether or not the TextField is currently focused.  Mainly provided for
              //     //   /// the [liveRegion] parameter in the [Semantics] widget for accessibility.
              //     //   required bool isFocused,
              //     // }) {
              //     //   return isFocused
              //     //       ? Text(
              //     //           "$currentLength / $maxLength ",
              //     //           style: GoogleFonts.poppins(),
              //     //         )
              //     //       : null;
              //     // },
              //
              //     cursorColor: Colors.blue.shade400,
              //     cursorWidth: 2,
              //     cursorRadius: Radius.circular(1),
              //     showCursor: true,
              //     mouseCursor: MouseCursor.defer,
              //     ///////////////////////////////
              //     decoration: InputDecoration(
              //         focusColor: Colors.white,
              //         // counterText: "",
              //         contentPadding: EdgeInsets.zero,
              //         // constraints: BoxConstraints(maxHeight: 50),
              //         hintText: "  ttastystile@gmail.com",
              //
              //         //     helperStyle: TextStyle(
              //         //       color: Colors.black,
              //         //     )
              //         //
              //         ////////////////////
              //         // helperText: "EX : adddd@gmail.com",
              //         // helperMaxLines: 1,
              //         // helperStyle: GoogleFonts.poppins(),
              //         ////////////////////
              //         // labelText: "Email",
              //         floatingLabelAlignment: FloatingLabelAlignment.center,
              //         filled: true,
              //         fillColor: Colors.black12,
              //         ////////////////////
              //
              //         // prefixIcon: Icon(Icons.email),
              //         // prefixIconColor: Colors.blue,
              //         // suffixIcon: IconButton(
              //         //     onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
              //         ////////////////////
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10),
              //             borderSide:
              //                 const BorderSide(color: Color(0xffFDDBDD), width: 1)),
              //         ////////////////////
              //
              //         //   enabledBorder: OutlineInputBorder(
              //         //       borderRadius: BorderRadius.circular(10),
              //         //       borderSide: BorderSide(color: Color(0xffFDDBDD), width: 1)),
              //         // ),
              //         focusedBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10),
              //             borderSide: const BorderSide(
              //                 color: Color(0xffFDDBDD),
              //                 width: 1,
              //                 style: BorderStyle.solid))),
              //   ),
              //   ///////////////////////////////
              // ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  bottom: 14,
                  top: 32,
                ),
                child: Text(
                  "Email address",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xff8D8D8D),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
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
                ),
              ),

              ////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  bottom: 14,
                  top: 32,
                ),
                child: Text(
                  "Password",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xff8D8D8D),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: _passwordControler,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _showPass,
                  enableSuggestions: false,
                  maxLines: 1,
                  minLines: 1,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    constraints: BoxConstraints(maxHeight:  _passwordError==null ?50:70),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showPass = !_showPass;
                          });
                        },
                        icon: Icon(
                          _showPass
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                          color: Color(0xffE24E59),
                        )),
                    contentPadding: EdgeInsets.zero,
                    hintText: "  ********",
                    hoverColor: Colors.pink,
                    hintMaxLines: 1,
                    focusColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xffFDDBDD),
                          style: BorderStyle.solid),
                    ),
                    errorText: _passwordError,
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
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(30.0),
              //   child: Row(
              //     children: [
              //       Column(
              //         children: const [
              //           Text("+ 8 characters "),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Text("+ 1 number "),
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () => _performloginData(),
                  child: Text("Continue",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Color(0xffE24E59),
                          fontWeight: FontWeight.normal)),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xffE24E59),
                      minimumSize: Size(323, 60),
                      backgroundColor: Color(0xffFBECED),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      alignment: Alignment.center),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _performloginData() {
    SystemChannels.textInput.invokeListMethod("TextInput.hide");

    if (_ischeckedData()) {
      _login();
    }
  }

  bool _ischeckedData() {
    _controllErorrValue();
    if (_emailControler.text.isNotEmpty && _passwordControler.text.isNotEmpty) {
      return true;
    }



    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      // margin: EdgeInsets.only(left: 10,right: 10),    width: 200,

      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 3),
      action: SnackBarAction(
          label: "OK", onPressed: () {}, textColor: Colors.white),

      dismissDirection: DismissDirection.horizontal,
      content: Text(
        "Sorry Enter  Valid Value ..! ",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      backgroundColor: Colors.red,
    ));
    return false;
  }

  void _controllErorrValue() {
    setState((){

      _emailError = _emailControler.text.isEmpty ? "Enter Your Email " : null;
      _passwordError =
      _passwordControler.text.isEmpty ? "Enter Your password " : null;
    });
  }

  void _login() {

    Navigator.pushReplacementNamed(context, "/BottomNavigationBarScreen");
  }
}
