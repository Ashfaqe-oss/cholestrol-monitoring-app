import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/button_widget.dart';
import 'Counsellor_Home.dart';
import 'Data_Upload/Counsellor_Upload.dart';

class Consellor_Login extends StatefulWidget {
  const Consellor_Login({Key? key}) : super(key: key);
  @override
  _Consellor_LoginState createState() => _Consellor_LoginState();
}

class _Consellor_LoginState extends State<Consellor_Login> {
  TextEditingController uname = new TextEditingController();
  TextEditingController pwd = new TextEditingController();
  bool mainPassObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: "Counsellor",
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                                MediaQuery.of(context).size.width),
                            bottomRight: Radius.circular(
                                MediaQuery.of(context).size.width)),
                        image: const DecorationImage(
                          image: const AssetImage("Assets/Counsellor.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 15.0),
                      child: Text(
                        "Counsellor's Login",
                        style: GoogleFonts.lato(
                          color: const Color(0xff4A64FE),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      controller: uname,
                      onChanged: (value) {},
                      cursorColor: const Color(0xff4A64FE),
                      style: GoogleFonts.lato(
                        color: const Color(0xff4A64FE),
                        fontSize: 16.0,
                      ),
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(color: Color(0xff4A64FE)),
                        focusColor: const Color(0xff4A64FE),
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xff4A64FE)),
                        ),
                        labelText: "Doctor ID",
                        prefixIcon: const Icon(
                          Icons.account_circle_outlined,
                          size: 18,
                          color: const Color(0xff4A64FE),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(
                        controller: pwd,
                        onChanged: (value) {},
                        obscureText: mainPassObscure,
                        cursorColor: const Color(0xff4A64FE),
                        style: GoogleFonts.lato(
                          color: const Color(0xff4A64FE),
                          fontSize: 16.0,
                        ),
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Color(0xff4A64FE)),
                          focusColor: const Color(0xff4A64FE),
                          filled: true,
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: const Color(0xff4A64FE)),
                          ),
                          labelText: "Password",
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            size: 18,
                            color: const Color(0xff4A64FE),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              if (mainPassObscure) {
                                setState(() {
                                  mainPassObscure = false;
                                });
                              } else {
                                setState(() {
                                  mainPassObscure = true;
                                });
                              }
                            },
                            child: Icon(
                              mainPassObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 18,
                              color: const Color(0xff4A64FE),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    Counsellor_Upload login = new Counsellor_Upload();
                    login.CounsellorAuth({
                      "userid": uname.text.trim(),
                      "pwd": pwd.text.trim()
                    }).then((value) {
                      if (jsonDecode(value)["result"] == "SUCCESS") {
                        print(jsonDecode(value)["result"]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Counsellor_HomePage()));
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: ButtonWidget(
                      title: 'Login',
                      hasBorder: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
